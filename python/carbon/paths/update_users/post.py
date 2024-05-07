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
from carbon.model.data_source_type import DataSourceType as DataSourceTypeSchema
from carbon.model.update_users_input import UpdateUsersInput as UpdateUsersInputSchema
from carbon.model.update_users_input_customer_ids import UpdateUsersInputCustomerIds as UpdateUsersInputCustomerIdsSchema
from carbon.model.generic_success_response import GenericSuccessResponse as GenericSuccessResponseSchema

from carbon.type.http_validation_error import HTTPValidationError
from carbon.type.generic_success_response import GenericSuccessResponse
from carbon.type.data_source_type import DataSourceType
from carbon.type.update_users_input import UpdateUsersInput
from carbon.type.update_users_input_customer_ids import UpdateUsersInputCustomerIds

from ...api_client import Dictionary
from carbon.pydantic.data_source_type import DataSourceType as DataSourceTypePydantic
from carbon.pydantic.update_users_input_customer_ids import UpdateUsersInputCustomerIds as UpdateUsersInputCustomerIdsPydantic
from carbon.pydantic.http_validation_error import HTTPValidationError as HTTPValidationErrorPydantic
from carbon.pydantic.generic_success_response import GenericSuccessResponse as GenericSuccessResponsePydantic
from carbon.pydantic.update_users_input import UpdateUsersInput as UpdateUsersInputPydantic

from . import path

# body param
SchemaForRequestBodyApplicationJson = UpdateUsersInputSchema


request_body_update_users_input = api_client.RequestBody(
    content={
        'application/json': api_client.MediaType(
            schema=SchemaForRequestBodyApplicationJson),
    },
    required=True,
)
_auth = [
    'apiKey',
]
SchemaFor200ResponseBodyApplicationJson = GenericSuccessResponseSchema


@dataclass
class ApiResponseFor200(api_client.ApiResponse):
    body: GenericSuccessResponse


@dataclass
class ApiResponseFor200Async(api_client.AsyncApiResponse):
    body: GenericSuccessResponse


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
_status_code_to_response = {
    '200': _response_for_200,
    '422': _response_for_422,
}
_all_accept_content_types = (
    'application/json',
)


class BaseApi(api_client.Api):

    def _update_users_mapped_args(
        self,
        customer_ids: UpdateUsersInputCustomerIds,
        auto_sync_enabled_sources: typing.Optional[typing.Union[typing.List[DataSourceType], str]] = None,
        max_files: typing.Optional[typing.Optional[int]] = None,
        max_files_per_upload: typing.Optional[typing.Optional[int]] = None,
    ) -> api_client.MappedArgs:
        args: api_client.MappedArgs = api_client.MappedArgs()
        _body = {}
        if auto_sync_enabled_sources is not None:
            _body["auto_sync_enabled_sources"] = auto_sync_enabled_sources
        if max_files is not None:
            _body["max_files"] = max_files
        if max_files_per_upload is not None:
            _body["max_files_per_upload"] = max_files_per_upload
        if customer_ids is not None:
            _body["customer_ids"] = customer_ids
        args.body = _body
        return args

    async def _aupdate_users_oapg(
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
        Update Users
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
            path_template='/update_users',
            body=body,
            auth_settings=_auth,
            headers=_headers,
        )
        serialized_data = request_body_update_users_input.serialize(body, content_type)
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


    def _update_users_oapg(
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
        Update Users
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
            path_template='/update_users',
            body=body,
            auth_settings=_auth,
            headers=_headers,
        )
        serialized_data = request_body_update_users_input.serialize(body, content_type)
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


