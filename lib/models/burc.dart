class burc {
  String _burcAdi;
  String _burcTarihi;
  String _burcDetay;
  String _kucukResim;
  String _buyukResim;
  //constractur tanımlandı
  burc(this._burcAdi, this._burcTarihi, this._burcDetay, this._kucukResim,
      this._buyukResim);
  String get burcBuyukResim => _buyukResim;
  set burcBuyukResim(String value) {
    _buyukResim = value;
  }

  String get burcKucukResim => _kucukResim;
  set burcKucukResim(String value) {
    _kucukResim = value;
  }

  String get burcAdi => _burcAdi;
  set burcAdi(String value) {
    _burcAdi = value;
  }

  String get burcTarihi => _burcTarihi;
  set burcTarihi(String value) {
    _burcTarihi = value;
  }

  String get burcDetay => _burcDetay;
  set burcDetay(String value) {
    _burcDetay = value;
  }
}
