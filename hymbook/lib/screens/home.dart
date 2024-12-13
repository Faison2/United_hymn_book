import 'package:flutter/material.dart';
import 'package:hymbook/screens/song_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> songs = {
      'Ishe, Taungana': 'Ishe taungana, \nMuno mumba yenyu;\nUyaiwo, zvatapinda\nIshe mberi kwenyu.\n\nIyo mwoyo yedu\nYokurwarirai;\nNayo mweya yedu Ishe\nYokutarirai.\n\nHurukuro dzenyu\nBaba, ngatidzinzwe;\nRazarurwa dama renyu\nNemi tikunzwei.\n\nTinatswewo, Ishe,\nIsu vanhu venyu;\nKana tafa, tipinzewo\nMune denga renyu.',
      'Mwari, MuriZuva Redu': 'MWARI muri zuva redu,\nRinopenya pauzuru;\nAsi mweya ungaone\nPaunozofamba napo.\n\n2. Mwari, muri nhovo yedu,\nHatidzityi hondo dzedu;\nDzose dzinokundwa nemi,\nTigouya nokufara.\n\n3. Munotipa ngoni dzenyu,\nMunotipa noutswene;\nMunopa vanonamata,\nMunopa makomborero.\n\n4. Makomborero makuru,\nMakomborero ewedenga,\nAripo avanofunga\nKuti vanodiswa nemi.',
      'Mweya, Mutsvene.': 'Mweya mutsvene waMwari\nGarai muno mumba\nBurukai zvino nesimba\nUya Mweya, uyai\n\nUyai Mweya, kufanana\nKupenya kwezuva\nVenekerai mwoyo yedu\nOnisai kuipa\n\nOnisai rushavashava\nNezvirwere zvose\nTitungamire panzira\nPanenda vatsvene\n\nUyai serimi romoto \nPisai mwoyo yedu\nTichive zviteuriro\nKuna Ishe wedu\n\nUya Mweya kufanana\nDova rokudenga\nMwoyo isingabereke\nIve namapudzi\n\nUya senjiva yedenga\nMutivhumbamire\nNamapapiro orudo\nNoruregerero\n\nUyai sedutu remhepo\nNesimba renyasha\nKuti vanhu vakuonei\nNoutsvene hwenyu\n\nUyai Mweya wokudenga\nMukugara kwedu\nMutiite musha wenyu\nUyai Mweya, uyai',
      'Mutsvene, Mutsvene.': 'MUTSVENE, Mutsvene, Mwari wesimba!\nMangwana mangwana toimba kwauri;\nMutsvene, Mutsvene, wetsitsi namasimba!\nMwari wengoni, Mwari Mutsvene!\n\nMutsvene, Mutsvene! Vanokurumbidza\nVanhu vako vose kunewe kudenga;\nNengirozi dzose pachigaro chako\nDzinopfugama mberi kwauri.\n\nMutsvene, Mutsvene! vanhu verima,\nVanhu vakaipa havakuone;\nUri oga M’tsvene hapasisina mumwe,\nUna masimba nezvirokwazvo.\n\nMutsvene, Mutsvene! Mwari wesimba!\nAnokurumbidza mabasa ako ose.\nMutsvene, Mutsvene, wetsitsi nemasimba!\nMwari wengoni, Mwari Mutsvene!',
      'Kudzai Mambo': 'KUDZAI Mambo, ano utsvene;\nAri kudenga ana masimba;\nNdiye nhowo yedu yakarekare;\nChigaro chake chakakurumbidzwa.\n\nImbai masimba nengoni dzake,\nAri kudenga nenguwo chena;\nHasha dzake dzose dzinotinhira,\nAnofamba zvake pachamupupuri.\n\nAna masimba, wakaisika\nNyika nezvinhu zvose zvirimo,\nWakaitsigira nomurairo,\nWakaikombera nemvura yose.\n\nKufudza kwako kusingarehwe;\nKuri pamhepo napakupenya,\nKuri pamakomo napamakan’a,\nKuri pane mvura napane dova.\n\nIsu vaduku hatina simba,\nTinotarira chete kwauri;\nTsitsi dzako dzese dzisingaperi,\nHama yakanaka nomununuri.\n\nUna masimba norudo rwose:\nDzinokuimbira hondo dzose kudenga\nNesuwo venyika tinokuimbira,\nTino kurumbidza kusingaperi.\nPost navigation',
      'Imi mose muri pasi': 'IMI mose muri pasi,\nImbai kuna Jehovha:\nKurumbidzai mumutende;\nUyai norufaro kwaari.\n\nTinoziva kuti J’ovha\nNdiye Mwari wechokwadi;\nTiri bara rehwai dzake\nAnotipa kudya kwedu.\n\nPindai suwo guru rake;\nMuswedere kuna Mambo;\nTsimutsai mazvi enyu,\nMakafanira kudaro.\n\nNdiye Mwari wakanaka,\nTsitsi dzake dzakakomba;\nRudo nechokwadi chake\nHachingatipinde isu.',
      'Hosana wokudenga': 'HOSANA wokudenga,\nNdoimba nezwi rangu,\nKuMwana waDavid,\nWauya Kwandiri,\nHosana, ndiyamure\nPakurema kwangu:\nWauya asadanwa\nMuponisi wangu.\n\nNdoshonge dzakadini\nAzondishanyira?\nMugadziriri iwe\nMoyo wako wose,\nNdoupira kwauri\nMununuri wangu,\nUpfugame namabvi\nChokwadi ‘she wangu.\n\nNdasunungurwa newe\nMudhorongo rangu:\nRakadimurwa newe\nIro joti rangu\nRakandirasikisa\nNdasiya upenyu\nWakandifarisazve\nPakuchema kwangu.',
      'Ngatimutukudze Mwari': 'NGATIMUKUDZE Mwari\nNemwoyo inofara,\nTsitsi dzake ihuru\nDzinoitirwa isu\n\nAnorayira zuva\nRivhenekere nyika:\nTsitsi dzake ihuru\nDzinoitirwa isu.\n\nZvinhu zvose zvipenyu\nZvinoponiswa naye:\nTsitsi dzake ihuru\nDzinoitirwa isu.\n\nAnotikwanisawo,\nAnoda kukumbirwa:\nTsitsi dzake ihuru\nDzinoitirwa isu.\n\nKana tiri panhamu\nTinochengetwa isu:\nTsitsi dzake ihuru\nDzinoitirwa isu.\n\nMwana wake wakafa\nKuti tipinde denga:\nTsitsi dzake ihuru\nDzinoitirwa isu.\n\nNgatimukudze Mwari\nNemoyo inofara;\nTsitsi dzake dziripo\nDzisingaperi idzo',
      'Mukudzei iye Mwari': 'MUKUDZEI iye Mwari\nNavari kudenga;\nMukudzei iye Mwari,\nNavari kudenga.\n\nImi muri nhume dzake,\nMukudzeyi iye;\nNemi muri hondo dzake,\nMukudzeyi iye.\n\nIwe zuva, newe mwedzi,\nMukudzei iye;\nNemiwo imi nyenyedzi\nMukudzei iye.\n\nIwe moto newe chando,\nMukudzei iye;\nIwe chando, newe bute,\nMukudzei iye.\n\nNemhepo inovhuvhuta,\nChimukudza iye;\nNewe ita izwi rake,\nPaunozonzwika.\n\nImi vuri vashe mese,\nMukudzei iye;\nNemi imi vanhu mese,\nMukudzei iye.\n\nImi vese vakomana,\nMukudzei iye;\nNemi imi vasikana,\nMukudzei iye.\n\nNemi vanhu vachembera,\nMukudzei iye;\nNemi imi mhuri yose,\nMukudzei iye.',
      'Ndinoshamiswa Kwazvo': 'NDINOSHAMISWA kwazvo\nNamabasa makuru\nAkaitiwa newe\nOse anorumbidza;\nUkuru hwenyu Mwari\nHunoshamisa kwazvo.\n\nKana ndarangarira\nMabasa okudenga;\nKana ndarangarira\nMabasa apanyika;\nInobuda misodzi\nKana ndafunga iwe.\n\nMwari vatatu mumwe\nItai kuti tikude,\nNokuti wakatida,\nWakazotipa Jesu,\nWatipa mweya wako,\nWokutipupurira.\n\nRumbidza iwe denga!\nRumbidza iwe nyika!\nRumbidza iwe gungwa!\nNesu ngatirumbidze!\nUyu musiki wedu,\nAne rudo rukuru.',
      'Zadzisa Chirevo Chako.': 'Zadzisai chirevo chenyu\nMwari, Ishe wechokwadi;\nOse marudzi enyika\nNgaawane ruponiso.\n\nNamabvi kuneyi nyika\nNgaafugame panemi,\nDzidzamare dzose ndimi\nDzireve ukuru hwenyu.\n\nTongai, Jesu, tongai!\nRwouya nemi rufaro;\nNezvikanganiso zvedu\nYatadzika yose nyika.\n\nTarirai nyika yedu,\nRegererai zvitadzo;\nIshe musatitsamwire\nIsingafe mhuri yayo.\n\nRambai She, tisazvidze\nZvidzidziso zvezwi renyu;\nMutimutsirire Baba\nTigonzwa chokwadi chenyu.',
      'Baba une simba': 'BABA une simba rose,\nNdiyamure iwe;\nKana wandisiya Iwe\nIni ndoendepiko?\n\nkorus\nNdinotenda, ndinotenda, Jesu wandifira,\nNdichaponeswa neropa rake rakakomba.\n\nWakamutuma Munyai,\nKureva kwatiri;\nWakatipa Muponisi\nKutifira isu.\n\nJesu wakashongedzwa,\nUne ngoni huru;\nNokuti wakaroverwa\nPam’chinjikwa uyu\n\nNdinodzokera kwauri,\nUne tsitsi iwe;\nZvino ndigam’chire ini\nUsipo ndingafe',
      'Uyai, vakristu': 'UYAI , VaKristu,\nNokufara nokukunda;\nUyai, uyai KuBheterehema;\nUyai muone\nIshe wengirosi;\nUyai ngatimutende Kristu Ishe.\n\nMwari wa Mwari\nKuchena kokuchena;\nWazvarwa mukomana waMaria;\nMwari chokwadi:\nMwari pakutanga;\nUyai, ngatimutende, Kristu Ishe\n\nOmbai, ngirosi,\nOmbai nokufara,\nOmbai, vanhu vose kudenga,\nTendai kuna Mwari,\nMwari wokudenga:\nUyai, ngatimutende, Kristu Ishe.\n\nTinomukwazisa,\nWazvarwa iri zuva;\nNgakupiwe Kristu kutenda;\nIzwi raBaba,\nZvino wakauya;\nUyai, ngatimutende, Kristu Ishe.',
      'Farai Vatendi': 'FARAI vatendi mangwanana ano,\nMuponisi wevanhu wazvarwa;\nChikudzai rudo rwakakomba:\nShoko radzakauya naro\nKuti Mwari waponwa nenyama.\n\nVafudzi vakambotaurirwa,\nVakanzwa izwi rengirozi huru,\nNdina mashoko akakomba\nKuna vanhu vose pane nyika;\nDama raMwari rakazadzika,\nJesu waponwa ndiye M’ponisi.\n\nIkadaro Ngirozi, pakarepo\nDzakaimbirana rwiyo rutsva;\nDzakakudza rudo rwaMwari,\nDenga rakatinhira nokuimba.\nTsitsi dzasvika pano panyika.\n\nVafudzi vakambomhanya kwazvo,\nKundoona zvavakaitirwa;\nVakadzokera kuhwai dzavo,\nVachiri kukurumbidza Mwari,\nVakaparidza zvavakaona,\nVanyai vokutanga vaMwari.\n\nNgatirangarire tichifunga\nUrwo rudo rukuru rwaMwari;\nTitarise Mwana Mutsvene,\nAchienda kuno muchinjikwa;\nNengoni dzake timutevere\nTidarike tisvike kudenga.\n\nKuti tisangane nengirose\nTaponiswa tichifara kwazvo;\nNdiye waponwa nezuro kwazvo;\nAnozotionesa upenyu;\nTakaponiswa norudo rwake\nTinokudza Mambo wokudenga.',
      'Watakura kuipa Jesu' :'WATAKURA kuipa Jesu,\nkusi kuipa kwako;\nUkaripa mhosva Jesu,\nIsi mhoswa yako.\n\nWaiva munhu unetsitsi\nUsatadza Iwe;\nRaparara ropa rako,\nWakanaka iwe.\n\nKudarika kwedu kwose,\nKwakanyorwa newe;\nNezvirandu zvedu zvose,\nZvakanyorwa newe.\n\nTaregerwa taponiswa,\nNezvirwadzo zvako,\nTinoshambwa pakaipa\nNero ropa rako.',
      'Tsitsi Hedzi':'TSITSI hedzi dzamira dzega,/nNezvirwadzo zvakamira zvoga,\nNengoni dzakamira dzoga,\nPamuchinjikwa.\n\nIshe waburuka kudenga,\nAkazova munhu kuvanhu,\nAkava diramhamba redu,\nPamuchinjikwa.\n\nRutendo rwedu rwomirepi?\nKufunga kwedu kwomirepi?\nNorudo rwedu rwomirepi\nPamuchinjikwa.\n\nTsaona ingaperi yose,\nNemhaka dzose dzingaripwe;\nZvakaipa zvinoregerwa;\nPamuchinjikwa.\n\nDzakaona ngirozi pasi,\nDzakati gwanamwana pasi,\nDzichiona mashure ayo!\nPamuchinjikwa.',
      'Changamire, Muponesi':'Changamire, Muponisi\nIshe wakambozvidzwa;\nNezvirwadzo zvako, tenzi,\nKwakwaniswa kupona.\nChangamire, Mambo Jesu!\nMutakuri wemhosva;\nNako kufa kwakakomba\nTakapiwa upenyu.\n\nGwayana raMwari baba\nTonamata kwauri;\nRopa rakaparadzirwa\nIsu vakarasika.\nVanhu vako vose, Ishe\nVakatengerwa nzwimbo;\nVakazarurirwa musuw\nWebako rokudenga.\n\nChangamire! Wakagadzwa\nPachigaro chitswene,\nHondo dzose dzokudenga\nDzinokukurumbidza.\nUnoteurira isu,\nUnotireverera;\nPamusha wako mutswene\nUnoda kutipinza.\n\nWafanira kugam’chira\nKukudzwa noutsvene;\nKukurumbidzwa kukuru,\nRudo rusingaperi.\nTiyamurei ngirozi,\nUyai nenziyo dzenyu;\nTose tiimbire Mambo\nTine mwoyo michena',
      'Riripo Tsime':'RIRIPO tsime rizere\nNeropa raJesu;\nVatadzi vakashamba ‘mo,\nVakachena kwazvo.\n\nKorus\nNdinotenda, ndinofara,\nJesu wandifira;\nNapamuchinjikwa ropa\nRandaparadzirwa.\n\nUyo m’pati wakafara\nKuona tsime ‘ro;\nNeni mutadzi mukuru\nNdinotenda kwazvo.\n\nIwe, Gwayana raMwari,\nRopa rine masimba,\nKutisunungura isu\nPane zvakaipa.\n\nHandifanire kupinda\nKudenga kutsvene;\nAsi Iwe wakaripa\nMhosva dzangu dzose.\n\nNdichaimba nero shoko\nNguva dzangu dzose;\nNokudenga ndichafara\nNokusingaperi.',
      'Chitenderano Jerusalema ndinokuona':'Hooo heraa \n huya tiende hutende here\n hoiyere huya tiende',
      'Ishe Ndinzwe Nokufara':'Ishe ndinzwe nokufara\nNdinzwe netsitsi dzako\nDzaunopa vanhu vose\nNgadziuye pandiri, pandiri\n\nRega kundisiya, Baba,\nKana ndiri mutadzi,\nNdinokuipa pamoyo,\nAsi uya pandiri, pandiri.\n\nUya pano, Muponisi!\nNgandichengetwe newe;\nKana uchindishevedza,\nNdichauya kwauri, kwauri\n\nMweya Mutsvene wa Mwari!\nRega Kundipfuura,\nNgandione ndiri bofu,\nTaura izwi resimba, resimba.\n\nRudo rwako Mwari Baba,\nRopa raIshe wangu,\nNokuwadzana KwoMweya.\nKungavepo kwandiri, kwandiri.',
      'Baba Ndiri Mwana Wako':'BABA ndiri mwana wako,\nKana ndakatadza;\nNdinochema mberi kwako,\nBaba ndiregerere.\n\nZvitadzo zvangu zvizhinji,\nHazvingaverengwi;\nNdinozviisa kwauri;\nBaba ndiregerere.\n\nMirau yako ndakatyora,\nIwe ndakuzvidza;\nMununuri ndamurasa,\nBaba ndiregerere.\n\nNdakatadza nokureva,\nNdakatadza kufunga,\nNdakatadza namabasa;\nBaba ndiregerere.\n\nKana ndanga ndafanira\nNokukurumbidza,\nNdatadza nokukanganwa,\nBaba ndiregerere.\n\nNezvakaipa zvizhinji\nBaba ndakatadza,\nNdakakunyadzisa iwe,\nBaba ndiregerere.\n\nUri Mwari une ngoni,\nDzisina kupera,\nNaizvozvo ndinochema,\nBaba ndiregerere.',
      'Nditarire nokufara':'Nditarire nokufara,\nIshe wangu!\nNdiwe wanga wandifira,\nIshe wangu!\nWaburuka denga rako,\nUchisiya upenyu hwako,\nNdanzwa ruponiso rwako,\nIshe wangu!\n\nNdangandigere pane rima,\nIshe wangu!\nNdandiende pane rufu,\nIshe wangu!\nDzakauya nhume dzako.\nDzandinzwisa dama rako,\nDzandiudza tsitsi dzako,\nIshe wangu!\n\nNgandidzinzwe ngoni dzako,\nIshe wangu!\nNdive muponiswa wako,\nIshe wangu!\nZvakaipa ngazvipere,\nMwoyo uve noutsvene,\nNdinzwe undireverere,\nIshe wangu!',
    };

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: const Text('United Hymn', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              // Handle favorite button press
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Here...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          // List of songs
          Expanded(
            child: ListView.builder(
              itemCount: songs.keys.length,
              itemBuilder: (context, index) {
                String songTitle = songs.keys.elementAt(index);
                return ListTile(
                  title: Text(
                    songTitle,
                    style: const TextStyle(
                      color: Colors.green, // Set text color to green
                    ),
                  ),
                  onTap: () {
                    // Navigate to the song detail page with lyrics
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SongDetailPage(
                          songTitle: songTitle,
                          songLyrics: songs[songTitle]!, // Pass the lyrics
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}