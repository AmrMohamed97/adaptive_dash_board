class TransactionModel {
  final String title, subTitle, price;
  final bool isWithdrawal;
  const TransactionModel( {
    required this.isWithdrawal,
    required this.title,
    required this.subTitle,
    required this.price,
  });
}
