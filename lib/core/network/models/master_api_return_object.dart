abstract class MasterApiReturnObject<T> {
  T fromMap(dynamic dynamicData);
  Map<String, dynamic>? toMap(T object);
}
