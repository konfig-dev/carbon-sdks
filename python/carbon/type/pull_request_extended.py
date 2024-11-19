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

from carbon.type.head_or_base import HeadOrBase
from carbon.type.label import Label
from carbon.type.pr_state import PRState
from carbon.type.team import Team
from carbon.type.user import User

class RequiredPullRequestExtended(TypedDict):
    title: str

    id: int

    url: str

    number: int

    state: PRState

    user: User

    created_at: str

    updated_at: str

    closed_at: typing.Optional[str]

    merged_at: typing.Optional[str]

    requested_reviewers: typing.List[User]

    requested_teams: typing.List[Team]

    labels: typing.List[Label]

    draft: bool

    head: HeadOrBase

    base: HeadOrBase

    remote_data: typing.Optional[typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]]

    merged: bool

    num_comments: int

    num_review_comments: int

    num_commits: int

    num_additions: int

    num_deletions: int

    num_changed_files: int

class OptionalPullRequestExtended(TypedDict, total=False):
    pass

class PullRequestExtended(RequiredPullRequestExtended, OptionalPullRequestExtended):
    pass