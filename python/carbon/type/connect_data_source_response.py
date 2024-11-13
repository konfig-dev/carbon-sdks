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

from carbon.type.organization_user_data_source_api import OrganizationUserDataSourceAPI

class RequiredConnectDataSourceResponse(TypedDict):
    data_source: OrganizationUserDataSourceAPI


class OptionalConnectDataSourceResponse(TypedDict, total=False):
    sync_url: typing.Optional[str]

class ConnectDataSourceResponse(RequiredConnectDataSourceResponse, OptionalConnectDataSourceResponse):
    pass
