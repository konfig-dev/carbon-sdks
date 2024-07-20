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

from carbon.pydantic.update_organization_input_data_source_configs import UpdateOrganizationInputDataSourceConfigs
from carbon.pydantic.user_configuration_nullable import UserConfigurationNullable

class UpdateOrganizationInput(BaseModel):
    global_user_config: typing.Optional[UserConfigurationNullable] = Field(None, alias='global_user_config')

    data_source_configs: typing.Optional[UpdateOrganizationInputDataSourceConfigs] = Field(None, alias='data_source_configs')

    model_config = ConfigDict(
        protected_namespaces=(),
        arbitrary_types_allowed=True
    )
