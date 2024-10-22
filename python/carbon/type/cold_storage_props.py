# coding: utf-8

"""
    Carbon

    Connect external data to LLMs, no matter the source.

    The version of the OpenAPI document: 1.0.0
    Generated by: https://konfigthis.com
"""

from datetime import datetime, date
import typing
from enum import Enum
from typing_extensions import TypedDict, Literal, TYPE_CHECKING


class RequiredColdStorageProps(TypedDict):
    pass

class OptionalColdStorageProps(TypedDict, total=False):
    # Enable cold storage for the file. If set to true, the file will be moved to cold storage after a certain period of inactivity. Default is false.
    enable_cold_storage: bool

    # Time in days after which the file will be moved to cold storage. Valid values are [1, 3, 7, 14, 30]
    hot_storage_time_to_live: typing.Optional[int]

class ColdStorageProps(RequiredColdStorageProps, OptionalColdStorageProps):
    pass
