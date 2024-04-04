# coding: utf-8

"""
    Carbon

    Connect external data to LLMs, no matter the source.

    The version of the OpenAPI document: 1.0.0
    Generated by: https://konfigthis.com
"""

from dataclasses import dataclass
import typing_extensions
import urllib3
from pydantic import RootModel
from carbon.request_before_hook import request_before_hook
import json
from urllib3._collections import HTTPHeaderDict

from carbon.api_response import AsyncGeneratorResponse
from carbon import api_client, exceptions
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

from carbon.model.http_validation_error import HTTPValidationError as HTTPValidationErrorSchema
from carbon.model.embedding_generators_nullable import EmbeddingGeneratorsNullable as EmbeddingGeneratorsNullableSchema
from carbon.model.data_source_type import DataSourceType as DataSourceTypeSchema
from carbon.model.o_auth_url_request import OAuthURLRequest as OAuthURLRequestSchema
from carbon.model.outh_url_response import OuthURLResponse as OuthURLResponseSchema

from carbon.type.outh_url_response import OuthURLResponse
from carbon.type.http_validation_error import HTTPValidationError
from carbon.type.o_auth_url_request import OAuthURLRequest
from carbon.type.data_source_type import DataSourceType
from carbon.type.embedding_generators_nullable import EmbeddingGeneratorsNullable

from ...api_client import Dictionary
from carbon.pydantic.embedding_generators_nullable import EmbeddingGeneratorsNullable as EmbeddingGeneratorsNullablePydantic
from carbon.pydantic.data_source_type import DataSourceType as DataSourceTypePydantic
from carbon.pydantic.http_validation_error import HTTPValidationError as HTTPValidationErrorPydantic
from carbon.pydantic.o_auth_url_request import OAuthURLRequest as OAuthURLRequestPydantic
from carbon.pydantic.outh_url_response import OuthURLResponse as OuthURLResponsePydantic

# body param
SchemaForRequestBodyApplicationJson = OAuthURLRequestSchema


request_body_o_auth_url_request = api_client.RequestBody(
    content={
        'application/json': api_client.MediaType(
            schema=SchemaForRequestBodyApplicationJson),
    },
    required=True,
)
SchemaFor200ResponseBodyApplicationJson = OuthURLResponseSchema


@dataclass
class ApiResponseFor200(api_client.ApiResponse):
    body: OuthURLResponse


@dataclass
class ApiResponseFor200Async(api_client.AsyncApiResponse):
    body: OuthURLResponse


_response_for_200 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor200,
    response_cls_async=ApiResponseFor200Async,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor200ResponseBodyApplicationJson),
    },
)
SchemaFor422ResponseBodyApplicationJson = HTTPValidationErrorSchema


@dataclass
class ApiResponseFor422(api_client.ApiResponse):
    body: HTTPValidationError


@dataclass
class ApiResponseFor422Async(api_client.AsyncApiResponse):
    body: HTTPValidationError


_response_for_422 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor422,
    response_cls_async=ApiResponseFor422Async,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor422ResponseBodyApplicationJson),
    },
)
_all_accept_content_types = (
    'application/json',
)


