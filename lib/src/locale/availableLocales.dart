import 'package:jiffy/src/enums/startOfWeek.dart';
import 'package:jiffy/src/locale/arLocale.dart';
import 'package:jiffy/src/locale/deLocale.dart';
import 'package:jiffy/src/locale/enLocale.dart';
import 'package:jiffy/src/locale/esLocale.dart';
import 'package:jiffy/src/locale/faLocale.dart';
import 'package:jiffy/src/locale/frLocale.dart';
import 'package:jiffy/src/locale/hiLocale.dart';
import 'package:jiffy/src/locale/idLocale.dart';
import 'package:jiffy/src/locale/itLocale.dart';
import 'package:jiffy/src/locale/jaLocale.dart';
import 'package:jiffy/src/locale/koLocale.dart';
import 'package:jiffy/src/locale/locale.dart';
import 'package:jiffy/src/locale/nbLocale.dart';
import 'package:jiffy/src/locale/nlLocale.dart';
import 'package:jiffy/src/locale/plLocale.dart';
import 'package:jiffy/src/locale/ptLocale.dart';
import 'package:jiffy/src/locale/ruLocale.dart';
import 'package:jiffy/src/locale/thLocale.dart';
import 'package:jiffy/src/locale/ukLocale.dart';
import 'package:jiffy/src/locale/azLocale.dart';
import 'package:jiffy/src/locale/svLocale.dart';
import 'package:jiffy/src/locale/trLocale.dart';
import 'package:jiffy/src/locale/zhCnLocale.dart';
import 'package:jiffy/src/locale/zhLocale.dart';
import 'package:jiffy/src/locale/bnLocale.dart';

Map<String, Locale Function(StartOfWeek)> _availableLocales = {
  'en': (StartOfWeek? startOfWeek) => EnLocale(startOfWeek ?? StartOfWeek.SUNDAY),
  'en_us': (StartOfWeek? startOfWeek) => EnLocale(startOfWeek ?? StartOfWeek.SUNDAY),
  'en_sg': (StartOfWeek? startOfWeek) => EnLocale(startOfWeek ?? StartOfWeek.SUNDAY),
  'en_au': (StartOfWeek? startOfWeek) => EnLocale(startOfWeek ?? StartOfWeek.SUNDAY),
  'en_ca': (StartOfWeek? startOfWeek) => EnLocale(startOfWeek ?? StartOfWeek.SUNDAY),
  'en_gb': (StartOfWeek? startOfWeek) => EnLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'en_ie': (StartOfWeek? startOfWeek) => EnLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'en_il': (StartOfWeek? startOfWeek) => EnLocale(startOfWeek ?? StartOfWeek.SUNDAY),
  'en_nz': (StartOfWeek? startOfWeek) => EnLocale(startOfWeek ?? StartOfWeek.SUNDAY),
  'es': (StartOfWeek? startOfWeek) => EsLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'es_do': (StartOfWeek? startOfWeek) => EsLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'es_us': (StartOfWeek? startOfWeek) => EsLocale(startOfWeek ?? StartOfWeek.SUNDAY),
  'fr': (StartOfWeek? startOfWeek) => FrLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'fr_ch': (StartOfWeek? startOfWeek) => FrLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'fr_ca': (StartOfWeek? startOfWeek) => FrLocale(startOfWeek ?? StartOfWeek.SUNDAY),
  'zh': (StartOfWeek? startOfWeek) => ZhCnLocale(startOfWeek ?? StartOfWeek.SUNDAY),
  'zh_cn': (StartOfWeek? startOfWeek) => ZhCnLocale(startOfWeek ?? StartOfWeek.SUNDAY),
  'zh_hk': (StartOfWeek? startOfWeek) => ZhLocale(startOfWeek ?? StartOfWeek.SUNDAY),
  'zh_tw': (StartOfWeek? startOfWeek) => ZhLocale(startOfWeek ?? StartOfWeek.SUNDAY),
  'de': (StartOfWeek? startOfWeek) => DeLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'de_de': (StartOfWeek? startOfWeek) => DeLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'de_at': (StartOfWeek? startOfWeek) => DeLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'de_ch': (StartOfWeek? startOfWeek) => DeLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'it': (StartOfWeek? startOfWeek) => ItLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'it_ch': (StartOfWeek? startOfWeek) => ItLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'ar': (StartOfWeek? startOfWeek) => ArLyLocale(true, startOfWeek ?? StartOfWeek.SATURDAY),
  'ar_ly': (StartOfWeek? startOfWeek) => ArLyLocale(false, startOfWeek ?? StartOfWeek.SATURDAY),
  'ar_dz': (StartOfWeek? startOfWeek) => ArSaMaDzKwTnLocale(false, startOfWeek ?? StartOfWeek.SUNDAY),
  'ar_kw': (StartOfWeek? startOfWeek) => ArSaMaDzKwTnLocale(false, startOfWeek ?? StartOfWeek.SUNDAY),
  'ar_sa': (StartOfWeek? startOfWeek) => ArSaMaDzKwTnLocale(true, startOfWeek ?? StartOfWeek.SUNDAY),
  'ar_ma': (StartOfWeek? startOfWeek) => ArSaMaDzKwTnLocale(false, startOfWeek ?? StartOfWeek.SATURDAY),
  'ar_tn': (StartOfWeek? startOfWeek) => ArSaMaDzKwTnLocale(false, startOfWeek ?? StartOfWeek.SATURDAY),
  'az': (StartOfWeek? startOfWeek) => AzLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'id': (StartOfWeek? startOfWeek) => IdLocale(startOfWeek ?? StartOfWeek.SUNDAY),
  'ja': (StartOfWeek? startOfWeek) => JaLocale(startOfWeek ?? StartOfWeek.SUNDAY),
  'ko': (StartOfWeek? startOfWeek) => KoLocale(startOfWeek ?? StartOfWeek.SUNDAY),
  'ru': (StartOfWeek? startOfWeek) => RuLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'uk': (StartOfWeek? startOfWeek) => UkLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'hi': (StartOfWeek? startOfWeek) => HiLocale(startOfWeek ?? StartOfWeek.SUNDAY),
  'pt': (StartOfWeek? startOfWeek) => PtLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'pt_br': (StartOfWeek? startOfWeek) => PtLocale(startOfWeek ?? StartOfWeek.SUNDAY),
  'pl': (StartOfWeek? startOfWeek) => PlLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'tr': (StartOfWeek? startOfWeek) => TrLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'sv': (StartOfWeek? startOfWeek) => SvLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'nb': (StartOfWeek? startOfWeek) => NbLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'fa': (StartOfWeek? startOfWeek) => FaLocale(true, startOfWeek ?? StartOfWeek.SATURDAY),
  'bn': (StartOfWeek? startOfWeek) => BnLocale(startOfWeek ?? StartOfWeek.SUNDAY),
  'nl': (StartOfWeek? startOfWeek) => NlLocale(startOfWeek ?? StartOfWeek.MONDAY),
  'th': (StartOfWeek? startOfWeek) => ThLocale(startOfWeek ?? StartOfWeek.SUNDAY)
};

Locale getLocale(String locale, [StartOfWeek? startOfWeek]) {
  return (_availableLocales[locale.toLowerCase()] ?? (startOfWeek) => EnLocale(startOfWeek))(startOfWeek ?? StartOfWeek.SUNDAY);
}

bool isLocalAvailable(String locale) {
  return !_availableLocales.containsKey(locale.toLowerCase());
}

List<String> getAllLocales() {
  return _availableLocales.keys.toList();
}
