class Exchange  {
  final String _result;
  final String _baseCode;
  final List<Map<String, double>> _conversionRates;
  final String _errorType;

  Exchange({
    String result,
    String baseCode,
    List<Map<String, double>> conversionRates,
    String errorType}) :
        _result = result,
        _baseCode = baseCode,
        _conversionRates = conversionRates,
        _errorType = errorType;

  factory Exchange.fromJson(Map<String, dynamic> json) {
    return Exchange(
      result: json["result"] ?? "error",
      baseCode: json["base_code"] ?? "",
      conversionRates: json["conversion_rates"] ?? [],
      errorType: json["error-type"] ?? "NO ERROR"
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Exchange : ["
        "$_result,"
        "$_baseCode,"
        "$_conversionRates,"
        "$_errorType]";
  }
}