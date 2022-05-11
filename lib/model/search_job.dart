import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'search_job.freezed.dart';
part 'search_job.g.dart';
part 'search_job.gform.dart';

@freezed
@ReactiveFormAnnotation()
class SearchJob with _$SearchJob {
  const factory SearchJob({
  @FormControlAnnotation() required int id,
  @FormControlAnnotation() String? product,
  @FormControlAnnotation() String? projectId,
  @FormControlAnnotation() DateTime? dateFrom,
  @FormControlAnnotation() DateTime? dateTo,
  @FormControlAnnotation() required List<Search> searches,
}) = _SearchJob;

factory SearchJob.fromJson(Map<String, dynamic> json) =>
_$SearchJobFromJson(json);
}

@freezed
class Search with _$Search {
  const factory Search({
    @FormControlAnnotation() required int id,
    @FormControlAnnotation() required String term,
    @FormControlAnnotation() Set<String> sources,
  }) = _Search;

  factory Search.fromJson(Map<String, dynamic> json) =>
      _$SearchFromJson(json);
}
