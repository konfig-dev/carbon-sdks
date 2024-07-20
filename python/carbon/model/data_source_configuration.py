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


class DataSourceConfiguration(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)
    """


    class MetaOapg:
        
        class properties:
        
            @staticmethod
            def allowed_file_formats() -> typing.Type['DataSourceConfigurationAllowedFileFormats']:
                return DataSourceConfigurationAllowedFileFormats
            
            
            class google_workspace_docs_save_as(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'google_workspace_docs_save_as':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            __annotations__ = {
                "allowed_file_formats": allowed_file_formats,
                "google_workspace_docs_save_as": google_workspace_docs_save_as,
            }
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["allowed_file_formats"]) -> 'DataSourceConfigurationAllowedFileFormats': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["google_workspace_docs_save_as"]) -> MetaOapg.properties.google_workspace_docs_save_as: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["allowed_file_formats", "google_workspace_docs_save_as", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["allowed_file_formats"]) -> typing.Union['DataSourceConfigurationAllowedFileFormats', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["google_workspace_docs_save_as"]) -> typing.Union[MetaOapg.properties.google_workspace_docs_save_as, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["allowed_file_formats", "google_workspace_docs_save_as", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        allowed_file_formats: typing.Union['DataSourceConfigurationAllowedFileFormats', schemas.Unset] = schemas.unset,
        google_workspace_docs_save_as: typing.Union[MetaOapg.properties.google_workspace_docs_save_as, None, str, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'DataSourceConfiguration':
        return super().__new__(
            cls,
            *args,
            allowed_file_formats=allowed_file_formats,
            google_workspace_docs_save_as=google_workspace_docs_save_as,
            _configuration=_configuration,
            **kwargs,
        )

from carbon.model.data_source_configuration_allowed_file_formats import DataSourceConfigurationAllowedFileFormats
