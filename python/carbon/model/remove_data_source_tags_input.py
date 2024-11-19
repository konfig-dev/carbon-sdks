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


class RemoveDataSourceTagsInput(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)
    """


    class MetaOapg:
        required = {
            "data_source_id",
        }
        
        class properties:
            data_source_id = schemas.IntSchema
        
            @staticmethod
            def tags_to_remove() -> typing.Type['RemoveDataSourceTagsInputTagsToRemove']:
                return RemoveDataSourceTagsInputTagsToRemove
            remove_all_tags = schemas.BoolSchema
            __annotations__ = {
                "data_source_id": data_source_id,
                "tags_to_remove": tags_to_remove,
                "remove_all_tags": remove_all_tags,
            }
    
    data_source_id: MetaOapg.properties.data_source_id
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["data_source_id"]) -> MetaOapg.properties.data_source_id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["tags_to_remove"]) -> 'RemoveDataSourceTagsInputTagsToRemove': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["remove_all_tags"]) -> MetaOapg.properties.remove_all_tags: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["data_source_id", "tags_to_remove", "remove_all_tags", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["data_source_id"]) -> MetaOapg.properties.data_source_id: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["tags_to_remove"]) -> typing.Union['RemoveDataSourceTagsInputTagsToRemove', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["remove_all_tags"]) -> typing.Union[MetaOapg.properties.remove_all_tags, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["data_source_id", "tags_to_remove", "remove_all_tags", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        data_source_id: typing.Union[MetaOapg.properties.data_source_id, decimal.Decimal, int, ],
        tags_to_remove: typing.Union['RemoveDataSourceTagsInputTagsToRemove', schemas.Unset] = schemas.unset,
        remove_all_tags: typing.Union[MetaOapg.properties.remove_all_tags, bool, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'RemoveDataSourceTagsInput':
        return super().__new__(
            cls,
            *args,
            data_source_id=data_source_id,
            tags_to_remove=tags_to_remove,
            remove_all_tags=remove_all_tags,
            _configuration=_configuration,
            **kwargs,
        )

from carbon.model.remove_data_source_tags_input_tags_to_remove import RemoveDataSourceTagsInputTagsToRemove