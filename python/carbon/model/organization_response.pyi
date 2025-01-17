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


class OrganizationResponse(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)
    """


    class MetaOapg:
        required = {
            "aggregate_file_size",
            "aggregate_num_characters",
            "aggregate_num_files_by_file_format",
            "updated_at",
            "aggregate_num_embeddings",
            "aggregate_num_files_by_source",
            "name",
            "created_at",
            "remove_branding",
            "id",
            "aggregate_num_tokens",
            "file_statistics_aggregated_at",
        }
        
        class properties:
            id = schemas.IntSchema
            name = schemas.StrSchema
            remove_branding = schemas.BoolSchema
            aggregate_file_size = schemas.DictSchema
            aggregate_num_characters = schemas.DictSchema
            aggregate_num_tokens = schemas.DictSchema
            aggregate_num_embeddings = schemas.DictSchema
            aggregate_num_files_by_source = schemas.DictSchema
            aggregate_num_files_by_file_format = schemas.DictSchema
            
            
            class file_statistics_aggregated_at(
                schemas.DateTimeBase,
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                class MetaOapg:
                    format = 'date-time'
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, datetime, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'file_statistics_aggregated_at':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            created_at = schemas.DateTimeSchema
            updated_at = schemas.DateTimeSchema
            
            
            class nickname(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'nickname':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class custom_branding(
                schemas.DictBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneFrozenDictMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[dict, frozendict.frozendict, None, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                    **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
                ) -> 'custom_branding':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                        **kwargs,
                    )
            
            
            class custom_limits(
                schemas.DictBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneFrozenDictMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[dict, frozendict.frozendict, None, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                    **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
                ) -> 'custom_limits':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                        **kwargs,
                    )
            
            
            class period_ends_at(
                schemas.DateTimeBase,
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                class MetaOapg:
                    format = 'date-time'
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, datetime, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'period_ends_at':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class cancel_at_period_end(
                schemas.BoolBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneBoolMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, bool, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'cancel_at_period_end':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            connector_settings = schemas.DictSchema
            global_user_config = schemas.DictSchema
            file_sync_usage = schemas.DictSchema
            logging_settings = schemas.DictSchema
            __annotations__ = {
                "id": id,
                "name": name,
                "remove_branding": remove_branding,
                "aggregate_file_size": aggregate_file_size,
                "aggregate_num_characters": aggregate_num_characters,
                "aggregate_num_tokens": aggregate_num_tokens,
                "aggregate_num_embeddings": aggregate_num_embeddings,
                "aggregate_num_files_by_source": aggregate_num_files_by_source,
                "aggregate_num_files_by_file_format": aggregate_num_files_by_file_format,
                "file_statistics_aggregated_at": file_statistics_aggregated_at,
                "created_at": created_at,
                "updated_at": updated_at,
                "nickname": nickname,
                "custom_branding": custom_branding,
                "custom_limits": custom_limits,
                "period_ends_at": period_ends_at,
                "cancel_at_period_end": cancel_at_period_end,
                "connector_settings": connector_settings,
                "global_user_config": global_user_config,
                "file_sync_usage": file_sync_usage,
                "logging_settings": logging_settings,
            }
    
    aggregate_file_size: MetaOapg.properties.aggregate_file_size
    aggregate_num_characters: MetaOapg.properties.aggregate_num_characters
    aggregate_num_files_by_file_format: MetaOapg.properties.aggregate_num_files_by_file_format
    updated_at: MetaOapg.properties.updated_at
    aggregate_num_embeddings: MetaOapg.properties.aggregate_num_embeddings
    aggregate_num_files_by_source: MetaOapg.properties.aggregate_num_files_by_source
    name: MetaOapg.properties.name
    created_at: MetaOapg.properties.created_at
    remove_branding: MetaOapg.properties.remove_branding
    id: MetaOapg.properties.id
    aggregate_num_tokens: MetaOapg.properties.aggregate_num_tokens
    file_statistics_aggregated_at: MetaOapg.properties.file_statistics_aggregated_at
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["id"]) -> MetaOapg.properties.id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["name"]) -> MetaOapg.properties.name: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["remove_branding"]) -> MetaOapg.properties.remove_branding: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["aggregate_file_size"]) -> MetaOapg.properties.aggregate_file_size: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["aggregate_num_characters"]) -> MetaOapg.properties.aggregate_num_characters: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["aggregate_num_tokens"]) -> MetaOapg.properties.aggregate_num_tokens: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["aggregate_num_embeddings"]) -> MetaOapg.properties.aggregate_num_embeddings: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["aggregate_num_files_by_source"]) -> MetaOapg.properties.aggregate_num_files_by_source: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["aggregate_num_files_by_file_format"]) -> MetaOapg.properties.aggregate_num_files_by_file_format: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["file_statistics_aggregated_at"]) -> MetaOapg.properties.file_statistics_aggregated_at: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["created_at"]) -> MetaOapg.properties.created_at: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["updated_at"]) -> MetaOapg.properties.updated_at: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["nickname"]) -> MetaOapg.properties.nickname: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["custom_branding"]) -> MetaOapg.properties.custom_branding: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["custom_limits"]) -> MetaOapg.properties.custom_limits: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["period_ends_at"]) -> MetaOapg.properties.period_ends_at: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["cancel_at_period_end"]) -> MetaOapg.properties.cancel_at_period_end: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["connector_settings"]) -> MetaOapg.properties.connector_settings: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["global_user_config"]) -> MetaOapg.properties.global_user_config: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["file_sync_usage"]) -> MetaOapg.properties.file_sync_usage: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["logging_settings"]) -> MetaOapg.properties.logging_settings: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["id", "name", "remove_branding", "aggregate_file_size", "aggregate_num_characters", "aggregate_num_tokens", "aggregate_num_embeddings", "aggregate_num_files_by_source", "aggregate_num_files_by_file_format", "file_statistics_aggregated_at", "created_at", "updated_at", "nickname", "custom_branding", "custom_limits", "period_ends_at", "cancel_at_period_end", "connector_settings", "global_user_config", "file_sync_usage", "logging_settings", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["id"]) -> MetaOapg.properties.id: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["name"]) -> MetaOapg.properties.name: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["remove_branding"]) -> MetaOapg.properties.remove_branding: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["aggregate_file_size"]) -> MetaOapg.properties.aggregate_file_size: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["aggregate_num_characters"]) -> MetaOapg.properties.aggregate_num_characters: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["aggregate_num_tokens"]) -> MetaOapg.properties.aggregate_num_tokens: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["aggregate_num_embeddings"]) -> MetaOapg.properties.aggregate_num_embeddings: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["aggregate_num_files_by_source"]) -> MetaOapg.properties.aggregate_num_files_by_source: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["aggregate_num_files_by_file_format"]) -> MetaOapg.properties.aggregate_num_files_by_file_format: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["file_statistics_aggregated_at"]) -> MetaOapg.properties.file_statistics_aggregated_at: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["created_at"]) -> MetaOapg.properties.created_at: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["updated_at"]) -> MetaOapg.properties.updated_at: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["nickname"]) -> typing.Union[MetaOapg.properties.nickname, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["custom_branding"]) -> typing.Union[MetaOapg.properties.custom_branding, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["custom_limits"]) -> typing.Union[MetaOapg.properties.custom_limits, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["period_ends_at"]) -> typing.Union[MetaOapg.properties.period_ends_at, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["cancel_at_period_end"]) -> typing.Union[MetaOapg.properties.cancel_at_period_end, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["connector_settings"]) -> typing.Union[MetaOapg.properties.connector_settings, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["global_user_config"]) -> typing.Union[MetaOapg.properties.global_user_config, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["file_sync_usage"]) -> typing.Union[MetaOapg.properties.file_sync_usage, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["logging_settings"]) -> typing.Union[MetaOapg.properties.logging_settings, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["id", "name", "remove_branding", "aggregate_file_size", "aggregate_num_characters", "aggregate_num_tokens", "aggregate_num_embeddings", "aggregate_num_files_by_source", "aggregate_num_files_by_file_format", "file_statistics_aggregated_at", "created_at", "updated_at", "nickname", "custom_branding", "custom_limits", "period_ends_at", "cancel_at_period_end", "connector_settings", "global_user_config", "file_sync_usage", "logging_settings", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        aggregate_file_size: typing.Union[MetaOapg.properties.aggregate_file_size, dict, frozendict.frozendict, ],
        aggregate_num_characters: typing.Union[MetaOapg.properties.aggregate_num_characters, dict, frozendict.frozendict, ],
        aggregate_num_files_by_file_format: typing.Union[MetaOapg.properties.aggregate_num_files_by_file_format, dict, frozendict.frozendict, ],
        updated_at: typing.Union[MetaOapg.properties.updated_at, str, datetime, ],
        aggregate_num_embeddings: typing.Union[MetaOapg.properties.aggregate_num_embeddings, dict, frozendict.frozendict, ],
        aggregate_num_files_by_source: typing.Union[MetaOapg.properties.aggregate_num_files_by_source, dict, frozendict.frozendict, ],
        name: typing.Union[MetaOapg.properties.name, str, ],
        created_at: typing.Union[MetaOapg.properties.created_at, str, datetime, ],
        remove_branding: typing.Union[MetaOapg.properties.remove_branding, bool, ],
        id: typing.Union[MetaOapg.properties.id, decimal.Decimal, int, ],
        aggregate_num_tokens: typing.Union[MetaOapg.properties.aggregate_num_tokens, dict, frozendict.frozendict, ],
        file_statistics_aggregated_at: typing.Union[MetaOapg.properties.file_statistics_aggregated_at, None, str, datetime, ],
        nickname: typing.Union[MetaOapg.properties.nickname, None, str, schemas.Unset] = schemas.unset,
        custom_branding: typing.Union[MetaOapg.properties.custom_branding, dict, frozendict.frozendict, None, schemas.Unset] = schemas.unset,
        custom_limits: typing.Union[MetaOapg.properties.custom_limits, dict, frozendict.frozendict, None, schemas.Unset] = schemas.unset,
        period_ends_at: typing.Union[MetaOapg.properties.period_ends_at, None, str, datetime, schemas.Unset] = schemas.unset,
        cancel_at_period_end: typing.Union[MetaOapg.properties.cancel_at_period_end, None, bool, schemas.Unset] = schemas.unset,
        connector_settings: typing.Union[MetaOapg.properties.connector_settings, dict, frozendict.frozendict, schemas.Unset] = schemas.unset,
        global_user_config: typing.Union[MetaOapg.properties.global_user_config, dict, frozendict.frozendict, schemas.Unset] = schemas.unset,
        file_sync_usage: typing.Union[MetaOapg.properties.file_sync_usage, dict, frozendict.frozendict, schemas.Unset] = schemas.unset,
        logging_settings: typing.Union[MetaOapg.properties.logging_settings, dict, frozendict.frozendict, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'OrganizationResponse':
        return super().__new__(
            cls,
            *args,
            aggregate_file_size=aggregate_file_size,
            aggregate_num_characters=aggregate_num_characters,
            aggregate_num_files_by_file_format=aggregate_num_files_by_file_format,
            updated_at=updated_at,
            aggregate_num_embeddings=aggregate_num_embeddings,
            aggregate_num_files_by_source=aggregate_num_files_by_source,
            name=name,
            created_at=created_at,
            remove_branding=remove_branding,
            id=id,
            aggregate_num_tokens=aggregate_num_tokens,
            file_statistics_aggregated_at=file_statistics_aggregated_at,
            nickname=nickname,
            custom_branding=custom_branding,
            custom_limits=custom_limits,
            period_ends_at=period_ends_at,
            cancel_at_period_end=cancel_at_period_end,
            connector_settings=connector_settings,
            global_user_config=global_user_config,
            file_sync_usage=file_sync_usage,
            logging_settings=logging_settings,
            _configuration=_configuration,
            **kwargs,
        )
