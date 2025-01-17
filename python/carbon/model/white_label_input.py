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


class WhiteLabelInput(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)
    """


    class MetaOapg:
        required = {
            "credentials",
            "data_source_type",
        }
        
        class properties:
            
            
            class data_source_type(
                schemas.EnumBase,
                schemas.StrSchema
            ):
            
            
                class MetaOapg:
                    enum_value_to_name = {
                        "INTERCOM": "INTERCOM",
                        "NOTION": "NOTION",
                        "SLACK": "SLACK",
                        "ZENDESK": "ZENDESK",
                        "OUTLOOK": "OUTLOOK",
                        "GMAIL": "GMAIL",
                        "SERVICENOW": "SERVICENOW",
                        "SALESFORCE": "SALESFORCE",
                        "ZOTERO": "ZOTERO",
                        "BOX": "BOX",
                        "CONFLUENCE": "CONFLUENCE",
                        "DROPBOX": "DROPBOX",
                        "GOOGLE_CLOUD_STORAGE": "GOOGLE_CLOUD_STORAGE",
                        "GONG": "GONG",
                    }
                
                @schemas.classproperty
                def INTERCOM(cls):
                    return cls("INTERCOM")
                
                @schemas.classproperty
                def NOTION(cls):
                    return cls("NOTION")
                
                @schemas.classproperty
                def SLACK(cls):
                    return cls("SLACK")
                
                @schemas.classproperty
                def ZENDESK(cls):
                    return cls("ZENDESK")
                
                @schemas.classproperty
                def OUTLOOK(cls):
                    return cls("OUTLOOK")
                
                @schemas.classproperty
                def GMAIL(cls):
                    return cls("GMAIL")
                
                @schemas.classproperty
                def SERVICENOW(cls):
                    return cls("SERVICENOW")
                
                @schemas.classproperty
                def SALESFORCE(cls):
                    return cls("SALESFORCE")
                
                @schemas.classproperty
                def ZOTERO(cls):
                    return cls("ZOTERO")
                
                @schemas.classproperty
                def BOX(cls):
                    return cls("BOX")
                
                @schemas.classproperty
                def CONFLUENCE(cls):
                    return cls("CONFLUENCE")
                
                @schemas.classproperty
                def DROPBOX(cls):
                    return cls("DROPBOX")
                
                @schemas.classproperty
                def GOOGLE_CLOUD_STORAGE(cls):
                    return cls("GOOGLE_CLOUD_STORAGE")
                
                @schemas.classproperty
                def GONG(cls):
                    return cls("GONG")
        
            @staticmethod
            def credentials() -> typing.Type['Credentials']:
                return Credentials
            __annotations__ = {
                "data_source_type": data_source_type,
                "credentials": credentials,
            }
    
    credentials: 'Credentials'
    data_source_type: MetaOapg.properties.data_source_type
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["data_source_type"]) -> MetaOapg.properties.data_source_type: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["credentials"]) -> 'Credentials': ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["data_source_type", "credentials", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["data_source_type"]) -> MetaOapg.properties.data_source_type: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["credentials"]) -> 'Credentials': ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["data_source_type", "credentials", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        credentials: 'Credentials',
        data_source_type: typing.Union[MetaOapg.properties.data_source_type, str, ],
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'WhiteLabelInput':
        return super().__new__(
            cls,
            *args,
            credentials=credentials,
            data_source_type=data_source_type,
            _configuration=_configuration,
            **kwargs,
        )

from carbon.model.credentials import Credentials