class BaseApi(api_client.Api):

    def _get_oauth_url_mapped_args(
        self,
        service: DataSourceType,
        tags: typing.Optional[typing.Union[bool, date, datetime, dict, float, int, list, str, None]] = None,
        scope: typing.Optional[typing.Optional[str]] = None,
        chunk_size: typing.Optional[typing.Optional[int]] = None,
        chunk_overlap: typing.Optional[typing.Optional[int]] = None,
        skip_embedding_generation: typing.Optional[typing.Optional[bool]] = None,
        embedding_model: typing.Optional[EmbeddingGeneratorsNullable] = None,
        zendesk_subdomain: typing.Optional[typing.Optional[str]] = None,
        microsoft_tenant: typing.Optional[typing.Optional[str]] = None,
        sharepoint_site_name: typing.Optional[typing.Optional[str]] = None,
        confluence_subdomain: typing.Optional[typing.Optional[str]] = None,
        generate_sparse_vectors: typing.Optional[typing.Optional[bool]] = None,
        prepend_filename_to_chunks: typing.Optional[typing.Optional[bool]] = None,
        max_items_per_chunk: typing.Optional[typing.Optional[int]] = None,
        salesforce_domain: typing.Optional[typing.Optional[str]] = None,
        sync_files_on_connection: typing.Optional[typing.Optional[bool]] = None,
        set_page_as_boundary: typing.Optional[bool] = None,
        data_source_id: typing.Optional[typing.Optional[int]] = None,
        connecting_new_account: typing.Optional[typing.Optional[bool]] = None,
        request_id: typing.Optional[typing.Optional[str]] = None,
        use_ocr: typing.Optional[typing.Optional[bool]] = None,
        parse_pdf_tables_with_ocr: typing.Optional[typing.Optional[bool]] = None,
    ) -> api_client.MappedArgs:
        args: api_client.MappedArgs = api_client.MappedArgs()
        _body = {}
        if tags is not None:
            _body["tags"] = tags
        if scope is not None:
            _body["scope"] = scope
        if service is not None:
            _body["service"] = service
        if chunk_size is not None:
            _body["chunk_size"] = chunk_size
        if chunk_overlap is not None:
            _body["chunk_overlap"] = chunk_overlap
        if skip_embedding_generation is not None:
            _body["skip_embedding_generation"] = skip_embedding_generation
        if embedding_model is not None:
            _body["embedding_model"] = embedding_model
        if zendesk_subdomain is not None:
            _body["zendesk_subdomain"] = zendesk_subdomain
        if microsoft_tenant is not None:
            _body["microsoft_tenant"] = microsoft_tenant
        if sharepoint_site_name is not None:
            _body["sharepoint_site_name"] = sharepoint_site_name
        if confluence_subdomain is not None:
            _body["confluence_subdomain"] = confluence_subdomain
        if generate_sparse_vectors is not None:
            _body["generate_sparse_vectors"] = generate_sparse_vectors
        if prepend_filename_to_chunks is not None:
            _body["prepend_filename_to_chunks"] = prepend_filename_to_chunks
        if max_items_per_chunk is not None:
            _body["max_items_per_chunk"] = max_items_per_chunk
        if salesforce_domain is not None:
            _body["salesforce_domain"] = salesforce_domain
        if sync_files_on_connection is not None:
            _body["sync_files_on_connection"] = sync_files_on_connection
        if set_page_as_boundary is not None:
            _body["set_page_as_boundary"] = set_page_as_boundary
        if data_source_id is not None:
            _body["data_source_id"] = data_source_id
        if connecting_new_account is not None:
            _body["connecting_new_account"] = connecting_new_account
        if request_id is not None:
            _body["request_id"] = request_id
        if use_ocr is not None:
            _body["use_ocr"] = use_ocr
        if parse_pdf_tables_with_ocr is not None:
            _body["parse_pdf_tables_with_ocr"] = parse_pdf_tables_with_ocr
        args.body = _body
        return args

    async def _aget_oauth_url_oapg(
        self,
        body: typing.Any = None,
        skip_deserialization: bool = True,
        timeout: typing.Optional[typing.Union[float, typing.Tuple]] = None,
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        content_type: str = 'application/json',
        stream: bool = False,
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        """
        Get Oauth Url
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        used_path = path.value
    
        _headers = HTTPHeaderDict()
        # TODO add cookie handling
        if accept_content_types:
            for accept_content_type in accept_content_types:
                _headers.add('Accept', accept_content_type)
        method = 'post'.upper()
        _headers.add('Content-Type', content_type)
    
        if body is schemas.unset:
            raise exceptions.ApiValueError(
                'The required body parameter has an invalid value of: unset. Set a valid value instead')
        _fields = None
        _body = None
        request_before_hook(
            resource_path=used_path,
            method=method,
            configuration=self.api_client.configuration,
            path_template='/integrations/oauth_url',
            body=body,
            auth_settings=_auth,
            headers=_headers,
        )
        serialized_data = request_body_o_auth_url_request.serialize(body, content_type)
        if 'fields' in serialized_data:
            _fields = serialized_data['fields']
        elif 'body' in serialized_data:
            _body = serialized_data['body']
    
        response = await self.api_client.async_call_api(
            resource_path=used_path,
            method=method,
            headers=_headers,
            fields=_fields,
            serialized_body=_body,
            body=body,
            auth_settings=_auth,
            timeout=timeout,
            **kwargs
        )
    
        if stream:
            if not 200 <= response.http_response.status <= 299:
                body = (await response.http_response.content.read()).decode("utf-8")
                raise exceptions.ApiStreamingException(
                    status=response.http_response.status,
                    reason=response.http_response.reason,
                    body=body,
                )
    
            async def stream_iterator():
                """
                iterates over response.http_response.content and closes connection once iteration has finished
                """
                async for line in response.http_response.content:
                    if line == b'\r\n':
                        continue
                    yield line
                response.http_response.close()
                await response.session.close()
            return AsyncGeneratorResponse(
                content=stream_iterator(),
                headers=response.http_response.headers,
                status=response.http_response.status,
                response=response.http_response
            )
    
        response_for_status = _status_code_to_response.get(str(response.http_response.status))
        if response_for_status:
            api_response = await response_for_status.deserialize_async(
                                                    response,
                                                    self.api_client.configuration,
                                                    skip_deserialization=skip_deserialization
                                                )
        else:
            # If response data is JSON then deserialize for SDK consumer convenience
            is_json = api_client.JSONDetector._content_type_is_json(response.http_response.headers.get('Content-Type', ''))
            api_response = api_client.ApiResponseWithoutDeserializationAsync(
                body=await response.http_response.json() if is_json else await response.http_response.text(),
                response=response.http_response,
                round_trip_time=response.round_trip_time,
                status=response.http_response.status,
                headers=response.http_response.headers,
            )
    
        if not 200 <= api_response.status <= 299:
            raise exceptions.ApiException(api_response=api_response)
    
        # cleanup session / response
        response.http_response.close()
        await response.session.close()
    
        return api_response


    def _get_oauth_url_oapg(
        self,
        body: typing.Any = None,
        skip_deserialization: bool = True,
        timeout: typing.Optional[typing.Union[float, typing.Tuple]] = None,
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        content_type: str = 'application/json',
        stream: bool = False,
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """
        Get Oauth Url
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        used_path = path.value
    
        _headers = HTTPHeaderDict()
        # TODO add cookie handling
        if accept_content_types:
            for accept_content_type in accept_content_types:
                _headers.add('Accept', accept_content_type)
        method = 'post'.upper()
        _headers.add('Content-Type', content_type)
    
        if body is schemas.unset:
            raise exceptions.ApiValueError(
                'The required body parameter has an invalid value of: unset. Set a valid value instead')
        _fields = None
        _body = None
        request_before_hook(
            resource_path=used_path,
            method=method,
            configuration=self.api_client.configuration,
            path_template='/integrations/oauth_url',
            body=body,
            auth_settings=_auth,
            headers=_headers,
        )
        serialized_data = request_body_o_auth_url_request.serialize(body, content_type)
        if 'fields' in serialized_data:
            _fields = serialized_data['fields']
        elif 'body' in serialized_data:
            _body = serialized_data['body']
    
        response = self.api_client.call_api(
            resource_path=used_path,
            method=method,
            headers=_headers,
            fields=_fields,
            serialized_body=_body,
            body=body,
            auth_settings=_auth,
            timeout=timeout,
        )
    
        response_for_status = _status_code_to_response.get(str(response.http_response.status))
        if response_for_status:
            api_response = response_for_status.deserialize(
                                                    response,
                                                    self.api_client.configuration,
                                                    skip_deserialization=skip_deserialization
                                                )
        else:
            # If response data is JSON then deserialize for SDK consumer convenience
            is_json = api_client.JSONDetector._content_type_is_json(response.http_response.headers.get('Content-Type', ''))
            api_response = api_client.ApiResponseWithoutDeserialization(
                body=json.loads(response.http_response.data) if is_json else response.http_response.data,
                response=response.http_response,
                round_trip_time=response.round_trip_time,
                status=response.http_response.status,
                headers=response.http_response.headers,
            )
    
        if not 200 <= api_response.status <= 299:
            raise exceptions.ApiException(api_response=api_response)
    
        return api_response


class GetOauthUrlRaw(BaseApi):
    # this class is used by api classes that refer to endpoints with operationId fn names

    async def aget_oauth_url(
        self,
        service: DataSourceType,
        tags: typing.Optional[typing.Union[bool, date, datetime, dict, float, int, list, str, None]] = None,
        scope: typing.Optional[typing.Optional[str]] = None,
        chunk_size: typing.Optional[typing.Optional[int]] = None,
        chunk_overlap: typing.Optional[typing.Optional[int]] = None,
        skip_embedding_generation: typing.Optional[typing.Optional[bool]] = None,
        embedding_model: typing.Optional[EmbeddingGeneratorsNullable] = None,
        zendesk_subdomain: typing.Optional[typing.Optional[str]] = None,
        microsoft_tenant: typing.Optional[typing.Optional[str]] = None,
        sharepoint_site_name: typing.Optional[typing.Optional[str]] = None,
        confluence_subdomain: typing.Optional[typing.Optional[str]] = None,
        generate_sparse_vectors: typing.Optional[typing.Optional[bool]] = None,
        prepend_filename_to_chunks: typing.Optional[typing.Optional[bool]] = None,
        max_items_per_chunk: typing.Optional[typing.Optional[int]] = None,
        salesforce_domain: typing.Optional[typing.Optional[str]] = None,
        sync_files_on_connection: typing.Optional[typing.Optional[bool]] = None,
        set_page_as_boundary: typing.Optional[bool] = None,
        data_source_id: typing.Optional[typing.Optional[int]] = None,
        connecting_new_account: typing.Optional[typing.Optional[bool]] = None,
        request_id: typing.Optional[typing.Optional[str]] = None,
        use_ocr: typing.Optional[typing.Optional[bool]] = None,
        parse_pdf_tables_with_ocr: typing.Optional[typing.Optional[bool]] = None,
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._get_oauth_url_mapped_args(
            service=service,
            tags=tags,
            scope=scope,
            chunk_size=chunk_size,
            chunk_overlap=chunk_overlap,
            skip_embedding_generation=skip_embedding_generation,
            embedding_model=embedding_model,
            zendesk_subdomain=zendesk_subdomain,
            microsoft_tenant=microsoft_tenant,
            sharepoint_site_name=sharepoint_site_name,
            confluence_subdomain=confluence_subdomain,
            generate_sparse_vectors=generate_sparse_vectors,
            prepend_filename_to_chunks=prepend_filename_to_chunks,
            max_items_per_chunk=max_items_per_chunk,
            salesforce_domain=salesforce_domain,
            sync_files_on_connection=sync_files_on_connection,
            set_page_as_boundary=set_page_as_boundary,
            data_source_id=data_source_id,
            connecting_new_account=connecting_new_account,
            request_id=request_id,
            use_ocr=use_ocr,
            parse_pdf_tables_with_ocr=parse_pdf_tables_with_ocr,
        )
        return await self._aget_oauth_url_oapg(
            body=args.body,
            **kwargs,
        )
    
    def get_oauth_url(
        self,
        service: DataSourceType,
        tags: typing.Optional[typing.Union[bool, date, datetime, dict, float, int, list, str, None]] = None,
        scope: typing.Optional[typing.Optional[str]] = None,
        chunk_size: typing.Optional[typing.Optional[int]] = None,
        chunk_overlap: typing.Optional[typing.Optional[int]] = None,
        skip_embedding_generation: typing.Optional[typing.Optional[bool]] = None,
        embedding_model: typing.Optional[EmbeddingGeneratorsNullable] = None,
        zendesk_subdomain: typing.Optional[typing.Optional[str]] = None,
        microsoft_tenant: typing.Optional[typing.Optional[str]] = None,
        sharepoint_site_name: typing.Optional[typing.Optional[str]] = None,
        confluence_subdomain: typing.Optional[typing.Optional[str]] = None,
        generate_sparse_vectors: typing.Optional[typing.Optional[bool]] = None,
        prepend_filename_to_chunks: typing.Optional[typing.Optional[bool]] = None,
        max_items_per_chunk: typing.Optional[typing.Optional[int]] = None,
        salesforce_domain: typing.Optional[typing.Optional[str]] = None,
        sync_files_on_connection: typing.Optional[typing.Optional[bool]] = None,
        set_page_as_boundary: typing.Optional[bool] = None,
        data_source_id: typing.Optional[typing.Optional[int]] = None,
        connecting_new_account: typing.Optional[typing.Optional[bool]] = None,
        request_id: typing.Optional[typing.Optional[str]] = None,
        use_ocr: typing.Optional[typing.Optional[bool]] = None,
        parse_pdf_tables_with_ocr: typing.Optional[typing.Optional[bool]] = None,
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        args = self._get_oauth_url_mapped_args(
            service=service,
            tags=tags,
            scope=scope,
            chunk_size=chunk_size,
            chunk_overlap=chunk_overlap,
            skip_embedding_generation=skip_embedding_generation,
            embedding_model=embedding_model,
            zendesk_subdomain=zendesk_subdomain,
            microsoft_tenant=microsoft_tenant,
            sharepoint_site_name=sharepoint_site_name,
            confluence_subdomain=confluence_subdomain,
            generate_sparse_vectors=generate_sparse_vectors,
            prepend_filename_to_chunks=prepend_filename_to_chunks,
            max_items_per_chunk=max_items_per_chunk,
            salesforce_domain=salesforce_domain,
            sync_files_on_connection=sync_files_on_connection,
            set_page_as_boundary=set_page_as_boundary,
            data_source_id=data_source_id,
            connecting_new_account=connecting_new_account,
            request_id=request_id,
            use_ocr=use_ocr,
            parse_pdf_tables_with_ocr=parse_pdf_tables_with_ocr,
        )
        return self._get_oauth_url_oapg(
            body=args.body,
        )

class GetOauthUrl(BaseApi):

    async def aget_oauth_url(
        self,
        service: DataSourceType,
        tags: typing.Optional[typing.Union[bool, date, datetime, dict, float, int, list, str, None]] = None,
        scope: typing.Optional[typing.Optional[str]] = None,
        chunk_size: typing.Optional[typing.Optional[int]] = None,
        chunk_overlap: typing.Optional[typing.Optional[int]] = None,
        skip_embedding_generation: typing.Optional[typing.Optional[bool]] = None,
        embedding_model: typing.Optional[EmbeddingGeneratorsNullable] = None,
        zendesk_subdomain: typing.Optional[typing.Optional[str]] = None,
        microsoft_tenant: typing.Optional[typing.Optional[str]] = None,
        sharepoint_site_name: typing.Optional[typing.Optional[str]] = None,
        confluence_subdomain: typing.Optional[typing.Optional[str]] = None,
        generate_sparse_vectors: typing.Optional[typing.Optional[bool]] = None,
        prepend_filename_to_chunks: typing.Optional[typing.Optional[bool]] = None,
        max_items_per_chunk: typing.Optional[typing.Optional[int]] = None,
        salesforce_domain: typing.Optional[typing.Optional[str]] = None,
        sync_files_on_connection: typing.Optional[typing.Optional[bool]] = None,
        set_page_as_boundary: typing.Optional[bool] = None,
        data_source_id: typing.Optional[typing.Optional[int]] = None,
        connecting_new_account: typing.Optional[typing.Optional[bool]] = None,
        request_id: typing.Optional[typing.Optional[str]] = None,
        use_ocr: typing.Optional[typing.Optional[bool]] = None,
        parse_pdf_tables_with_ocr: typing.Optional[typing.Optional[bool]] = None,
        validate: bool = False,
        **kwargs,
    ) -> OuthURLResponsePydantic:
        raw_response = await self.raw.aget_oauth_url(
            service=service,
            tags=tags,
            scope=scope,
            chunk_size=chunk_size,
            chunk_overlap=chunk_overlap,
            skip_embedding_generation=skip_embedding_generation,
            embedding_model=embedding_model,
            zendesk_subdomain=zendesk_subdomain,
            microsoft_tenant=microsoft_tenant,
            sharepoint_site_name=sharepoint_site_name,
            confluence_subdomain=confluence_subdomain,
            generate_sparse_vectors=generate_sparse_vectors,
            prepend_filename_to_chunks=prepend_filename_to_chunks,
            max_items_per_chunk=max_items_per_chunk,
            salesforce_domain=salesforce_domain,
            sync_files_on_connection=sync_files_on_connection,
            set_page_as_boundary=set_page_as_boundary,
            data_source_id=data_source_id,
            connecting_new_account=connecting_new_account,
            request_id=request_id,
            use_ocr=use_ocr,
            parse_pdf_tables_with_ocr=parse_pdf_tables_with_ocr,
            **kwargs,
        )
        if validate:
            return OuthURLResponsePydantic(**raw_response.body)
        return api_client.construct_model_instance(OuthURLResponsePydantic, raw_response.body)
    
    
    def get_oauth_url(
        self,
        service: DataSourceType,
        tags: typing.Optional[typing.Union[bool, date, datetime, dict, float, int, list, str, None]] = None,
        scope: typing.Optional[typing.Optional[str]] = None,
        chunk_size: typing.Optional[typing.Optional[int]] = None,
        chunk_overlap: typing.Optional[typing.Optional[int]] = None,
        skip_embedding_generation: typing.Optional[typing.Optional[bool]] = None,
        embedding_model: typing.Optional[EmbeddingGeneratorsNullable] = None,
        zendesk_subdomain: typing.Optional[typing.Optional[str]] = None,
        microsoft_tenant: typing.Optional[typing.Optional[str]] = None,
        sharepoint_site_name: typing.Optional[typing.Optional[str]] = None,
        confluence_subdomain: typing.Optional[typing.Optional[str]] = None,
        generate_sparse_vectors: typing.Optional[typing.Optional[bool]] = None,
        prepend_filename_to_chunks: typing.Optional[typing.Optional[bool]] = None,
        max_items_per_chunk: typing.Optional[typing.Optional[int]] = None,
        salesforce_domain: typing.Optional[typing.Optional[str]] = None,
        sync_files_on_connection: typing.Optional[typing.Optional[bool]] = None,
        set_page_as_boundary: typing.Optional[bool] = None,
        data_source_id: typing.Optional[typing.Optional[int]] = None,
        connecting_new_account: typing.Optional[typing.Optional[bool]] = None,
        request_id: typing.Optional[typing.Optional[str]] = None,
        use_ocr: typing.Optional[typing.Optional[bool]] = None,
        parse_pdf_tables_with_ocr: typing.Optional[typing.Optional[bool]] = None,
        validate: bool = False,
    ) -> OuthURLResponsePydantic:
        raw_response = self.raw.get_oauth_url(
            service=service,
            tags=tags,
            scope=scope,
            chunk_size=chunk_size,
            chunk_overlap=chunk_overlap,
            skip_embedding_generation=skip_embedding_generation,
            embedding_model=embedding_model,
            zendesk_subdomain=zendesk_subdomain,
            microsoft_tenant=microsoft_tenant,
            sharepoint_site_name=sharepoint_site_name,
            confluence_subdomain=confluence_subdomain,
            generate_sparse_vectors=generate_sparse_vectors,
            prepend_filename_to_chunks=prepend_filename_to_chunks,
            max_items_per_chunk=max_items_per_chunk,
            salesforce_domain=salesforce_domain,
            sync_files_on_connection=sync_files_on_connection,
            set_page_as_boundary=set_page_as_boundary,
            data_source_id=data_source_id,
            connecting_new_account=connecting_new_account,
            request_id=request_id,
            use_ocr=use_ocr,
            parse_pdf_tables_with_ocr=parse_pdf_tables_with_ocr,
        )
        if validate:
            return OuthURLResponsePydantic(**raw_response.body)
        return api_client.construct_model_instance(OuthURLResponsePydantic, raw_response.body)


class ApiForpost(BaseApi):
    # this class is used by api classes that refer to endpoints by path and http method names

    async def apost(
        self,
        service: DataSourceType,
        tags: typing.Optional[typing.Union[bool, date, datetime, dict, float, int, list, str, None]] = None,
        scope: typing.Optional[typing.Optional[str]] = None,
        chunk_size: typing.Optional[typing.Optional[int]] = None,
        chunk_overlap: typing.Optional[typing.Optional[int]] = None,
        skip_embedding_generation: typing.Optional[typing.Optional[bool]] = None,
        embedding_model: typing.Optional[EmbeddingGeneratorsNullable] = None,
        zendesk_subdomain: typing.Optional[typing.Optional[str]] = None,
        microsoft_tenant: typing.Optional[typing.Optional[str]] = None,
        sharepoint_site_name: typing.Optional[typing.Optional[str]] = None,
        confluence_subdomain: typing.Optional[typing.Optional[str]] = None,
        generate_sparse_vectors: typing.Optional[typing.Optional[bool]] = None,
        prepend_filename_to_chunks: typing.Optional[typing.Optional[bool]] = None,
        max_items_per_chunk: typing.Optional[typing.Optional[int]] = None,
        salesforce_domain: typing.Optional[typing.Optional[str]] = None,
        sync_files_on_connection: typing.Optional[typing.Optional[bool]] = None,
        set_page_as_boundary: typing.Optional[bool] = None,
        data_source_id: typing.Optional[typing.Optional[int]] = None,
        connecting_new_account: typing.Optional[typing.Optional[bool]] = None,
        request_id: typing.Optional[typing.Optional[str]] = None,
        use_ocr: typing.Optional[typing.Optional[bool]] = None,
        parse_pdf_tables_with_ocr: typing.Optional[typing.Optional[bool]] = None,
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._get_oauth_url_mapped_args(
            service=service,
            tags=tags,
            scope=scope,
            chunk_size=chunk_size,
            chunk_overlap=chunk_overlap,
            skip_embedding_generation=skip_embedding_generation,
            embedding_model=embedding_model,
            zendesk_subdomain=zendesk_subdomain,
            microsoft_tenant=microsoft_tenant,
            sharepoint_site_name=sharepoint_site_name,
            confluence_subdomain=confluence_subdomain,
            generate_sparse_vectors=generate_sparse_vectors,
            prepend_filename_to_chunks=prepend_filename_to_chunks,
            max_items_per_chunk=max_items_per_chunk,
            salesforce_domain=salesforce_domain,
            sync_files_on_connection=sync_files_on_connection,
            set_page_as_boundary=set_page_as_boundary,
            data_source_id=data_source_id,
            connecting_new_account=connecting_new_account,
            request_id=request_id,
            use_ocr=use_ocr,
            parse_pdf_tables_with_ocr=parse_pdf_tables_with_ocr,
        )
        return await self._aget_oauth_url_oapg(
            body=args.body,
            **kwargs,
        )
    
    def post(
        self,
        service: DataSourceType,
        tags: typing.Optional[typing.Union[bool, date, datetime, dict, float, int, list, str, None]] = None,
        scope: typing.Optional[typing.Optional[str]] = None,
        chunk_size: typing.Optional[typing.Optional[int]] = None,
        chunk_overlap: typing.Optional[typing.Optional[int]] = None,
        skip_embedding_generation: typing.Optional[typing.Optional[bool]] = None,
        embedding_model: typing.Optional[EmbeddingGeneratorsNullable] = None,
        zendesk_subdomain: typing.Optional[typing.Optional[str]] = None,
        microsoft_tenant: typing.Optional[typing.Optional[str]] = None,
        sharepoint_site_name: typing.Optional[typing.Optional[str]] = None,
        confluence_subdomain: typing.Optional[typing.Optional[str]] = None,
        generate_sparse_vectors: typing.Optional[typing.Optional[bool]] = None,
        prepend_filename_to_chunks: typing.Optional[typing.Optional[bool]] = None,
        max_items_per_chunk: typing.Optional[typing.Optional[int]] = None,
        salesforce_domain: typing.Optional[typing.Optional[str]] = None,
        sync_files_on_connection: typing.Optional[typing.Optional[bool]] = None,
        set_page_as_boundary: typing.Optional[bool] = None,
        data_source_id: typing.Optional[typing.Optional[int]] = None,
        connecting_new_account: typing.Optional[typing.Optional[bool]] = None,
        request_id: typing.Optional[typing.Optional[str]] = None,
        use_ocr: typing.Optional[typing.Optional[bool]] = None,
        parse_pdf_tables_with_ocr: typing.Optional[typing.Optional[bool]] = None,
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        args = self._get_oauth_url_mapped_args(
            service=service,
            tags=tags,
            scope=scope,
            chunk_size=chunk_size,
            chunk_overlap=chunk_overlap,
            skip_embedding_generation=skip_embedding_generation,
            embedding_model=embedding_model,
            zendesk_subdomain=zendesk_subdomain,
            microsoft_tenant=microsoft_tenant,
            sharepoint_site_name=sharepoint_site_name,
            confluence_subdomain=confluence_subdomain,
            generate_sparse_vectors=generate_sparse_vectors,
            prepend_filename_to_chunks=prepend_filename_to_chunks,
            max_items_per_chunk=max_items_per_chunk,
            salesforce_domain=salesforce_domain,
            sync_files_on_connection=sync_files_on_connection,
            set_page_as_boundary=set_page_as_boundary,
            data_source_id=data_source_id,
            connecting_new_account=connecting_new_account,
            request_id=request_id,
            use_ocr=use_ocr,
            parse_pdf_tables_with_ocr=parse_pdf_tables_with_ocr,
        )
        return self._get_oauth_url_oapg(
            body=args.body,
        )

