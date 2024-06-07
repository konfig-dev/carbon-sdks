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

from carbon.type.embedding_generators import EmbeddingGenerators
from carbon.type.file_content_types_nullable import FileContentTypesNullable

class RequiredUploadFileFromUrlInput(TypedDict):
    url: str


class OptionalUploadFileFromUrlInput(TypedDict, total=False):
    file_name: typing.Optional[str]

    chunk_size: typing.Optional[int]

    chunk_overlap: typing.Optional[int]

    skip_embedding_generation: bool

    set_page_as_boundary: bool

    embedding_model: EmbeddingGenerators

    generate_sparse_vectors: bool

    use_textract: bool

    prepend_filename_to_chunks: bool

    # Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    max_items_per_chunk: typing.Optional[int]

    parse_pdf_tables_with_ocr: bool

    detect_audio_language: bool

    media_type: typing.Optional[FileContentTypesNullable]

    split_rows: bool

class UploadFileFromUrlInput(RequiredUploadFileFromUrlInput, OptionalUploadFileFromUrlInput):
    pass
