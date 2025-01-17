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
    content: str = Field(alias='content')

    file_id: int = Field(alias='file_id')

    vector: DocumentResponseVector = Field(alias='vector')

    tags: typing.Optional[DocumentResponseTags] = Field(None, alias='tags')

    parent_file_id: typing.Optional[typing.Optional[int]] = Field(None, alias='parent_file_id')

    source: typing.Optional[typing.Optional[str]] = Field(None, alias='source')

    source_url: typing.Optional[typing.Optional[str]] = Field(None, alias='source_url')

    source_type: typing.Optional[DataSourceTypeNullable] = Field(None, alias='source_type')

    presigned_url: typing.Optional[typing.Optional[str]] = Field(None, alias='presigned_url')

    score: typing.Optional[typing.Optional[typing.Union[int, float]]] = Field(None, alias='score')

    rank: typing.Optional[typing.Union[typing.Union[int, float], int]] = Field(None, alias='rank')

    content_metadata: typing.Optional[typing.Optional[typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]]] = Field(None, alias='content_metadata')

    chunk_index: typing.Optional[typing.Optional[int]] = Field(None, alias='chunk_index')

    model_config = ConfigDict(
        protected_namespaces=(),
        arbitrary_types_allowed=True
    )
