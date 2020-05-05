// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upvote_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpvoteModel extends UpvoteModel {
  @override
  final int hearts;
  @override
  final int thumbsUp;

  factory _$UpvoteModel([void Function(UpvoteModelBuilder) updates]) =>
      (new UpvoteModelBuilder()..update(updates)).build();

  _$UpvoteModel._({this.hearts, this.thumbsUp}) : super._() {
    if (hearts == null) {
      throw new BuiltValueNullFieldError('UpvoteModel', 'hearts');
    }
    if (thumbsUp == null) {
      throw new BuiltValueNullFieldError('UpvoteModel', 'thumbsUp');
    }
  }

  @override
  UpvoteModel rebuild(void Function(UpvoteModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpvoteModelBuilder toBuilder() => new UpvoteModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpvoteModel &&
        hearts == other.hearts &&
        thumbsUp == other.thumbsUp;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, hearts.hashCode), thumbsUp.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpvoteModel')
          ..add('hearts', hearts)
          ..add('thumbsUp', thumbsUp))
        .toString();
  }
}

class UpvoteModelBuilder implements Builder<UpvoteModel, UpvoteModelBuilder> {
  _$UpvoteModel _$v;

  int _hearts;
  int get hearts => _$this._hearts;
  set hearts(int hearts) => _$this._hearts = hearts;

  int _thumbsUp;
  int get thumbsUp => _$this._thumbsUp;
  set thumbsUp(int thumbsUp) => _$this._thumbsUp = thumbsUp;

  UpvoteModelBuilder();

  UpvoteModelBuilder get _$this {
    if (_$v != null) {
      _hearts = _$v.hearts;
      _thumbsUp = _$v.thumbsUp;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpvoteModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UpvoteModel;
  }

  @override
  void update(void Function(UpvoteModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpvoteModel build() {
    final _$result =
        _$v ?? new _$UpvoteModel._(hearts: hearts, thumbsUp: thumbsUp);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
