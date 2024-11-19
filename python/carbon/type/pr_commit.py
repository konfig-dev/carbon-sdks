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

from carbon.type.commit import Commit
from carbon.type.user_nullable import UserNullable

class RequiredPRCommit(TypedDict):
    commit: Commit

    url: str

    author: typing.Optional[UserNullable]

    committer: typing.Optional[UserNullable]

    remote_data: typing.Optional[typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]]

class OptionalPRCommit(TypedDict, total=False):
    pass

class PRCommit(RequiredPRCommit, OptionalPRCommit):
    pass