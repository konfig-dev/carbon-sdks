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


class WebscrapeRequest(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)
    """


    class MetaOapg:
        required = {
            "url",
        }
        
        class properties:
            url = schemas.StrSchema
        
            @staticmethod
            def tags() -> typing.Type['WebscrapeRequestTags']:
                return WebscrapeRequestTags
            
            
            class recursion_depth(
                schemas.IntBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneDecimalMixin
            ):
            
            
                class MetaOapg:
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, decimal.Decimal, int, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'recursion_depth':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class max_pages_to_scrape(
                schemas.IntBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneDecimalMixin
            ):
            
            
                class MetaOapg:
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, decimal.Decimal, int, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'max_pages_to_scrape':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
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
            
            
            class enable_auto_sync(
                schemas.BoolBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneBoolMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, bool, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'enable_auto_sync':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
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
        
            @staticmethod
            def html_tags_to_skip() -> typing.Type['WebscrapeRequestHtmlTagsToSkip']:
                return WebscrapeRequestHtmlTagsToSkip
        
            @staticmethod
            def css_classes_to_skip() -> typing.Type['WebscrapeRequestCssClassesToSkip']:
                return WebscrapeRequestCssClassesToSkip
        
            @staticmethod
            def css_selectors_to_skip() -> typing.Type['WebscrapeRequestCssSelectorsToSkip']:
                return WebscrapeRequestCssSelectorsToSkip
        
            @staticmethod
            def embedding_model() -> typing.Type['EmbeddingGenerators']:
                return EmbeddingGenerators
        
            @staticmethod
            def url_paths_to_include() -> typing.Type['WebscrapeRequestUrlPathsToInclude']:
                return WebscrapeRequestUrlPathsToInclude
            
            
            class download_css_and_media(
                schemas.BoolBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneBoolMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, bool, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'download_css_and_media':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            generate_chunks_only = schemas.BoolSchema
            store_file_only = schemas.BoolSchema
            __annotations__ = {
                "url": url,
                "tags": tags,
                "recursion_depth": recursion_depth,
                "max_pages_to_scrape": max_pages_to_scrape,
                "chunk_size": chunk_size,
                "chunk_overlap": chunk_overlap,
                "skip_embedding_generation": skip_embedding_generation,
                "enable_auto_sync": enable_auto_sync,
                "generate_sparse_vectors": generate_sparse_vectors,
                "prepend_filename_to_chunks": prepend_filename_to_chunks,
                "html_tags_to_skip": html_tags_to_skip,
                "css_classes_to_skip": css_classes_to_skip,
                "css_selectors_to_skip": css_selectors_to_skip,
                "embedding_model": embedding_model,
                "url_paths_to_include": url_paths_to_include,
                "download_css_and_media": download_css_and_media,
                "generate_chunks_only": generate_chunks_only,
                "store_file_only": store_file_only,
            }
    
    url: MetaOapg.properties.url
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["url"]) -> MetaOapg.properties.url: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["tags"]) -> 'WebscrapeRequestTags': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["recursion_depth"]) -> MetaOapg.properties.recursion_depth: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["max_pages_to_scrape"]) -> MetaOapg.properties.max_pages_to_scrape: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["chunk_size"]) -> MetaOapg.properties.chunk_size: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["chunk_overlap"]) -> MetaOapg.properties.chunk_overlap: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["skip_embedding_generation"]) -> MetaOapg.properties.skip_embedding_generation: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["enable_auto_sync"]) -> MetaOapg.properties.enable_auto_sync: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["generate_sparse_vectors"]) -> MetaOapg.properties.generate_sparse_vectors: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["prepend_filename_to_chunks"]) -> MetaOapg.properties.prepend_filename_to_chunks: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["html_tags_to_skip"]) -> 'WebscrapeRequestHtmlTagsToSkip': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["css_classes_to_skip"]) -> 'WebscrapeRequestCssClassesToSkip': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["css_selectors_to_skip"]) -> 'WebscrapeRequestCssSelectorsToSkip': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["embedding_model"]) -> 'EmbeddingGenerators': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["url_paths_to_include"]) -> 'WebscrapeRequestUrlPathsToInclude': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["download_css_and_media"]) -> MetaOapg.properties.download_css_and_media: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["generate_chunks_only"]) -> MetaOapg.properties.generate_chunks_only: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["store_file_only"]) -> MetaOapg.properties.store_file_only: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["url", "tags", "recursion_depth", "max_pages_to_scrape", "chunk_size", "chunk_overlap", "skip_embedding_generation", "enable_auto_sync", "generate_sparse_vectors", "prepend_filename_to_chunks", "html_tags_to_skip", "css_classes_to_skip", "css_selectors_to_skip", "embedding_model", "url_paths_to_include", "download_css_and_media", "generate_chunks_only", "store_file_only", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["url"]) -> MetaOapg.properties.url: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["tags"]) -> typing.Union['WebscrapeRequestTags', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["recursion_depth"]) -> typing.Union[MetaOapg.properties.recursion_depth, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["max_pages_to_scrape"]) -> typing.Union[MetaOapg.properties.max_pages_to_scrape, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["chunk_size"]) -> typing.Union[MetaOapg.properties.chunk_size, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["chunk_overlap"]) -> typing.Union[MetaOapg.properties.chunk_overlap, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["skip_embedding_generation"]) -> typing.Union[MetaOapg.properties.skip_embedding_generation, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["enable_auto_sync"]) -> typing.Union[MetaOapg.properties.enable_auto_sync, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["generate_sparse_vectors"]) -> typing.Union[MetaOapg.properties.generate_sparse_vectors, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["prepend_filename_to_chunks"]) -> typing.Union[MetaOapg.properties.prepend_filename_to_chunks, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["html_tags_to_skip"]) -> typing.Union['WebscrapeRequestHtmlTagsToSkip', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["css_classes_to_skip"]) -> typing.Union['WebscrapeRequestCssClassesToSkip', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["css_selectors_to_skip"]) -> typing.Union['WebscrapeRequestCssSelectorsToSkip', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["embedding_model"]) -> typing.Union['EmbeddingGenerators', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["url_paths_to_include"]) -> typing.Union['WebscrapeRequestUrlPathsToInclude', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["download_css_and_media"]) -> typing.Union[MetaOapg.properties.download_css_and_media, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["generate_chunks_only"]) -> typing.Union[MetaOapg.properties.generate_chunks_only, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["store_file_only"]) -> typing.Union[MetaOapg.properties.store_file_only, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["url", "tags", "recursion_depth", "max_pages_to_scrape", "chunk_size", "chunk_overlap", "skip_embedding_generation", "enable_auto_sync", "generate_sparse_vectors", "prepend_filename_to_chunks", "html_tags_to_skip", "css_classes_to_skip", "css_selectors_to_skip", "embedding_model", "url_paths_to_include", "download_css_and_media", "generate_chunks_only", "store_file_only", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        url: typing.Union[MetaOapg.properties.url, str, ],
        tags: typing.Union['WebscrapeRequestTags', schemas.Unset] = schemas.unset,
        recursion_depth: typing.Union[MetaOapg.properties.recursion_depth, None, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        max_pages_to_scrape: typing.Union[MetaOapg.properties.max_pages_to_scrape, None, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        chunk_size: typing.Union[MetaOapg.properties.chunk_size, None, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        chunk_overlap: typing.Union[MetaOapg.properties.chunk_overlap, None, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        skip_embedding_generation: typing.Union[MetaOapg.properties.skip_embedding_generation, None, bool, schemas.Unset] = schemas.unset,
        enable_auto_sync: typing.Union[MetaOapg.properties.enable_auto_sync, None, bool, schemas.Unset] = schemas.unset,
        generate_sparse_vectors: typing.Union[MetaOapg.properties.generate_sparse_vectors, None, bool, schemas.Unset] = schemas.unset,
        prepend_filename_to_chunks: typing.Union[MetaOapg.properties.prepend_filename_to_chunks, None, bool, schemas.Unset] = schemas.unset,
        html_tags_to_skip: typing.Union['WebscrapeRequestHtmlTagsToSkip', schemas.Unset] = schemas.unset,
        css_classes_to_skip: typing.Union['WebscrapeRequestCssClassesToSkip', schemas.Unset] = schemas.unset,
        css_selectors_to_skip: typing.Union['WebscrapeRequestCssSelectorsToSkip', schemas.Unset] = schemas.unset,
        embedding_model: typing.Union['EmbeddingGenerators', schemas.Unset] = schemas.unset,
        url_paths_to_include: typing.Union['WebscrapeRequestUrlPathsToInclude', schemas.Unset] = schemas.unset,
        download_css_and_media: typing.Union[MetaOapg.properties.download_css_and_media, None, bool, schemas.Unset] = schemas.unset,
        generate_chunks_only: typing.Union[MetaOapg.properties.generate_chunks_only, bool, schemas.Unset] = schemas.unset,
        store_file_only: typing.Union[MetaOapg.properties.store_file_only, bool, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'WebscrapeRequest':
        return super().__new__(
            cls,
            *args,
            url=url,
            tags=tags,
            recursion_depth=recursion_depth,
            max_pages_to_scrape=max_pages_to_scrape,
            chunk_size=chunk_size,
            chunk_overlap=chunk_overlap,
            skip_embedding_generation=skip_embedding_generation,
            enable_auto_sync=enable_auto_sync,
            generate_sparse_vectors=generate_sparse_vectors,
            prepend_filename_to_chunks=prepend_filename_to_chunks,
            html_tags_to_skip=html_tags_to_skip,
            css_classes_to_skip=css_classes_to_skip,
            css_selectors_to_skip=css_selectors_to_skip,
            embedding_model=embedding_model,
            url_paths_to_include=url_paths_to_include,
            download_css_and_media=download_css_and_media,
            generate_chunks_only=generate_chunks_only,
            store_file_only=store_file_only,
            _configuration=_configuration,
            **kwargs,
        )

from carbon.model.embedding_generators import EmbeddingGenerators
from carbon.model.webscrape_request_css_classes_to_skip import WebscrapeRequestCssClassesToSkip
from carbon.model.webscrape_request_css_selectors_to_skip import WebscrapeRequestCssSelectorsToSkip
from carbon.model.webscrape_request_html_tags_to_skip import WebscrapeRequestHtmlTagsToSkip
from carbon.model.webscrape_request_tags import WebscrapeRequestTags
from carbon.model.webscrape_request_url_paths_to_include import WebscrapeRequestUrlPathsToInclude
