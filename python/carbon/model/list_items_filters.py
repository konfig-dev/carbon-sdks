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


class ListItemsFilters(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)
    """


    class MetaOapg:
        
        class properties:
        
            @staticmethod
            def external_ids() -> typing.Type['ListItemsFiltersExternalIds']:
                return ListItemsFiltersExternalIds
        
            @staticmethod
            def ids() -> typing.Type['ListItemsFiltersIds']:
                return ListItemsFiltersIds
            
            
            class name(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'name':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class root_files_only(
                schemas.BoolBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneBoolMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, bool, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'root_files_only':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            __annotations__ = {
                "external_ids": external_ids,
                "ids": ids,
                "name": name,
                "root_files_only": root_files_only,
            }
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["external_ids"]) -> 'ListItemsFiltersExternalIds': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["ids"]) -> 'ListItemsFiltersIds': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["name"]) -> MetaOapg.properties.name: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["root_files_only"]) -> MetaOapg.properties.root_files_only: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["external_ids", "ids", "name", "root_files_only", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["external_ids"]) -> typing.Union['ListItemsFiltersExternalIds', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["ids"]) -> typing.Union['ListItemsFiltersIds', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["name"]) -> typing.Union[MetaOapg.properties.name, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["root_files_only"]) -> typing.Union[MetaOapg.properties.root_files_only, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["external_ids", "ids", "name", "root_files_only", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        external_ids: typing.Union['ListItemsFiltersExternalIds', schemas.Unset] = schemas.unset,
        ids: typing.Union['ListItemsFiltersIds', schemas.Unset] = schemas.unset,
        name: typing.Union[MetaOapg.properties.name, None, str, schemas.Unset] = schemas.unset,
        root_files_only: typing.Union[MetaOapg.properties.root_files_only, None, bool, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'ListItemsFilters':
        return super().__new__(
            cls,
            *args,
            external_ids=external_ids,
            ids=ids,
            name=name,
            root_files_only=root_files_only,
            _configuration=_configuration,
            **kwargs,
        )

from carbon.model.list_items_filters_external_ids import ListItemsFiltersExternalIds
from carbon.model.list_items_filters_ids import ListItemsFiltersIds