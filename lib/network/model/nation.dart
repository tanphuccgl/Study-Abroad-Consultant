// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

import 'package:study_abroad_consultant/network/model/common/base_model.dart';

class WNation extends BaseModel {
  // ignore: annotate_overrides, overridden_fields
  String id;
  String quocgia;
  String ngonngu;
  String hethonggiaoduc;
  List<String> thanhpho;
  List<String> truongdaihoc;
  WNation({
    required this.id,
    required this.quocgia,
    required this.ngonngu,
    required this.hethonggiaoduc,
    required this.thanhpho,
    required this.truongdaihoc,
  });

  WNation copyWith({
    String? id,
    String? quocgia,
    String? ngonngu,
    String? hethonggiaoduc,
    List<String>? thanhpho,
    List<String>? truongdaihoc,
  }) {
    return WNation(
      id: id ?? this.id,
      quocgia: quocgia ?? this.quocgia,
      ngonngu: ngonngu ?? this.ngonngu,
      hethonggiaoduc: hethonggiaoduc ?? this.hethonggiaoduc,
      thanhpho: thanhpho ?? this.thanhpho,
      truongdaihoc: truongdaihoc ?? this.truongdaihoc,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'quocgia': quocgia,
      'ngonngu': ngonngu,
      'hethonggiaoduc': hethonggiaoduc,
      'thanhpho': thanhpho,
      'truongdaihoc': truongdaihoc,
    };
  }

  factory WNation.fromMap(Map<String, dynamic> map, {String? id}) {
    return WNation(
        id: map['id'] as String,
        quocgia: map['quocgia'] as String,
        ngonngu: map['ngonngu'] as String,
        hethonggiaoduc: map['hethonggiaoduc'] as String,
        thanhpho: List<String>.from(map['thanhpho'] as List<String>),
        truongdaihoc: List<String>.from(
          (map['truongdaihoc'] as List<String>),
        ));
  }

  factory WNation.fromDocument(DocumentSnapshot document) {
    return WNation.fromMap(
      document.data() as Map<String, dynamic>,
      id: document.id,
    );
  }

  String toJson() => json.encode(toMap());

  factory WNation.fromJson(String source) =>
      WNation.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'WNation(id: $id, quocgia: $quocgia, ngonngu: $ngonngu, hethonggiaoduc: $hethonggiaoduc, thanhpho: $thanhpho, truongdaihoc: $truongdaihoc)';
  }

  @override
  bool operator ==(covariant WNation other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.quocgia == quocgia &&
        other.ngonngu == ngonngu &&
        other.hethonggiaoduc == hethonggiaoduc &&
        listEquals(other.thanhpho, thanhpho) &&
        listEquals(other.truongdaihoc, truongdaihoc);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        quocgia.hashCode ^
        ngonngu.hashCode ^
        hethonggiaoduc.hashCode ^
        thanhpho.hashCode ^
        truongdaihoc.hashCode;
  }
}
