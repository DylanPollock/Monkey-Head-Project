#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# ================================================== #
# This file is a part of PYGPT package               #
# Website: https://pygpt.net                         #
# GitHub:  https://github.com/szczyglis-dev/py-gpt   #
# MIT License                                        #
# Created By  : Marcin Szczygliński                  #
# Updated Date: 2024.11.26 19:00:00                  #
# ================================================== #

from pygpt_net.provider.core.mode.json_file import JsonFileProvider
from pygpt_net.core.types import (
    MODE_AGENT,
    MODE_AGENT_LLAMA,
    MODE_ASSISTANT,
    MODE_AUDIO,
    MODE_CHAT,
    MODE_COMPLETION,
    MODE_EXPERT,
    MODE_IMAGE,
    MODE_LANGCHAIN,
    MODE_LLAMA_INDEX,
    MODE_VISION,
)


class Modes:

    def __init__(self, window=None):
        """
        Modes core

        :param window: Window instance
        """
        self.window = window
        self.provider = JsonFileProvider(window)
        self.initialized = False
        self.all = [
            MODE_AGENT,
            MODE_AGENT_LLAMA,
            MODE_ASSISTANT,
            MODE_AUDIO,
            MODE_CHAT,
            MODE_COMPLETION,
            MODE_EXPERT,
            MODE_IMAGE,
            MODE_LANGCHAIN,
            MODE_LLAMA_INDEX,
            MODE_VISION,
        ]
        self.items = {}

    def get_by_idx(self, idx):
        """
        Return mode by index

        :param idx: index of mode
        :return: mode name
        """
        modes = self.get_all()
        return list(modes.keys())[idx]

    def get_idx_by_name(self, name):
        """
        Return mode index by name

        :param name: mode name
        :return: mode index
        """
        modes = self.get_all()
        return list(modes.keys()).index(name)

    def get_all(self):
        """
        Return modes

        :return: Dict with modes
        """
        return self.items

    def get_default(self):
        """
        Return default mode name

        :return: default mode name
        """
        for id in self.items:
            if self.items[id].default:
                return id

    def get_next(self, mode: str):
        """
        Return next mode

        :param mode: current mode
        :return: next mode
        """
        modes = self.get_all()
        keys = list(modes.keys())
        idx = keys.index(mode)
        if idx + 1 < len(keys):
            return keys[idx + 1]
        return keys[0]

    def get_prev(self, mode: str):
        """
        Return previous mode

        :param mode: current mode
        :return: previous mode
        """
        modes = self.get_all()
        keys = list(modes.keys())
        idx = keys.index(mode)
        if idx - 1 >= 0:
            return keys[idx - 1]
        return keys[-1]

    def load(self):
        """
        Load modes
        """
        self.items = self.provider.load()

    def save(self):
        """
        Save modes
        """
        self.provider.save(self.items)