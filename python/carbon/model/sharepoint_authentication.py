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


class SharepointAuthentication(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)
    """


    class MetaOapg:
        required = {
            "access_token",
            "source",
        }
        
        class properties:
            
            
            class source(
                schemas.EnumBase,
                schemas.StrSchema
            ):
            
            
                class MetaOapg:
                    enum_value_to_name = {
                        "SHAREPOINT": "SHAREPOINT",
                    }
                
                @schemas.classproperty
                def SHAREPOINT(cls):
                    return cls("SHAREPOINT")
            access_token = schemas.StrSchema
            
            
            class refresh_token(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'refresh_token':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class tenant_name(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'tenant_name':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class site_name(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'site_name':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            __annotations__ = {
                "source": source,
                "access_token": access_token,
                "refresh_token": refresh_token,
                "tenant_name": tenant_name,
                "site_name": site_name,
            }
    
    access_token: MetaOapg.properties.access_token
    source: MetaOapg.properties.source
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["source"]) -> MetaOapg.properties.source: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["access_token"]) -> MetaOapg.properties.access_token: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["refresh_token"]) -> MetaOapg.properties.refresh_token: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["tenant_name"]) -> MetaOapg.properties.tenant_name: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["site_name"]) -> MetaOapg.properties.site_name: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["source", "access_token", "refresh_token", "tenant_name", "site_name", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["source"]) -> MetaOapg.properties.source: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["access_token"]) -> MetaOapg.properties.access_token: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["refresh_token"]) -> typing.Union[MetaOapg.properties.refresh_token, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["tenant_name"]) -> typing.Union[MetaOapg.properties.tenant_name, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["site_name"]) -> typing.Union[MetaOapg.properties.site_name, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["source", "access_token", "refresh_token", "tenant_name", "site_name", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        access_token: typing.Union[MetaOapg.properties.access_token, str, ],
        source: typing.Union[MetaOapg.properties.source, str, ],
        refresh_token: typing.Union[MetaOapg.properties.refresh_token, None, str, schemas.Unset] = schemas.unset,
        tenant_name: typing.Union[MetaOapg.properties.tenant_name, None, str, schemas.Unset] = schemas.unset,
        site_name: typing.Union[MetaOapg.properties.site_name, None, str, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'SharepointAuthentication':
        return super().__new__(
            cls,
            *args,
            access_token=access_token,
            source=source,
            refresh_token=refresh_token,
            tenant_name=tenant_name,
            site_name=site_name,
            _configuration=_configuration,
            **kwargs,
        )
