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

from carbon.pydantic.address import Address
from carbon.pydantic.email import Email
from carbon.pydantic.event import Event
from carbon.pydantic.partial_account_nullable import PartialAccountNullable
from carbon.pydantic.partial_owner_nullable import PartialOwnerNullable
from carbon.pydantic.phone_number import PhoneNumber
from carbon.pydantic.task import Task

class Contact(BaseModel):
    title: typing.Optional[str] = Field(alias='title')

    description: typing.Optional[str] = Field(alias='description')

    id: str = Field(alias='id')

    owner: PartialOwnerNullable = Field(alias='owner')

    first_name: typing.Optional[str] = Field(alias='first_name')

    last_name: typing.Optional[str] = Field(alias='last_name')

    name: typing.Optional[str] = Field(alias='name')

    department: typing.Optional[str] = Field(alias='department')

    addresses: typing.List[Address] = Field(alias='addresses')

    phone_numbers: typing.List[PhoneNumber] = Field(alias='phone_numbers')

    emails: typing.List[Email] = Field(alias='emails')

    account: PartialAccountNullable = Field(alias='account')

    last_activity_at: typing.Optional[str] = Field(alias='last_activity_at')

    created_at: str = Field(alias='created_at')

    updated_at: str = Field(alias='updated_at')

    is_deleted: bool = Field(alias='is_deleted')

    tasks: typing.Optional[typing.List[Task]] = Field(alias='tasks')

    events: typing.Optional[typing.List[Event]] = Field(alias='events')

    remote_data: typing.Optional[typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]] = Field(alias='remote_data')

    model_config = ConfigDict(
        protected_namespaces=(),
        arbitrary_types_allowed=True
    )