class UpdateUsersRaw(BaseApi):
    # this class is used by api classes that refer to endpoints with operationId fn names

    async def aupdate_users(
        self,
        customer_ids: UpdateUsersInputCustomerIds,
        auto_sync_enabled_sources: typing.Optional[typing.Union[typing.List[DataSourceType], str]] = None,
        max_files: typing.Optional[typing.Optional[int]] = None,
        max_files_per_upload: typing.Optional[typing.Optional[int]] = None,
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._update_users_mapped_args(
            customer_ids=customer_ids,
            auto_sync_enabled_sources=auto_sync_enabled_sources,
            max_files=max_files,
            max_files_per_upload=max_files_per_upload,
        )
        return await self._aupdate_users_oapg(
            body=args.body,
            **kwargs,
        )
    
    def update_users(
        self,
        customer_ids: UpdateUsersInputCustomerIds,
        auto_sync_enabled_sources: typing.Optional[typing.Union[typing.List[DataSourceType], str]] = None,
        max_files: typing.Optional[typing.Optional[int]] = None,
        max_files_per_upload: typing.Optional[typing.Optional[int]] = None,
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        args = self._update_users_mapped_args(
            customer_ids=customer_ids,
            auto_sync_enabled_sources=auto_sync_enabled_sources,
            max_files=max_files,
            max_files_per_upload=max_files_per_upload,
        )
        return self._update_users_oapg(
            body=args.body,
        )

class UpdateUsers(BaseApi):

    async def aupdate_users(
        self,
        customer_ids: UpdateUsersInputCustomerIds,
        auto_sync_enabled_sources: typing.Optional[typing.Union[typing.List[DataSourceType], str]] = None,
        max_files: typing.Optional[typing.Optional[int]] = None,
        max_files_per_upload: typing.Optional[typing.Optional[int]] = None,
        validate: bool = False,
        **kwargs,
    ) -> GenericSuccessResponsePydantic:
        raw_response = await self.raw.aupdate_users(
            customer_ids=customer_ids,
            auto_sync_enabled_sources=auto_sync_enabled_sources,
            max_files=max_files,
            max_files_per_upload=max_files_per_upload,
            **kwargs,
        )
        if validate:
            return GenericSuccessResponsePydantic(**raw_response.body)
        return api_client.construct_model_instance(GenericSuccessResponsePydantic, raw_response.body)
    
    
    def update_users(
        self,
        customer_ids: UpdateUsersInputCustomerIds,
        auto_sync_enabled_sources: typing.Optional[typing.Union[typing.List[DataSourceType], str]] = None,
        max_files: typing.Optional[typing.Optional[int]] = None,
        max_files_per_upload: typing.Optional[typing.Optional[int]] = None,
        validate: bool = False,
    ) -> GenericSuccessResponsePydantic:
        raw_response = self.raw.update_users(
            customer_ids=customer_ids,
            auto_sync_enabled_sources=auto_sync_enabled_sources,
            max_files=max_files,
            max_files_per_upload=max_files_per_upload,
        )
        if validate:
            return GenericSuccessResponsePydantic(**raw_response.body)
        return api_client.construct_model_instance(GenericSuccessResponsePydantic, raw_response.body)


class ApiForpost(BaseApi):
    # this class is used by api classes that refer to endpoints by path and http method names

    async def apost(
        self,
        customer_ids: UpdateUsersInputCustomerIds,
        auto_sync_enabled_sources: typing.Optional[typing.Union[typing.List[DataSourceType], str]] = None,
        max_files: typing.Optional[typing.Optional[int]] = None,
        max_files_per_upload: typing.Optional[typing.Optional[int]] = None,
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._update_users_mapped_args(
            customer_ids=customer_ids,
            auto_sync_enabled_sources=auto_sync_enabled_sources,
            max_files=max_files,
            max_files_per_upload=max_files_per_upload,
        )
        return await self._aupdate_users_oapg(
            body=args.body,
            **kwargs,
        )
    
    def post(
        self,
        customer_ids: UpdateUsersInputCustomerIds,
        auto_sync_enabled_sources: typing.Optional[typing.Union[typing.List[DataSourceType], str]] = None,
        max_files: typing.Optional[typing.Optional[int]] = None,
        max_files_per_upload: typing.Optional[typing.Optional[int]] = None,
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        args = self._update_users_mapped_args(
            customer_ids=customer_ids,
            auto_sync_enabled_sources=auto_sync_enabled_sources,
            max_files=max_files,
            max_files_per_upload=max_files_per_upload,
        )
        return self._update_users_oapg(
            body=args.body,
        )

