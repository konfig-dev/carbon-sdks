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

from carbon.type.update_organization_input_data_source_configs import UpdateOrganizationInputDataSourceConfigs
from carbon.type.user_configuration_nullable import UserConfigurationNullable

class RequiredUpdateOrganizationInput(TypedDict):
    pass

class OptionalUpdateOrganizationInput(TypedDict, total=False):
    global_user_config: typing.Optional[UserConfigurationNullable]

    data_source_configs: typing.Optional[UpdateOrganizationInputDataSourceConfigs]

class UpdateOrganizationInput(RequiredUpdateOrganizationInput, OptionalUpdateOrganizationInput):
    pass
