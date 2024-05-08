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

from carbon.pydantic.data_source_type import DataSourceType
from carbon.pydantic.embedding_generators import EmbeddingGenerators
from carbon.pydantic.external_file_sync_statuses import ExternalFileSyncStatuses
from carbon.pydantic.organization_user_files_to_sync_filters_external_file_ids import OrganizationUserFilesToSyncFiltersExternalFileIds
from carbon.pydantic.organization_user_files_to_sync_filters_ids import OrganizationUserFilesToSyncFiltersIds
from carbon.pydantic.organization_user_files_to_sync_filters_organization_user_data_source_id import OrganizationUserFilesToSyncFiltersOrganizationUserDataSourceId
from carbon.pydantic.organization_user_files_to_sync_filters_parent_file_ids import OrganizationUserFilesToSyncFiltersParentFileIds
from carbon.pydantic.organization_user_files_to_sync_filters_request_ids import OrganizationUserFilesToSyncFiltersRequestIds
from carbon.pydantic.organization_user_files_to_sync_filters_tags import OrganizationUserFilesToSyncFiltersTags

class OrganizationUserFilesToSyncFilters(BaseModel):
    # WARNING: This property is deprecated
    tags: typing.Optional[OrganizationUserFilesToSyncFiltersTags] = Field(None, alias='tags')

    # The source of the file. If a list is provided, the query will return files from any of the sources in the list.
    source: typing.Optional[typing.Union[DataSourceType, typing.List[DataSourceType]]] = Field(None, alias='source')

    # The name of the file. The query will return files with names that contain this string.
    name: typing.Optional[typing.Optional[str]] = Field(None, alias='name')

    #          Tags to filter by. Supports logical AND and OR operations. Input should be like below:         {             \"OR\": [                 {                 \"key\": \"subject\",                 \"value\": \"holy-bible\",                 \"negate\": false                 },                 {                     \"key\": \"person-of-interest\",                     \"value\": \"jesus christ\",                     \"negate\": false                 },                 {                     \"key\": \"genre\",                     \"value\": \"fiction\",                     \"negate\": true                 }                 {                     \"AND\": [                         {                             \"key\": \"subject\",                             \"value\": \"tao-te-ching\",                             \"negate\": true                         },                         {                             \"key\": \"author\",                             \"value\": \"lao-tzu\",                             \"negate\": false                         }                     ]                 }             ]         }         For a single filter, the filter block can be placed within either an \"AND\" or \"OR\" block.         
    tags_v2: typing.Optional[typing.Optional[typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]]] = Field(None, alias='tags_v2')

    ids: typing.Optional[OrganizationUserFilesToSyncFiltersIds] = Field(None, alias='ids')

    external_file_ids: typing.Optional[OrganizationUserFilesToSyncFiltersExternalFileIds] = Field(None, alias='external_file_ids')

    # The sync statuses of the files. The query will return files with these sync statuses.
    sync_statuses: typing.Optional[typing.Optional[typing.List[ExternalFileSyncStatuses]]] = Field(None, alias='sync_statuses')

    # WARNING: This property is deprecated
    parent_file_ids: typing.Optional[OrganizationUserFilesToSyncFiltersParentFileIds] = Field(None, alias='parent_file_ids')

    organization_user_data_source_id: typing.Optional[OrganizationUserFilesToSyncFiltersOrganizationUserDataSourceId] = Field(None, alias='organization_user_data_source_id')

    # The embedding generators of the files. The query will return files with these embedding generators.
    embedding_generators: typing.Optional[typing.Optional[typing.List[EmbeddingGenerators]]] = Field(None, alias='embedding_generators')

    # If true, the query will return only root files. Cannot be true if parent_file_ids or include_all_children is specified.
    root_files_only: typing.Optional[typing.Optional[bool]] = Field(None, alias='root_files_only')

    # If true, the query will return all descendents of the specified parent_file_ids.
    include_all_children: typing.Optional[bool] = Field(None, alias='include_all_children')

    # If true, the query will return only files that have not been synced yet.
    non_synced_only: typing.Optional[bool] = Field(None, alias='non_synced_only')

    request_ids: typing.Optional[OrganizationUserFilesToSyncFiltersRequestIds] = Field(None, alias='request_ids')

    # The error message of the file. The query will return files with error messages that contain this string. To search for files with no error message, use an empty string.
    sync_error_message: typing.Optional[typing.Optional[str]] = Field(None, alias='sync_error_message')

    # If true, the query will return containers in the response. Containers are files that group other files together and have no content themselves. Default behavior is to include containers.
    include_containers: typing.Optional[typing.Optional[bool]] = Field(None, alias='include_containers')

    model_config = ConfigDict(
        protected_namespaces=(),
        arbitrary_types_allowed=True
    )
