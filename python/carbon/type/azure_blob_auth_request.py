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


class RequiredAzureBlobAuthRequest(TypedDict):
    account_name: str

    account_key: str


class OptionalAzureBlobAuthRequest(TypedDict, total=False):
    sync_source_items: bool

    # Tags to be associated with the data source. If the data source already has tags set, then an upsert will be performed.
    data_source_tags: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]

class AzureBlobAuthRequest(RequiredAzureBlobAuthRequest, OptionalAzureBlobAuthRequest):
    pass
