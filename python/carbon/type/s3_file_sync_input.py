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
from carbon.type.s3_get_file_input import S3GetFileInput

class RequiredS3FileSyncInput(TypedDict):
    ids: typing.List[S3GetFileInput]

class OptionalS3FileSyncInput(TypedDict, total=False):
    tags: typing.Optional[typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]]

    chunk_size: typing.Optional[int]

    chunk_overlap: typing.Optional[int]

    skip_embedding_generation: typing.Optional[bool]

    embedding_model: EmbeddingGenerators

    generate_sparse_vectors: typing.Optional[bool]

    prepend_filename_to_chunks: typing.Optional[bool]

    # Number of objects per chunk. For csv, tsv, xlsx, and json files only.
    max_items_per_chunk: typing.Optional[int]

    set_page_as_boundary: bool

    data_source_id: typing.Optional[int]

    request_id: typing.Optional[str]

    use_ocr: typing.Optional[bool]

    parse_pdf_tables_with_ocr: typing.Optional[bool]

class S3FileSyncInput(RequiredS3FileSyncInput, OptionalS3FileSyncInput):
    pass
