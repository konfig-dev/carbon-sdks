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


class RequiredRerankParamsNullable(TypedDict):
    # The name of the model to use for reranking. Options: ['COHERE_RERANK_MULTILINGUAL_V3', 'JINA_RERANKER_MULTILINGUAL_V2', 'PONGO_RERANKER'].
    model: str

class OptionalRerankParamsNullable(TypedDict, total=False):
    pass

class RerankParamsNullable(RequiredRerankParamsNullable, OptionalRerankParamsNullable):
    pass
