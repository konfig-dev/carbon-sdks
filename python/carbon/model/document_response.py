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


class DocumentResponse(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)
    """


    class MetaOapg:
        required = {
            "chunk_index",
            "score",
            "file_id",
            "content_metadata",
            "presigned_url",
            "rank",
            "source_type",
            "vector",
            "source",
            "content",
            "source_url",
            "tags",
        }
        
        class properties:
        
            @staticmethod
            def tags() -> typing.Type['DocumentResponseTags']:
                return DocumentResponseTags
            content = schemas.StrSchema
            file_id = schemas.IntSchema
            
            
            class source(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'source':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class source_url(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'source_url':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
        
            @staticmethod
            def source_type() -> typing.Type['DataSourceTypeNullable']:
                return DataSourceTypeNullable
            
            
            class presigned_url(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'presigned_url':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
        
            @staticmethod
            def vector() -> typing.Type['DocumentResponseVector']:
                return DocumentResponseVector
            
            
            class score(
                schemas.NumberBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneDecimalMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, decimal.Decimal, int, float, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'score':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class rank(
                schemas.ComposedSchema,
            ):
            
            
                class MetaOapg:
                    any_of_0 = schemas.NumberSchema
                    any_of_1 = schemas.IntSchema
                    
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
                            cls.any_of_0,
                            cls.any_of_1,
                        ]
            
            
                def __new__(
                    cls,
                    *args: typing.Union[dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                    **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
                ) -> 'rank':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                        **kwargs,
                    )
            
            
            class content_metadata(
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
                ) -> 'content_metadata':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                        **kwargs,
                    )
            
            
            class chunk_index(
                schemas.IntBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneDecimalMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, decimal.Decimal, int, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'chunk_index':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            __annotations__ = {
                "tags": tags,
                "content": content,
                "file_id": file_id,
                "source": source,
                "source_url": source_url,
                "source_type": source_type,
                "presigned_url": presigned_url,
                "vector": vector,
                "score": score,
                "rank": rank,
                "content_metadata": content_metadata,
                "chunk_index": chunk_index,
            }
    
    chunk_index: MetaOapg.properties.chunk_index
    score: MetaOapg.properties.score
    file_id: MetaOapg.properties.file_id
    content_metadata: MetaOapg.properties.content_metadata
    presigned_url: MetaOapg.properties.presigned_url
    rank: MetaOapg.properties.rank
    source_type: 'DataSourceTypeNullable'
    vector: 'DocumentResponseVector'
    source: MetaOapg.properties.source
    content: MetaOapg.properties.content
    source_url: MetaOapg.properties.source_url
    tags: 'DocumentResponseTags'
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["tags"]) -> 'DocumentResponseTags': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["content"]) -> MetaOapg.properties.content: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["file_id"]) -> MetaOapg.properties.file_id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["source"]) -> MetaOapg.properties.source: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["source_url"]) -> MetaOapg.properties.source_url: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["source_type"]) -> 'DataSourceTypeNullable': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["presigned_url"]) -> MetaOapg.properties.presigned_url: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["vector"]) -> 'DocumentResponseVector': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["score"]) -> MetaOapg.properties.score: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["rank"]) -> MetaOapg.properties.rank: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["content_metadata"]) -> MetaOapg.properties.content_metadata: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["chunk_index"]) -> MetaOapg.properties.chunk_index: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["tags", "content", "file_id", "source", "source_url", "source_type", "presigned_url", "vector", "score", "rank", "content_metadata", "chunk_index", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["tags"]) -> 'DocumentResponseTags': ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["content"]) -> MetaOapg.properties.content: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["file_id"]) -> MetaOapg.properties.file_id: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["source"]) -> MetaOapg.properties.source: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["source_url"]) -> MetaOapg.properties.source_url: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["source_type"]) -> 'DataSourceTypeNullable': ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["presigned_url"]) -> MetaOapg.properties.presigned_url: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["vector"]) -> 'DocumentResponseVector': ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["score"]) -> MetaOapg.properties.score: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["rank"]) -> MetaOapg.properties.rank: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["content_metadata"]) -> MetaOapg.properties.content_metadata: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["chunk_index"]) -> MetaOapg.properties.chunk_index: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["tags", "content", "file_id", "source", "source_url", "source_type", "presigned_url", "vector", "score", "rank", "content_metadata", "chunk_index", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        chunk_index: typing.Union[MetaOapg.properties.chunk_index, None, decimal.Decimal, int, ],
        score: typing.Union[MetaOapg.properties.score, None, decimal.Decimal, int, float, ],
        file_id: typing.Union[MetaOapg.properties.file_id, decimal.Decimal, int, ],
        content_metadata: typing.Union[MetaOapg.properties.content_metadata, dict, frozendict.frozendict, None, ],
        presigned_url: typing.Union[MetaOapg.properties.presigned_url, None, str, ],
        rank: typing.Union[MetaOapg.properties.rank, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
        source_type: 'DataSourceTypeNullable',
        vector: 'DocumentResponseVector',
        source: typing.Union[MetaOapg.properties.source, None, str, ],
        content: typing.Union[MetaOapg.properties.content, str, ],
        source_url: typing.Union[MetaOapg.properties.source_url, None, str, ],
        tags: 'DocumentResponseTags',
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'DocumentResponse':
        return super().__new__(
            cls,
            *args,
            chunk_index=chunk_index,
            score=score,
            file_id=file_id,
            content_metadata=content_metadata,
            presigned_url=presigned_url,
            rank=rank,
            source_type=source_type,
            vector=vector,
            source=source,
            content=content,
            source_url=source_url,
            tags=tags,
            _configuration=_configuration,
            **kwargs,
        )

from carbon.model.data_source_type_nullable import DataSourceTypeNullable
from carbon.model.document_response_tags import DocumentResponseTags
from carbon.model.document_response_vector import DocumentResponseVector
