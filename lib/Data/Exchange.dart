class Exchange  {
  final String _base;
  final DateTime _date;
  final Map<String, dynamic> _rates;
  final String _error;

  Exchange({String base, DateTime date, Map<String, dynamic> rates, String error}) :
      _base = base, _date = date, _rates = rates, _error = error;

  factory Exchange.fromJson(Map<String, dynamic> json) {
    return Exchange(
      base: json["base"] ?? "",
      date: json["date"] != null ? DateTime.parse(json["date"]) : DateTime.now(),
      rates: json["rates"] ?? {},
      error: json["error"] ?? "NO-ERROR"
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Exchange : ["
        "$_base,"
        "$_date,"
        "$_rates,"
        "$_error]";
  }
}