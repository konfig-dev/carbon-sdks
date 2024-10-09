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


class CommitsInput(BaseModel):
    data_source_id: int = Field(alias='data_source_id')

    # Full name of the repository, denoted as {owner}/{repo}
    repository: str = Field(alias='repository')

    pull_number: int = Field(alias='pull_number')

    include_remote_data: typing.Optional[bool] = Field(None, alias='include_remote_data')

    page: typing.Optional[int] = Field(None, alias='page')

    page_size: typing.Optional[int] = Field(None, alias='page_size')

    next_cursor: typing.Optional[typing.Optional[str]] = Field(None, alias='next_cursor')

    model_config = ConfigDict(
        protected_namespaces=(),
        arbitrary_types_allowed=True
    )
