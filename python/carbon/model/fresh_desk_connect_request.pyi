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


class FreshDeskConnectRequest(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)
    """


    class MetaOapg:
        required = {
            "api_key",
            "domain",
        }
        
        class properties:
            domain = schemas.StrSchema
            api_key = schemas.StrSchema
            
            
            class tags(
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
                ) -> 'tags':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                        **kwargs,
                    )
            
            
            class chunk_size(
                schemas.IntBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneDecimalMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, decimal.Decimal, int, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'chunk_size':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class chunk_overlap(
                schemas.IntBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneDecimalMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, decimal.Decimal, int, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'chunk_overlap':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class skip_embedding_generation(
                schemas.BoolBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneBoolMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, bool, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'skip_embedding_generation':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
        
            @staticmethod
            def embedding_model() -> typing.Type['EmbeddingGeneratorsNullable']:
                return EmbeddingGeneratorsNullable
            
            
            class generate_sparse_vectors(
                schemas.BoolBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneBoolMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, bool, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'generate_sparse_vectors':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class prepend_filename_to_chunks(
                schemas.BoolBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneBoolMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, bool, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'prepend_filename_to_chunks':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class sync_files_on_connection(
                schemas.BoolBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneBoolMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, bool, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'sync_files_on_connection':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class request_id(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'request_id':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            sync_source_items = schemas.BoolSchema
        
            @staticmethod
            def file_sync_config() -> typing.Type['FileSyncConfigNullable']:
                return FileSyncConfigNullable
            __annotations__ = {
                "domain": domain,
                "api_key": api_key,
                "tags": tags,
                "chunk_size": chunk_size,
                "chunk_overlap": chunk_overlap,
                "skip_embedding_generation": skip_embedding_generation,
                "embedding_model": embedding_model,
                "generate_sparse_vectors": generate_sparse_vectors,
                "prepend_filename_to_chunks": prepend_filename_to_chunks,
                "sync_files_on_connection": sync_files_on_connection,
                "request_id": request_id,
                "sync_source_items": sync_source_items,
                "file_sync_config": file_sync_config,
            }
    
    api_key: MetaOapg.properties.api_key
    domain: MetaOapg.properties.domain
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["domain"]) -> MetaOapg.properties.domain: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["api_key"]) -> MetaOapg.properties.api_key: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["tags"]) -> MetaOapg.properties.tags: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["chunk_size"]) -> MetaOapg.properties.chunk_size: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["chunk_overlap"]) -> MetaOapg.properties.chunk_overlap: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["skip_embedding_generation"]) -> MetaOapg.properties.skip_embedding_generation: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["embedding_model"]) -> 'EmbeddingGeneratorsNullable': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["generate_sparse_vectors"]) -> MetaOapg.properties.generate_sparse_vectors: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["prepend_filename_to_chunks"]) -> MetaOapg.properties.prepend_filename_to_chunks: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["sync_files_on_connection"]) -> MetaOapg.properties.sync_files_on_connection: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["request_id"]) -> MetaOapg.properties.request_id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["sync_source_items"]) -> MetaOapg.properties.sync_source_items: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["file_sync_config"]) -> 'FileSyncConfigNullable': ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["domain", "api_key", "tags", "chunk_size", "chunk_overlap", "skip_embedding_generation", "embedding_model", "generate_sparse_vectors", "prepend_filename_to_chunks", "sync_files_on_connection", "request_id", "sync_source_items", "file_sync_config", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["domain"]) -> MetaOapg.properties.domain: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["api_key"]) -> MetaOapg.properties.api_key: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["tags"]) -> typing.Union[MetaOapg.properties.tags, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["chunk_size"]) -> typing.Union[MetaOapg.properties.chunk_size, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["chunk_overlap"]) -> typing.Union[MetaOapg.properties.chunk_overlap, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["skip_embedding_generation"]) -> typing.Union[MetaOapg.properties.skip_embedding_generation, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["embedding_model"]) -> typing.Union['EmbeddingGeneratorsNullable', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["generate_sparse_vectors"]) -> typing.Union[MetaOapg.properties.generate_sparse_vectors, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["prepend_filename_to_chunks"]) -> typing.Union[MetaOapg.properties.prepend_filename_to_chunks, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["sync_files_on_connection"]) -> typing.Union[MetaOapg.properties.sync_files_on_connection, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["request_id"]) -> typing.Union[MetaOapg.properties.request_id, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["sync_source_items"]) -> typing.Union[MetaOapg.properties.sync_source_items, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["file_sync_config"]) -> typing.Union['FileSyncConfigNullable', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["domain", "api_key", "tags", "chunk_size", "chunk_overlap", "skip_embedding_generation", "embedding_model", "generate_sparse_vectors", "prepend_filename_to_chunks", "sync_files_on_connection", "request_id", "sync_source_items", "file_sync_config", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        api_key: typing.Union[MetaOapg.properties.api_key, str, ],
        domain: typing.Union[MetaOapg.properties.domain, str, ],
        tags: typing.Union[MetaOapg.properties.tags, dict, frozendict.frozendict, None, schemas.Unset] = schemas.unset,
        chunk_size: typing.Union[MetaOapg.properties.chunk_size, None, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        chunk_overlap: typing.Union[MetaOapg.properties.chunk_overlap, None, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        skip_embedding_generation: typing.Union[MetaOapg.properties.skip_embedding_generation, None, bool, schemas.Unset] = schemas.unset,
        embedding_model: typing.Union['EmbeddingGeneratorsNullable', schemas.Unset] = schemas.unset,
        generate_sparse_vectors: typing.Union[MetaOapg.properties.generate_sparse_vectors, None, bool, schemas.Unset] = schemas.unset,
        prepend_filename_to_chunks: typing.Union[MetaOapg.properties.prepend_filename_to_chunks, None, bool, schemas.Unset] = schemas.unset,
        sync_files_on_connection: typing.Union[MetaOapg.properties.sync_files_on_connection, None, bool, schemas.Unset] = schemas.unset,
        request_id: typing.Union[MetaOapg.properties.request_id, None, str, schemas.Unset] = schemas.unset,
        sync_source_items: typing.Union[MetaOapg.properties.sync_source_items, bool, schemas.Unset] = schemas.unset,
        file_sync_config: typing.Union['FileSyncConfigNullable', schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'FreshDeskConnectRequest':
        return super().__new__(
            cls,
            *args,
            api_key=api_key,
            domain=domain,
            tags=tags,
            chunk_size=chunk_size,
            chunk_overlap=chunk_overlap,
            skip_embedding_generation=skip_embedding_generation,
            embedding_model=embedding_model,
            generate_sparse_vectors=generate_sparse_vectors,
            prepend_filename_to_chunks=prepend_filename_to_chunks,
            sync_files_on_connection=sync_files_on_connection,
            request_id=request_id,
            sync_source_items=sync_source_items,
            file_sync_config=file_sync_config,
            _configuration=_configuration,
            **kwargs,
        )

from carbon.model.embedding_generators_nullable import EmbeddingGeneratorsNullable
from carbon.model.file_sync_config_nullable import FileSyncConfigNullable
