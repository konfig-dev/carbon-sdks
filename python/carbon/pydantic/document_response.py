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

from carbon.pydantic.data_source_type_nullable import DataSourceTypeNullable
from carbon.pydantic.document_response_tags import DocumentResponseTags
from carbon.pydantic.document_response_vector import DocumentResponseVector

class DocumentResponse(BaseModel):
    tags: DocumentResponseTags = Field(alias='tags')

    content: str = Field(alias='content')

    file_id: int = Field(alias='file_id')

    source: typing.Optional[str] = Field(alias='source')

    source_url: typing.Optional[str] = Field(alias='source_url')

    source_type: DataSourceTypeNullable = Field(alias='source_type')

    presigned_url: typing.Optional[str] = Field(alias='presigned_url')

    vector: DocumentResponseVector = Field(alias='vector')

    score: typing.Optional[typing.Union[int, float]] = Field(alias='score')

    rank: typing.Union[typing.Union[int, float], int] = Field(alias='rank')

    content_metadata: typing.Optional[typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]] = Field(alias='content_metadata')

    chunk_index: typing.Optional[int] = Field(alias='chunk_index')

    model_config = ConfigDict(
        protected_namespaces=(),
        arbitrary_types_allowed=True
    )
