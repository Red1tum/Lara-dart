// why is it not static?
// I think in real world this would make some
// http requests, so it needs to store http client(or
// client factory, not familiar with common dart approach
// on this).
import 'package:lara/data/Subscription.dart';
import 'package:lara/data/User.dart';
import 'package:lara/resources/Images.dart';

import 'RatesAndLimits.dart';

class DataProvider {
  User getUser() {
    return User("assets/images/avatar.png", "Екатерина");
  }
  
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
      Subscription(
          imageName: Images.sberPrime,
          name: "СберПрайм",
          nextPaymentDate: "9 июля",
          perMonthPayment: 199),
      Subscription(
          imageName: Images.percentSignFilled,
          name: "Переводы",
          nextPaymentDate: "21 августа",
          perMonthPayment: 199)
    ];
  }

  List<RatesAndLimits> getRatesAndLimits() {
    return [
      RatesAndLimits(
          imageName: Images.speedometer,
          title: "Изменить суточный лимит",
          subtitle: "На платежи и переводы"),
      RatesAndLimits(
          imageName: Images.percentSigh,
          title: "Переводы без комиссии",
          subtitle: "Показать остаток в этом месяце"),
      RatesAndLimits(
          imageName: Images.arrowsForwardBack,
          title: "Информация о тарифах и лимитах"),
    ];
  }
}
