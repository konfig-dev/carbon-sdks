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

from carbon.pydantic.webhook_status import WebhookStatus

class Webhook(BaseModel):
    id: int = Field(alias='id')

    organization_id: int = Field(alias='organization_id')

    url: str = Field(alias='url')

    signing_key: str = Field(alias='signing_key')

    status: WebhookStatus = Field(alias='status')

    created_at: datetime = Field(alias='created_at')

    updated_at: datetime = Field(alias='updated_at')

    status_reason: typing.Optional[typing.Optional[str]] = Field(None, alias='status_reason')

    model_config = ConfigDict(
        protected_namespaces=(),
        arbitrary_types_allowed=True
    )
