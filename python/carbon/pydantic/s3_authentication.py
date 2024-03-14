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
from pydantic import BaseModel, Field, RootModel


class S3Authentication(BaseModel):
    source: typing.Union[bool, date, datetime, dict, float, int, list, str, None] = Field(alias='source')

    access_key: str = Field(alias='access_key')

    access_key_secret: str = Field(alias='access_key_secret')
    class Config:
        arbitrary_types_allowed = True