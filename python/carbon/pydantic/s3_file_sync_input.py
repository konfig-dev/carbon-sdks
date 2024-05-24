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

from carbon.pydantic.embedding_generators import EmbeddingGenerators
from carbon.pydantic.file_sync_config_nullable import FileSyncConfigNullable
from carbon.pydantic.s3_get_file_input import S3GetFileInput

class S3FileSyncInput(BaseModel):
    ids: typing.List[S3GetFileInput] = Field(alias='ids')

    tags: typing.Optional[typing.Optional[typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]]] = Field(None, alias='tags')

    chunk_size: typing.Optional[typing.Optional[int]] = Field(None, alias='chunk_size')

    chunk_overlap: typing.Optional[typing.Optional[int]] = Field(None, alias='chunk_overlap')

    skip_embedding_generation: typing.Optional[typing.Optional[bool]] = Field(None, alias='skip_embedding_generation')

    embedding_model: typing.Optional[EmbeddingGenerators] = Field(None, alias='embedding_model')

    generate_sparse_vectors: typing.Optional[typing.Optional[bool]] = Field(None, alias='generate_sparse_vectors')

    prepend_filename_to_chunks: typing.Optional[typing.Optional[bool]] = Field(None, alias='prepend_filename_to_chunks')

    # Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    max_items_per_chunk: typing.Optional[typing.Optional[int]] = Field(None, alias='max_items_per_chunk')

    set_page_as_boundary: typing.Optional[bool] = Field(None, alias='set_page_as_boundary')

    data_source_id: typing.Optional[typing.Optional[int]] = Field(None, alias='data_source_id')

    request_id: typing.Optional[typing.Optional[str]] = Field(None, alias='request_id')

    use_ocr: typing.Optional[typing.Optional[bool]] = Field(None, alias='use_ocr')

    parse_pdf_tables_with_ocr: typing.Optional[typing.Optional[bool]] = Field(None, alias='parse_pdf_tables_with_ocr')

    file_sync_config: typing.Optional[FileSyncConfigNullable] = Field(None, alias='file_sync_config')

    model_config = ConfigDict(
        protected_namespaces=(),
        arbitrary_types_allowed=True
    )
