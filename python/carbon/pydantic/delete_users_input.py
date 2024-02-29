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
from pydantic import BaseModel, Field, RootModel

from carbon.pydantic.delete_users_input_customer_ids import DeleteUsersInputCustomerIds

class DeleteUsersInput(BaseModel):
    customer_ids: DeleteUsersInputCustomerIds = Field(alias='customer_ids')
    class Config:
        arbitrary_types_allowed = True
