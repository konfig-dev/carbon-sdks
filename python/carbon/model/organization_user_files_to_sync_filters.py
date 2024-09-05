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


class OrganizationUserFilesToSyncFilters(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)
    """


    class MetaOapg:
        
        class properties:
        
            @staticmethod
            def tags() -> typing.Type['OrganizationUserFilesToSyncFiltersTags']:
                return OrganizationUserFilesToSyncFiltersTags
            
            
            class source(
                schemas.ComposedSchema,
            ):
            
            
                class MetaOapg:
                    
                    
                    class any_of_1(
                        schemas.ListSchema
                    ):
                    
                    
                        class MetaOapg:
                            
                            @staticmethod
                            def items() -> typing.Type['DataSourceType']:
                                return DataSourceType
                    
                        def __new__(
                            cls,
                            arg: typing.Union[typing.Tuple['DataSourceType'], typing.List['DataSourceType']],
                            _configuration: typing.Optional[schemas.Configuration] = None,
                        ) -> 'any_of_1':
                            return super().__new__(
                                cls,
                                arg,
                                _configuration=_configuration,
                            )
                    
                        def __getitem__(self, i: int) -> 'DataSourceType':
                            return super().__getitem__(i)
                    
                    @classmethod
                    @functools.lru_cache()
                    def any_of(cls):
                        # we need this here to make our import statements work
                        # we must store _composed_schemas in here so the code is only run
                        # when we invoke this method. If we kept this at the class
                        # level we would get an error because the class level
                        # code would be run when this module is imported, and these composed
                        # classes don't exist yet because their module has not finished
                        # loading
                        return [
                            DataSourceType,
                            cls.any_of_1,
                        ]
            
            
                def __new__(
                    cls,
                    *args: typing.Union[dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                    **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
                ) -> 'source':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                        **kwargs,
                    )
            
            
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
            
            
            class tags_v2(
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
                ) -> 'tags_v2':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                        **kwargs,
                    )
        
            @staticmethod
            def ids() -> typing.Type['OrganizationUserFilesToSyncFiltersIds']:
                return OrganizationUserFilesToSyncFiltersIds
        
            @staticmethod
            def external_file_ids() -> typing.Type['OrganizationUserFilesToSyncFiltersExternalFileIds']:
                return OrganizationUserFilesToSyncFiltersExternalFileIds
            
            
            class sync_statuses(
                schemas.ListBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneTupleMixin
            ):
            
            
                class MetaOapg:
                    
                    @staticmethod
                    def items() -> typing.Type['ExternalFileSyncStatuses']:
                        return ExternalFileSyncStatuses
            
            
                def __new__(
                    cls,
                    *args: typing.Union[list, tuple, None, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'sync_statuses':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
        
            @staticmethod
            def parent_file_ids() -> typing.Type['OrganizationUserFilesToSyncFiltersParentFileIds']:
                return OrganizationUserFilesToSyncFiltersParentFileIds
        
            @staticmethod
            def organization_user_data_source_id() -> typing.Type['OrganizationUserFilesToSyncFiltersOrganizationUserDataSourceId']:
                return OrganizationUserFilesToSyncFiltersOrganizationUserDataSourceId
            
            
            class embedding_generators(
                schemas.ListBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneTupleMixin
            ):
            
            
                class MetaOapg:
                    
                    @staticmethod
                    def items() -> typing.Type['EmbeddingGenerators']:
                        return EmbeddingGenerators
            
            
                def __new__(
                    cls,
                    *args: typing.Union[list, tuple, None, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'embedding_generators':
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
            include_all_children = schemas.BoolSchema
            non_synced_only = schemas.BoolSchema
        
            @staticmethod
            def request_ids() -> typing.Type['OrganizationUserFilesToSyncFiltersRequestIds']:
                return OrganizationUserFilesToSyncFiltersRequestIds
            
            
            class sync_error_message(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'sync_error_message':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class include_containers(
                schemas.BoolBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneBoolMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, bool, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'include_containers':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
        
            @staticmethod
            def external_urls() -> typing.Type['OrganizationUserFilesToSyncFiltersExternalUrls']:
                return OrganizationUserFilesToSyncFiltersExternalUrls
        
            @staticmethod
            def file_types_at_source() -> typing.Type['OrganizationUserFilesToSyncFiltersFileTypesAtSource']:
                return OrganizationUserFilesToSyncFiltersFileTypesAtSource
            __annotations__ = {
                "tags": tags,
                "source": source,
                "name": name,
                "tags_v2": tags_v2,
                "ids": ids,
                "external_file_ids": external_file_ids,
                "sync_statuses": sync_statuses,
                "parent_file_ids": parent_file_ids,
                "organization_user_data_source_id": organization_user_data_source_id,
                "embedding_generators": embedding_generators,
                "root_files_only": root_files_only,
                "include_all_children": include_all_children,
                "non_synced_only": non_synced_only,
                "request_ids": request_ids,
                "sync_error_message": sync_error_message,
                "include_containers": include_containers,
                "external_urls": external_urls,
                "file_types_at_source": file_types_at_source,
            }
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["tags"]) -> 'OrganizationUserFilesToSyncFiltersTags': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["source"]) -> MetaOapg.properties.source: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["name"]) -> MetaOapg.properties.name: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["tags_v2"]) -> MetaOapg.properties.tags_v2: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["ids"]) -> 'OrganizationUserFilesToSyncFiltersIds': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["external_file_ids"]) -> 'OrganizationUserFilesToSyncFiltersExternalFileIds': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["sync_statuses"]) -> MetaOapg.properties.sync_statuses: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["parent_file_ids"]) -> 'OrganizationUserFilesToSyncFiltersParentFileIds': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["organization_user_data_source_id"]) -> 'OrganizationUserFilesToSyncFiltersOrganizationUserDataSourceId': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["embedding_generators"]) -> MetaOapg.properties.embedding_generators: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["root_files_only"]) -> MetaOapg.properties.root_files_only: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["include_all_children"]) -> MetaOapg.properties.include_all_children: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["non_synced_only"]) -> MetaOapg.properties.non_synced_only: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["request_ids"]) -> 'OrganizationUserFilesToSyncFiltersRequestIds': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["sync_error_message"]) -> MetaOapg.properties.sync_error_message: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["include_containers"]) -> MetaOapg.properties.include_containers: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["external_urls"]) -> 'OrganizationUserFilesToSyncFiltersExternalUrls': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["file_types_at_source"]) -> 'OrganizationUserFilesToSyncFiltersFileTypesAtSource': ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["tags", "source", "name", "tags_v2", "ids", "external_file_ids", "sync_statuses", "parent_file_ids", "organization_user_data_source_id", "embedding_generators", "root_files_only", "include_all_children", "non_synced_only", "request_ids", "sync_error_message", "include_containers", "external_urls", "file_types_at_source", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["tags"]) -> typing.Union['OrganizationUserFilesToSyncFiltersTags', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["source"]) -> typing.Union[MetaOapg.properties.source, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["name"]) -> typing.Union[MetaOapg.properties.name, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["tags_v2"]) -> typing.Union[MetaOapg.properties.tags_v2, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["ids"]) -> typing.Union['OrganizationUserFilesToSyncFiltersIds', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["external_file_ids"]) -> typing.Union['OrganizationUserFilesToSyncFiltersExternalFileIds', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["sync_statuses"]) -> typing.Union[MetaOapg.properties.sync_statuses, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["parent_file_ids"]) -> typing.Union['OrganizationUserFilesToSyncFiltersParentFileIds', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["organization_user_data_source_id"]) -> typing.Union['OrganizationUserFilesToSyncFiltersOrganizationUserDataSourceId', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["embedding_generators"]) -> typing.Union[MetaOapg.properties.embedding_generators, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["root_files_only"]) -> typing.Union[MetaOapg.properties.root_files_only, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["include_all_children"]) -> typing.Union[MetaOapg.properties.include_all_children, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["non_synced_only"]) -> typing.Union[MetaOapg.properties.non_synced_only, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["request_ids"]) -> typing.Union['OrganizationUserFilesToSyncFiltersRequestIds', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["sync_error_message"]) -> typing.Union[MetaOapg.properties.sync_error_message, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["include_containers"]) -> typing.Union[MetaOapg.properties.include_containers, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["external_urls"]) -> typing.Union['OrganizationUserFilesToSyncFiltersExternalUrls', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["file_types_at_source"]) -> typing.Union['OrganizationUserFilesToSyncFiltersFileTypesAtSource', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["tags", "source", "name", "tags_v2", "ids", "external_file_ids", "sync_statuses", "parent_file_ids", "organization_user_data_source_id", "embedding_generators", "root_files_only", "include_all_children", "non_synced_only", "request_ids", "sync_error_message", "include_containers", "external_urls", "file_types_at_source", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        tags: typing.Union['OrganizationUserFilesToSyncFiltersTags', schemas.Unset] = schemas.unset,
        source: typing.Union[MetaOapg.properties.source, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, schemas.Unset] = schemas.unset,
        name: typing.Union[MetaOapg.properties.name, None, str, schemas.Unset] = schemas.unset,
        tags_v2: typing.Union[MetaOapg.properties.tags_v2, dict, frozendict.frozendict, None, schemas.Unset] = schemas.unset,
        ids: typing.Union['OrganizationUserFilesToSyncFiltersIds', schemas.Unset] = schemas.unset,
        external_file_ids: typing.Union['OrganizationUserFilesToSyncFiltersExternalFileIds', schemas.Unset] = schemas.unset,
        sync_statuses: typing.Union[MetaOapg.properties.sync_statuses, list, tuple, None, schemas.Unset] = schemas.unset,
        parent_file_ids: typing.Union['OrganizationUserFilesToSyncFiltersParentFileIds', schemas.Unset] = schemas.unset,
        organization_user_data_source_id: typing.Union['OrganizationUserFilesToSyncFiltersOrganizationUserDataSourceId', schemas.Unset] = schemas.unset,
        embedding_generators: typing.Union[MetaOapg.properties.embedding_generators, list, tuple, None, schemas.Unset] = schemas.unset,
        root_files_only: typing.Union[MetaOapg.properties.root_files_only, None, bool, schemas.Unset] = schemas.unset,
        include_all_children: typing.Union[MetaOapg.properties.include_all_children, bool, schemas.Unset] = schemas.unset,
        non_synced_only: typing.Union[MetaOapg.properties.non_synced_only, bool, schemas.Unset] = schemas.unset,
        request_ids: typing.Union['OrganizationUserFilesToSyncFiltersRequestIds', schemas.Unset] = schemas.unset,
        sync_error_message: typing.Union[MetaOapg.properties.sync_error_message, None, str, schemas.Unset] = schemas.unset,
        include_containers: typing.Union[MetaOapg.properties.include_containers, None, bool, schemas.Unset] = schemas.unset,
        external_urls: typing.Union['OrganizationUserFilesToSyncFiltersExternalUrls', schemas.Unset] = schemas.unset,
        file_types_at_source: typing.Union['OrganizationUserFilesToSyncFiltersFileTypesAtSource', schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'OrganizationUserFilesToSyncFilters':
        return super().__new__(
            cls,
            *args,
            tags=tags,
            source=source,
            name=name,
            tags_v2=tags_v2,
            ids=ids,
            external_file_ids=external_file_ids,
            sync_statuses=sync_statuses,
            parent_file_ids=parent_file_ids,
            organization_user_data_source_id=organization_user_data_source_id,
            embedding_generators=embedding_generators,
            root_files_only=root_files_only,
            include_all_children=include_all_children,
            non_synced_only=non_synced_only,
            request_ids=request_ids,
            sync_error_message=sync_error_message,
            include_containers=include_containers,
            external_urls=external_urls,
            file_types_at_source=file_types_at_source,
            _configuration=_configuration,
            **kwargs,
        )

from carbon.model.data_source_type import DataSourceType
from carbon.model.embedding_generators import EmbeddingGenerators
from carbon.model.external_file_sync_statuses import ExternalFileSyncStatuses
from carbon.model.organization_user_files_to_sync_filters_external_file_ids import OrganizationUserFilesToSyncFiltersExternalFileIds
from carbon.model.organization_user_files_to_sync_filters_external_urls import OrganizationUserFilesToSyncFiltersExternalUrls
from carbon.model.organization_user_files_to_sync_filters_file_types_at_source import OrganizationUserFilesToSyncFiltersFileTypesAtSource
from carbon.model.organization_user_files_to_sync_filters_ids import OrganizationUserFilesToSyncFiltersIds
from carbon.model.organization_user_files_to_sync_filters_organization_user_data_source_id import OrganizationUserFilesToSyncFiltersOrganizationUserDataSourceId
from carbon.model.organization_user_files_to_sync_filters_parent_file_ids import OrganizationUserFilesToSyncFiltersParentFileIds
from carbon.model.organization_user_files_to_sync_filters_request_ids import OrganizationUserFilesToSyncFiltersRequestIds
from carbon.model.organization_user_files_to_sync_filters_tags import OrganizationUserFilesToSyncFiltersTags
