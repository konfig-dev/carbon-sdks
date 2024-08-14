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


class ColdStorageProps(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)
    """


    class MetaOapg:
        
        class properties:
            enable_cold_storage = schemas.BoolSchema
            
            
            class hot_storage_time_to_live(
                schemas.IntBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneDecimalMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, decimal.Decimal, int, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'hot_storage_time_to_live':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            __annotations__ = {
                "enable_cold_storage": enable_cold_storage,
                "hot_storage_time_to_live": hot_storage_time_to_live,
            }
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["enable_cold_storage"]) -> MetaOapg.properties.enable_cold_storage: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["hot_storage_time_to_live"]) -> MetaOapg.properties.hot_storage_time_to_live: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["enable_cold_storage", "hot_storage_time_to_live", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["enable_cold_storage"]) -> typing.Union[MetaOapg.properties.enable_cold_storage, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["hot_storage_time_to_live"]) -> typing.Union[MetaOapg.properties.hot_storage_time_to_live, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["enable_cold_storage", "hot_storage_time_to_live", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        enable_cold_storage: typing.Union[MetaOapg.properties.enable_cold_storage, bool, schemas.Unset] = schemas.unset,
        hot_storage_time_to_live: typing.Union[MetaOapg.properties.hot_storage_time_to_live, None, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'ColdStorageProps':
        return super().__new__(
            cls,
            *args,
            enable_cold_storage=enable_cold_storage,
            hot_storage_time_to_live=hot_storage_time_to_live,
            _configuration=_configuration,
            **kwargs,
        )
