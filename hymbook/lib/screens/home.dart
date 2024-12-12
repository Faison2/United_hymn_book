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
      'Hosana wokudenga': 'Lyrics for Hosana wokudenga...',
      'Ngatimutukudze Mwari': 'NGATIMUKUDZE Mwari\nNemwoyo inofara,\nTsitsi dzake ihuru\nDzinoitirwa isu\n\nAnorayira zuva\nRivhenekere nyika:\nTsitsi dzake ihuru\nDzinoitirwa isu.\n\nZvinhu zvose zvipenyu\nZvinoponiswa naye:\nTsitsi dzake ihuru\nDzinoitirwa isu.\n\nAnotikwanisawo,\nAnoda kukumbirwa:\nTsitsi dzake ihuru\nDzinoitirwa isu.\n\nKana tiri panhamu\nTinochengetwa isu:\nTsitsi dzake ihuru\nDzinoitirwa isu.\n\nMwana wake wakafa\nKuti tipinde denga:\nTsitsi dzake ihuru\nDzinoitirwa isu.\n\nNgatimukudze Mwari\nNemoyo inofara;\nTsitsi dzake dziripo\nDzisingaperi idzo',
      'Mukudzei iye Mwari': 'MUKUDZEI iye Mwari\nNavari kudenga;\nMukudzei iye Mwari,\nNavari kudenga.\n\nImi muri nhume dzake,\nMukudzeyi iye;\nNemi muri hondo dzake,\nMukudzeyi iye.\n\nIwe zuva, newe mwedzi,\nMukudzei iye;\nNemiwo imi nyenyedzi\nMukudzei iye.\n\nIwe moto newe chando,\nMukudzei iye;\nIwe chando, newe bute,\nMukudzei iye.\n\nNemhepo inovhuvhuta,\nChimukudza iye;\nNewe ita izwi rake,\nPaunozonzwika.\n\nImi vuri vashe mese,\nMukudzei iye;\nNemi imi vanhu mese,\nMukudzei iye.\n\nImi vese vakomana,\nMukudzei iye;\nNemi imi vasikana,\nMukudzei iye.\n\nNemi vanhu vachembera,\nMukudzei iye;\nNemi imi mhuri yose,\nMukudzei iye.',
      'Ndinoshamiswa Kwazvo': 'NDINOSHAMISWA kwazvo\nNamabasa makuru\nAkaitiwa newe\nOse anorumbidza;\nUkuru hwenyu Mwari\nHunoshamisa kwazvo.\n\nKana ndarangarira\nMabasa okudenga;\nKana ndarangarira\nMabasa apanyika;\nInobuda misodzi\nKana ndafunga iwe.\n\nMwari vatatu mumwe\nItai kuti tikude,\nNokuti wakatida,\nWakazotipa Jesu,\nWatipa mweya wako,\nWokutipupurira.\n\nRumbidza iwe denga!\nRumbidza iwe nyika!\nRumbidza iwe gungwa!\nNesu ngatirumbidze!\nUyu musiki wedu,\nAne rudo rukuru.',
      'Zadzisa Chirevo Chako.': 'Zadzisai chirevo chenyu\nMwari, Ishe wechokwadi;\nOse marudzi enyika\nNgaawane ruponiso.\n\nNamabvi kuneyi nyika\nNgaafugame panemi,\nDzidzamare dzose ndimi\nDzireve ukuru hwenyu.\n\nTongai, Jesu, tongai!\nRwouya nemi rufaro;\nNezvikanganiso zvedu\nYatadzika yose nyika.\n\nTarirai nyika yedu,\nRegererai zvitadzo;\nIshe musatitsamwire\nIsingafe mhuri yayo.\n\nRambai She, tisazvidze\nZvidzidziso zvezwi renyu;\nMutimutsirire Baba\nTigonzwa chokwadi chenyu.',
      'Baba une simba': 'Lyrics for Baba une simba...',
      'Uyai, vakristu': 'Lyrics for Uyai, vakristu...',
      'Farai Vatendi': 'Lyrics for Farai Vatendi...',

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