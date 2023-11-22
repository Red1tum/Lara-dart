// why is it not static?
// I think in real world this would make some
// http requests, so it needs to store http client(or
// client factory, not familiar with common dart approach
// on this).
import 'package:lara/data/Subscription.dart';

import 'RatesAndLimits.dart';

class DataProvider {
  List<String> getInterests() {
    return [
      "Еда",
      "Саморазвитие",
      "Технологии",
      "Дом",
      "Досуг",
      "Забота о себе",
      "Наука"
    ];
  }

  List<Subscription> getUsersSubscriptions() {
    return [
      const Subscription(
          imageName: "assets/images/sber_prime.webp",
          name: "СберПрайм",
          nextPaymentDate: "9 июля",
          perMonthPayment: 199),
      const Subscription(
          imageName: "assets/images/percent_sign_filled.webp",
          name: "Переводы",
          nextPaymentDate: "21 августа",
          perMonthPayment: 199)
    ];
  }

  List<RatesAndLimits> getRatesAndLimits() {
    return [
      const RatesAndLimits(
          imageName: "assets/images/speedometer.webp",
          title: "Изменить суточный лимит",
          subtitle: "На платежи и переводы"),
      const RatesAndLimits(
          imageName: "assets/images/percent_sign.webp",
          title: "Переводы без комиссии",
          subtitle: "Показать остаток в этом месяце"),
      const RatesAndLimits(
          imageName: "assets/images/arrows_forward_back.webp",
          title: "Информация о тарифах и лимитах"),
    ];
  }
}
