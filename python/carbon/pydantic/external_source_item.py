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

from carbon.pydantic.data_source_type import DataSourceType

class ExternalSourceItem(BaseModel):
    id: int = Field(alias='id')

    external_id: str = Field(alias='external_id')

    source: DataSourceType = Field(alias='source')

    name: str = Field(alias='name')

    synced_at: datetime = Field(alias='synced_at')

    is_selectable: typing.Optional[bool] = Field(alias='is_selectable')

    is_expandable: typing.Optional[bool] = Field(alias='is_expandable')

    organization_id: int = Field(alias='organization_id')

    organization_supplied_user_id: str = Field(alias='organization_supplied_user_id')

    organization_user_id: int = Field(alias='organization_user_id')

    organization_user_data_source_id: int = Field(alias='organization_user_data_source_id')

    organization_user_file_to_sync_id: typing.Optional[int] = Field(alias='organization_user_file_to_sync_id')

    parent_external_id: typing.Optional[str] = Field(alias='parent_external_id')

    item_type: typing.Optional[str] = Field(alias='item_type')

    root_external_id: typing.Optional[str] = Field(alias='root_external_id')

    external_url: typing.Optional[str] = Field(alias='external_url')

    file_format: typing.Optional[str] = Field(alias='file_format')

    created_at: datetime = Field(alias='created_at')

    updated_at: datetime = Field(alias='updated_at')

    model_config = ConfigDict(
        protected_namespaces=(),
        arbitrary_types_allowed=True
    )
