// import 'pageviews_model.dart';
// import 'quote_summary_model.dart';

// class Result {
//   Result({
//     this.language,
//     this.region,
//     this.quoteType,
//     this.quoteSourceName,
//     this.triggerable,
//     this.quoteSummary,
//     this.currency,
//     this.exDividendDate,
//     this.earningsTimestamp,
//     this.earningsTimestampStart,
//     this.earningsTimestampEnd,
//     this.trailingPe,
//     this.pegRatio,
//     this.dividendsPerShare,
//     this.revenue,
//     this.priceToSales,
//     this.marketState,
//     this.epsTrailingTwelveMonths,
//     this.epsForward,
//     this.epsCurrentYear,
//     this.epsNextQuarter,
//     this.priceEpsCurrentYear,
//     this.priceEpsNextQuarter,
//     this.sharesOutstanding,
//     this.bookValue,
//     this.fiftyDayAverage,
//     this.fiftyDayAverageChange,
//     this.fiftyDayAverageChangePercent,
//     this.twoHundredDayAverage,
//     this.twoHundredDayAverageChange,
//     this.twoHundredDayAverageChangePercent,
//     this.marketCap,
//     this.forwardPe,
//     this.priceToBook,
//     this.sourceInterval,
//     this.exchangeDataDelayedBy,
//     this.exchangeTimezoneName,
//     this.exchangeTimezoneShortName,
//     this.pageViews,
//     this.gmtOffSetMilliseconds,
//     this.esgPopulated,
//     this.tradeable,
//     this.firstTradeDateMilliseconds,
//     this.priceHint,
//     this.totalCash,
//     this.floatShares,
//     this.ebitda,
//     this.shortRatio,
//     this.targetPriceHigh,
//     this.targetPriceLow,
//     this.targetPriceMean,
//     this.targetPriceMedian,
//     this.heldPercentInsiders,
//     this.heldPercentInstitutions,
//     this.postMarketChangePercent,
//     this.postMarketTime,
//     this.postMarketPrice,
//     this.postMarketChange,
//     this.regularMarketChange,
//     this.regularMarketChangePercent,
//     this.regularMarketTime,
//     this.regularMarketPrice,
//     this.regularMarketDayHigh,
//     this.regularMarketDayRange,
//     this.regularMarketDayLow,
//     this.regularMarketVolume,
//     this.sharesShort,
//     this.sharesShortPrevMonth,
//     this.shortPercentFloat,
//     this.regularMarketPreviousClose,
//     this.bid,
//     this.ask,
//     this.bidSize,
//     this.askSize,
//     this.exchange,
//     this.market,
//     this.messageBoardId,
//     this.fullExchangeName,
//     this.shortName,
//     this.longName,
//     this.regularMarketOpen,
//     this.averageDailyVolume3Month,
//     this.averageDailyVolume10Day,
//     this.beta,
//     this.fiftyTwoWeekLowChange,
//     this.fiftyTwoWeekLowChangePercent,
//     this.fiftyTwoWeekRange,
//     this.fiftyTwoWeekHighChange,
//     this.fiftyTwoWeekHighChangePercent,
//     this.fiftyTwoWeekLow,
//     this.fiftyTwoWeekHigh,
//     this.components,
//     this.symbol,
//     this.trailingAnnualDividendRate,
//     this.dividendRate,
//     this.trailingAnnualDividendYield,
//     this.dividendYield,
//     this.dividendDate,
//   });

//   String? language;
//   String? region;
//   String? quoteType;
//   String? quoteSourceName;
//   bool? triggerable;
//   QuoteSummary? quoteSummary;
//   String? currency;
//   int? exDividendDate;
//   int? earningsTimestamp;
//   int? earningsTimestampStart;
//   int? earningsTimestampEnd;
//   double? trailingPe;
//   double? pegRatio;
//   double? dividendsPerShare;
//   int? revenue;
//   double? priceToSales;
//   String? marketState;
//   double? epsTrailingTwelveMonths;
//   double? epsForward;
//   double? epsCurrentYear;
//   double? epsNextQuarter;
//   double? priceEpsCurrentYear;
//   double? priceEpsNextQuarter;
//   int? sharesOutstanding;
//   double? bookValue;
//   double? fiftyDayAverage;
//   double? fiftyDayAverageChange;
//   double? fiftyDayAverageChangePercent;
//   double? twoHundredDayAverage;
//   double? twoHundredDayAverageChange;
//   double? twoHundredDayAverageChangePercent;
//   int? marketCap;
//   double? forwardPe;
//   double? priceToBook;
//   int? sourceInterval;
//   int? exchangeDataDelayedBy;
//   String? exchangeTimezoneName;
//   String? exchangeTimezoneShortName;
//   PageViews? pageViews;
//   int? gmtOffSetMilliseconds;
//   bool? esgPopulated;
//   bool? tradeable;
//   int? firstTradeDateMilliseconds;
//   int? priceHint;
//   int? totalCash;
//   int? floatShares;
//   int? ebitda;
//   double? shortRatio;
//   double? targetPriceHigh;
//   int? targetPriceLow;
//   double? targetPriceMean;
//   double? targetPriceMedian;
//   double? heldPercentInsiders;
//   double? heldPercentInstitutions;
//   double? postMarketChangePercent;
//   int? postMarketTime;
//   double? postMarketPrice;
//   double? postMarketChange;
//   double? regularMarketChange;
//   double? regularMarketChangePercent;
//   int? regularMarketTime;
//   double? regularMarketPrice;
//   double? regularMarketDayHigh;
//   String? regularMarketDayRange;
//   double? regularMarketDayLow;
//   int? regularMarketVolume;
//   int? sharesShort;
//   int? sharesShortPrevMonth;
//   double? shortPercentFloat;
//   double? regularMarketPreviousClose;
//   double? bid;
//   double? ask;
//   int? bidSize;
//   int? askSize;
//   String? exchange;
//   String? market;
//   String? messageBoardId;
//   String? fullExchangeName;
//   String? shortName;
//   String? longName;
//   double? regularMarketOpen;
//   int? averageDailyVolume3Month;
//   int? averageDailyVolume10Day;
//   double? beta;
//   double? fiftyTwoWeekLowChange;
//   double? fiftyTwoWeekLowChangePercent;
//   String? fiftyTwoWeekRange;
//   double? fiftyTwoWeekHighChange;
//   double? fiftyTwoWeekHighChangePercent;
//   double? fiftyTwoWeekLow;
//   double? fiftyTwoWeekHigh;
//   List<String>? components;
//   String? symbol;
//   double? trailingAnnualDividendRate;
//   double? dividendRate;
//   double? trailingAnnualDividendYield;
//   double? dividendYield;
//   int? dividendDate;
// }
