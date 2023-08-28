import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TipospizzasRecord extends FirestoreRecord {
  TipospizzasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "precioporcion" field.
  double? _precioporcion;
  double get precioporcion => _precioporcion ?? 0.0;
  bool hasPrecioporcion() => _precioporcion != null;

  // "preciobandeja4" field.
  double? _preciobandeja4;
  double get preciobandeja4 => _preciobandeja4 ?? 0.0;
  bool hasPreciobandeja4() => _preciobandeja4 != null;

  // "preciobandeja8" field.
  double? _preciobandeja8;
  double get preciobandeja8 => _preciobandeja8 ?? 0.0;
  bool hasPreciobandeja8() => _preciobandeja8 != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _precioporcion = castToType<double>(snapshotData['precioporcion']);
    _preciobandeja4 = castToType<double>(snapshotData['preciobandeja4']);
    _preciobandeja8 = castToType<double>(snapshotData['preciobandeja8']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tipospizzas');

  static Stream<TipospizzasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TipospizzasRecord.fromSnapshot(s));

  static Future<TipospizzasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TipospizzasRecord.fromSnapshot(s));

  static TipospizzasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TipospizzasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TipospizzasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TipospizzasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TipospizzasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TipospizzasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTipospizzasRecordData({
  String? nombre,
  String? descripcion,
  String? imagen,
  double? precioporcion,
  double? preciobandeja4,
  double? preciobandeja8,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'descripcion': descripcion,
      'imagen': imagen,
      'precioporcion': precioporcion,
      'preciobandeja4': preciobandeja4,
      'preciobandeja8': preciobandeja8,
    }.withoutNulls,
  );

  return firestoreData;
}

class TipospizzasRecordDocumentEquality implements Equality<TipospizzasRecord> {
  const TipospizzasRecordDocumentEquality();

  @override
  bool equals(TipospizzasRecord? e1, TipospizzasRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.descripcion == e2?.descripcion &&
        e1?.imagen == e2?.imagen &&
        e1?.precioporcion == e2?.precioporcion &&
        e1?.preciobandeja4 == e2?.preciobandeja4 &&
        e1?.preciobandeja8 == e2?.preciobandeja8;
  }

  @override
  int hash(TipospizzasRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.descripcion,
        e?.imagen,
        e?.precioporcion,
        e?.preciobandeja4,
        e?.preciobandeja8
      ]);

  @override
  bool isValidKey(Object? o) => o is TipospizzasRecord;
}
