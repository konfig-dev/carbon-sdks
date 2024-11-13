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

from carbon.pydantic.order_dir import OrderDir
from carbon.pydantic.organization_user_files_to_sync_filters import OrganizationUserFilesToSyncFilters
from carbon.pydantic.organization_user_files_to_sync_order_by_types import OrganizationUserFilesToSyncOrderByTypes
from carbon.pydantic.pagination import Pagination

class OrganizationUserFilesToSyncQueryInput(BaseModel):
    pagination: typing.Optional[Pagination] = Field(None, alias='pagination')

    order_by: typing.Optional[OrganizationUserFilesToSyncOrderByTypes] = Field(None, alias='order_by')

    order_dir: typing.Optional[OrderDir] = Field(None, alias='order_dir')

    filters: typing.Optional[OrganizationUserFilesToSyncFilters] = Field(None, alias='filters')

    # If true, the query will return presigned URLs for the raw file. Only relevant for the /user_files_v2 endpoint.
    include_raw_file: typing.Optional[typing.Optional[bool]] = Field(None, alias='include_raw_file')

    # If true, the query will return presigned URLs for the parsed text file. Only relevant for the /user_files_v2 endpoint.
    include_parsed_text_file: typing.Optional[typing.Optional[bool]] = Field(None, alias='include_parsed_text_file')

    # If true, the query will return presigned URLs for additional files. Only relevant for the /user_files_v2 endpoint.
    include_additional_files: typing.Optional[typing.Optional[bool]] = Field(None, alias='include_additional_files')

    # The expiry time for the presigned URLs. Only relevant for the /user_files_v2 endpoint.
    presigned_url_expiry_time_seconds: typing.Optional[int] = Field(None, alias='presigned_url_expiry_time_seconds')

    model_config = ConfigDict(
        protected_namespaces=(),
        arbitrary_types_allowed=True
    )
