class ProductConfig {
  static final ProductConfig instance = ProductConfig._("a");

  final String apiKey;

  ProductConfig._(this.apiKey); // "_" sadece bu sınıftan türeyenler görebilir
}
