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

from carbon.type.base_includes import BaseIncludes
from carbon.type.opportunities_order_by_nullable import OpportunitiesOrderByNullable
from carbon.type.opportunity_filters import OpportunityFilters
from carbon.type.order_dir_v2_nullable import OrderDirV2Nullable

class RequiredOpportunitiesRequest(TypedDict):
    data_source_id: int


class OptionalOpportunitiesRequest(TypedDict, total=False):
    include_remote_data: bool

    next_cursor: typing.Optional[str]

    page_size: typing.Optional[int]

    order_dir: typing.Optional[OrderDirV2Nullable]

    includes: typing.List[BaseIncludes]

    filters: OpportunityFilters

    order_by: typing.Optional[OpportunitiesOrderByNullable]

class OpportunitiesRequest(RequiredOpportunitiesRequest, OptionalOpportunitiesRequest):
    pass