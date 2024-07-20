# coding: utf-8

"""
    Carbon

    Connect external data to LLMs, no matter the source.

    The version of the OpenAPI document: 1.0.0
    Generated by: https://konfigthis.com
"""

from datetime import date, datetime  # noqa: F401
import decimal  # noqa: F401
import functools  # noqa: F401
import io  # noqa: F401
import re  # noqa: F401
import typing  # noqa: F401
import typing_extensions  # noqa: F401
import uuid  # noqa: F401

import frozendict  # noqa: F401

from carbon import schemas  # noqa: F401


class UpdateOrganizationInput(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)
    """


    class MetaOapg:
        
        class properties:
        
            @staticmethod
            def global_user_config() -> typing.Type['UserConfigurationNullable']:
                return UserConfigurationNullable
        
            @staticmethod
            def data_source_configs() -> typing.Type['UpdateOrganizationInputDataSourceConfigs']:
                return UpdateOrganizationInputDataSourceConfigs
            __annotations__ = {
                "global_user_config": global_user_config,
                "data_source_configs": data_source_configs,
            }
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["global_user_config"]) -> 'UserConfigurationNullable': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["data_source_configs"]) -> 'UpdateOrganizationInputDataSourceConfigs': ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["global_user_config", "data_source_configs", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["global_user_config"]) -> typing.Union['UserConfigurationNullable', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["data_source_configs"]) -> typing.Union['UpdateOrganizationInputDataSourceConfigs', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["global_user_config", "data_source_configs", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        global_user_config: typing.Union['UserConfigurationNullable', schemas.Unset] = schemas.unset,
        data_source_configs: typing.Union['UpdateOrganizationInputDataSourceConfigs', schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'UpdateOrganizationInput':
        return super().__new__(
            cls,
            *args,
            global_user_config=global_user_config,
            data_source_configs=data_source_configs,
            _configuration=_configuration,
            **kwargs,
        )

from carbon.model.update_organization_input_data_source_configs import UpdateOrganizationInputDataSourceConfigs
from carbon.model.user_configuration_nullable import UserConfigurationNullable
