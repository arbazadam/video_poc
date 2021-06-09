import 'financials_chart_quarterly_model.dart';
import 'yearly_model.dart';

class FinancialsChart {
  FinancialsChart({
    this.yearly,
    this.quarterly,
  });

  List<Yearly>? yearly;
  List<FinancialsChartQuarterly>? quarterly;
}
