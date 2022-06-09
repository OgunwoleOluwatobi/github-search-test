// Mocks generated by Mockito 5.1.0 from annotations
// in phonon_test/test/startup_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:phonon_test/core/data_sources/remote_data_source/remote_data_source.dart'
    as _i3;
import 'package:phonon_test/core/models/user.dart' as _i6;
import 'package:phonon_test/core/utils/exports.dart' as _i5;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [RemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockRemoteDataSource extends _i1.Mock implements _i3.RemoteDataSource {
  MockRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.AppError, List<_i6.User>?>> fetchUsers(
          String? name) =>
      (super.noSuchMethod(Invocation.method(#fetchUsers, [name]),
          returnValue: Future<_i2.Either<_i5.AppError, List<_i6.User>?>>.value(
              _FakeEither_0<_i5.AppError, List<_i6.User>?>())) as _i4
          .Future<_i2.Either<_i5.AppError, List<_i6.User>?>>);
}

/// A class which mocks [UsersResponse].
///
/// See the documentation for Mockito's code generation for more information.
class MockUsersResponse extends _i1.Mock implements _i6.UsersResponse {
  MockUsersResponse() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set totalCount(int? _totalCount) =>
      super.noSuchMethod(Invocation.setter(#totalCount, _totalCount),
          returnValueForMissingStub: null);
  @override
  set incompleteResults(bool? _incompleteResults) => super.noSuchMethod(
      Invocation.setter(#incompleteResults, _incompleteResults),
      returnValueForMissingStub: null);
  @override
  set items(List<_i6.User>? _items) =>
      super.noSuchMethod(Invocation.setter(#items, _items),
          returnValueForMissingStub: null);
  @override
  Map<String, dynamic> toJson() =>
      (super.noSuchMethod(Invocation.method(#toJson, []),
          returnValue: <String, dynamic>{}) as Map<String, dynamic>);
}

/// A class which mocks [User].
///
/// See the documentation for Mockito's code generation for more information.
class MockUser extends _i1.Mock implements _i6.User {
  MockUser() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set login(String? _login) =>
      super.noSuchMethod(Invocation.setter(#login, _login),
          returnValueForMissingStub: null);
  @override
  set id(int? _id) => super.noSuchMethod(Invocation.setter(#id, _id),
      returnValueForMissingStub: null);
  @override
  set nodeId(String? _nodeId) =>
      super.noSuchMethod(Invocation.setter(#nodeId, _nodeId),
          returnValueForMissingStub: null);
  @override
  set avatarUrl(String? _avatarUrl) =>
      super.noSuchMethod(Invocation.setter(#avatarUrl, _avatarUrl),
          returnValueForMissingStub: null);
  @override
  set gravatarId(String? _gravatarId) =>
      super.noSuchMethod(Invocation.setter(#gravatarId, _gravatarId),
          returnValueForMissingStub: null);
  @override
  set url(String? _url) => super.noSuchMethod(Invocation.setter(#url, _url),
      returnValueForMissingStub: null);
  @override
  set htmlUrl(String? _htmlUrl) =>
      super.noSuchMethod(Invocation.setter(#htmlUrl, _htmlUrl),
          returnValueForMissingStub: null);
  @override
  set followersUrl(String? _followersUrl) =>
      super.noSuchMethod(Invocation.setter(#followersUrl, _followersUrl),
          returnValueForMissingStub: null);
  @override
  set subscriptionsUrl(String? _subscriptionsUrl) => super.noSuchMethod(
      Invocation.setter(#subscriptionsUrl, _subscriptionsUrl),
      returnValueForMissingStub: null);
  @override
  set organizationsUrl(String? _organizationsUrl) => super.noSuchMethod(
      Invocation.setter(#organizationsUrl, _organizationsUrl),
      returnValueForMissingStub: null);
  @override
  set reposUrl(String? _reposUrl) =>
      super.noSuchMethod(Invocation.setter(#reposUrl, _reposUrl),
          returnValueForMissingStub: null);
  @override
  set receivedEventsUrl(String? _receivedEventsUrl) => super.noSuchMethod(
      Invocation.setter(#receivedEventsUrl, _receivedEventsUrl),
      returnValueForMissingStub: null);
  @override
  set type(String? _type) => super.noSuchMethod(Invocation.setter(#type, _type),
      returnValueForMissingStub: null);
  @override
  set score(double? _score) =>
      super.noSuchMethod(Invocation.setter(#score, _score),
          returnValueForMissingStub: null);
  @override
  set followingUrl(String? _followingUrl) =>
      super.noSuchMethod(Invocation.setter(#followingUrl, _followingUrl),
          returnValueForMissingStub: null);
  @override
  set gistsUrl(String? _gistsUrl) =>
      super.noSuchMethod(Invocation.setter(#gistsUrl, _gistsUrl),
          returnValueForMissingStub: null);
  @override
  set starredUrl(String? _starredUrl) =>
      super.noSuchMethod(Invocation.setter(#starredUrl, _starredUrl),
          returnValueForMissingStub: null);
  @override
  set eventsUrl(String? _eventsUrl) =>
      super.noSuchMethod(Invocation.setter(#eventsUrl, _eventsUrl),
          returnValueForMissingStub: null);
  @override
  set siteAdmin(bool? _siteAdmin) =>
      super.noSuchMethod(Invocation.setter(#siteAdmin, _siteAdmin),
          returnValueForMissingStub: null);
  @override
  Map<String, dynamic> toJson() =>
      (super.noSuchMethod(Invocation.method(#toJson, []),
          returnValue: <String, dynamic>{}) as Map<String, dynamic>);
}