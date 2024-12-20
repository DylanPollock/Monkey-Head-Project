// Copyright (c) Microsoft Corporation.
// Licensed under the MIT license.

#pragma once

#include "Peasant.g.h"
#include "RenameRequestArgs.h"
#include "AttachRequest.g.h"
#include "RequestReceiveContentArgs.g.h"

namespace RemotingUnitTests
{
    class RemotingTests;
};
namespace winrt::Microsoft::Terminal::Remoting::implementation
{
    struct AttachRequest : public AttachRequestT<AttachRequest>
    {
        WINRT_PROPERTY(winrt::hstring, Content);
        WINRT_PROPERTY(uint32_t, TabIndex);

    public:
        AttachRequest(winrt::hstring content,
                      uint32_t tabIndex) :
            _Content{ content },
            _TabIndex{ tabIndex } {};
    };

    struct RequestReceiveContentArgs : RequestReceiveContentArgsT<RequestReceiveContentArgs>
    {
        WINRT_PROPERTY(uint64_t, SourceWindow);
        WINRT_PROPERTY(uint64_t, TargetWindow);
        WINRT_PROPERTY(uint32_t, TabIndex);

    public:
        RequestReceiveContentArgs(const uint64_t src, const uint64_t tgt, const uint32_t tabIndex) :
            _SourceWindow{ src },
            _TargetWindow{ tgt },
            _TabIndex{ tabIndex } {};
    };

    struct Peasant : public PeasantT<Peasant>
    {
        Peasant();

        void AssignID(uint64_t id);
        uint64_t GetID();
        uint64_t GetPID();

        bool ExecuteCommandline(const winrt::Microsoft::Terminal::Remoting::CommandlineArgs& args);
        void ActivateWindow(const winrt::Microsoft::Terminal::Remoting::WindowActivatedArgs& args);

        void Summon(const Remoting::SummonWindowBehavior& summonBehavior);
        void RequestIdentifyWindows();
        void DisplayWindowId();
        void RequestRename(const winrt::Microsoft::Terminal::Remoting::RenameRequestArgs& args);
        void RequestShowNotificationIcon();
        void RequestHideNotificationIcon();
        void Quit();

        void AttachContentToWindow(Remoting::AttachRequest request);

        winrt::Microsoft::Terminal::Remoting::WindowActivatedArgs GetLastActivatedArgs();

        winrt::Microsoft::Terminal::Remoting::CommandlineArgs InitialArgs();

        void SendContent(const winrt::Microsoft::Terminal::Remoting::RequestReceiveContentArgs& args);

        til::typed_event<winrt::Windows::Foundation::IInspectable, winrt::Microsoft::Terminal::Remoting::WindowActivatedArgs> WindowActivated;
        til::typed_event<winrt::Windows::Foundation::IInspectable, winrt::Microsoft::Terminal::Remoting::CommandlineArgs> ExecuteCommandlineRequested;
        til::typed_event<> IdentifyWindowsRequested;
        til::typed_event<> DisplayWindowIdRequested;
        til::typed_event<winrt::Windows::Foundation::IInspectable, winrt::Microsoft::Terminal::Remoting::RenameRequestArgs> RenameRequested;
        til::typed_event<winrt::Windows::Foundation::IInspectable, winrt::Microsoft::Terminal::Remoting::SummonWindowBehavior> SummonRequested;

        til::typed_event<> ShowNotificationIconRequested;
        til::typed_event<> HideNotificationIconRequested;
        til::typed_event<> QuitRequested;

        til::typed_event<winrt::Windows::Foundation::IInspectable, winrt::Microsoft::Terminal::Remoting::AttachRequest> AttachRequested;
        til::typed_event<winrt::Windows::Foundation::IInspectable, winrt::Microsoft::Terminal::Remoting::RequestReceiveContentArgs> SendContentRequested;

        WINRT_PROPERTY(winrt::hstring, WindowName);
        WINRT_PROPERTY(winrt::hstring, ActiveTabTitle);

    private:
        Peasant(const uint64_t testPID);
        uint64_t _ourPID;

        uint64_t _id{ 0 };

        winrt::Microsoft::Terminal::Remoting::CommandlineArgs _initialArgs{ nullptr };
        winrt::Microsoft::Terminal::Remoting::WindowActivatedArgs _lastActivatedArgs{ nullptr };

        friend class RemotingUnitTests::RemotingTests;
    };
}

namespace winrt::Microsoft::Terminal::Remoting::factory_implementation
{
    BASIC_FACTORY(Peasant);
    BASIC_FACTORY(RequestReceiveContentArgs);
}
