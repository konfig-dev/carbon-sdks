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
from pydantic import BaseModel, Field, RootModel, ConfigDict

from carbon.pydantic.file_formats_nullable import FileFormatsNullable

class FileStatisticsNullable(BaseModel):
    file_format: typing.Optional[FileFormatsNullable] = Field(None, alias='file_format')

    file_size: typing.Optional[typing.Optional[int]] = Field(None, alias='file_size')

    num_characters: typing.Optional[typing.Optional[int]] = Field(None, alias='num_characters')

    num_tokens: typing.Optional[typing.Optional[int]] = Field(None, alias='num_tokens')

    num_embeddings: typing.Optional[typing.Optional[int]] = Field(None, alias='num_embeddings')

    mime_type: typing.Optional[typing.Optional[str]] = Field(None, alias='mime_type')

    model_config = ConfigDict(
        protected_namespaces=(),
        arbitrary_types_allowed=True
    )
