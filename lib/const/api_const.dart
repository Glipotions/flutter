// const host = '192.168.1.200:8081'; //KOTA FABRİKA SERVER
// const host = '192.168.2.150:8081'; // KOTA MAĞAZA SERVER
// const host = '10.0.2.2:5001';
// const host = '192.168.1.129:8082';
String? host;

// const host = '188.59.6.69:8082';
const http = 'http://';
String mainUrl = 'http://$host/api/';

String satisFaturaAddUrl = '${mainUrl}SatisFatura';
Uri satisFaturaGetUrl = Uri.parse('${mainUrl}SatisFatura/getall');

String satinAlmaFaturaAddUrl = '${mainUrl}SatinAlmaFatura';
Uri satinAlmaFaturaGetUrl = Uri.http(host!, 'SatinAlmaFatura/getall');

String cariHesapAddUrl = '${mainUrl}CariHesap';
String cariHesapGetUrl = '${mainUrl}CariHesap/getall';
String cariHesapGetByIdUrl = '${mainUrl}CariHesap/getbyid?id=';
Uri cariHesapGetUri = Uri.parse('${mainUrl}CariHesap/getall');

String cariHesapHareketleriAddUrl(
    int cariHesapId, int hareketId, String durum) {
  return '${mainUrl}CariHesapHareketleri?cariHesapId=$cariHesapId&hareketId=$hareketId&durum=$durum';
}

String kasaHareketleriAddUrl(int kasaId, int hareketId, String durum) {
  return '${mainUrl}KasaHareketleri?kasaId=$kasaId&hareketId=$hareketId&durum=$durum';
}

String kasaUpdateBakiyeUrl(int id, double bakiye) {
  return '${mainUrl}Kasa/updatekasabakiyebyid?id=$id&bakiye=$bakiye';
}

String kasaGetByIdUrl(int id) {
  return '${mainUrl}Kasa/getbyid?id=$id';
}

Uri kasaGetUrl = Uri.parse('${mainUrl}Kasa/getall');

String nakitAddUrl = '${mainUrl}Nakit';

String urunBilgileriAddUrl = '${mainUrl}UrunBilgileri';
Uri urunBilgileriGetUrl = Uri.http(host!, 'UrunBilgileri/getall');

String urunBilgileriGetBySatisFaturaIdUrl(id) {
  return '${mainUrl}UrunBilgileri/getallbysatisfaturaid?id=$id';
}

String urunBilgileriSatinAlmaAddUrl = '${mainUrl}UrunBilgileriSatinAlma';
Uri urunBilgileriSatinAlmaGetUrl =
    Uri.http(host!, 'UrunBilgileriSatinAlma/getallbysatinalmafaturaid?id=');

String urunBarkodBilgileriAddUrl = '${mainUrl}UrunBarkodBilgileri';
String urunBarkodBilgileriGetUrunUrl =
    '${mainUrl}UrunBarkodBilgileri/getbybarcode?barkod=';
Uri urunBarkodBilgileriGetUrunUri =
    Uri.parse('${mainUrl}UrunBarkodBilgileri/getbybarcode?barkod=');

String urunGetByIdUrl = '${mainUrl}Urun/getbyid?id=';
String urunGetByCodeUrl = '${mainUrl}Urun/getbycode?code=';
String updateUrunById = '${mainUrl}Urun/updateurunbyid?id=';

String updateCariHesapBakiyeById =
    '${mainUrl}CariHesap/updatecaribakiyebyid?id=';
