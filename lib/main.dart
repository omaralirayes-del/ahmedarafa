import 'package:ahmedarafa/music.dart';
import 'package:flutter/material.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  AudioManager().initAndPlay();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

    
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFF121212),
        child: ListView(
          children: [
            const SizedBox(height: 30,),
            Text("أهلا بكم",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            Row(mainAxisAlignment: MainAxisAlignment.center,children: [
              Container(width: 100,height: 300,child: Image.asset("images/ahmed.png",fit: BoxFit.cover,),)
            ],),
            const SizedBox(height: 7,),
            Text("! استكشف ما تريد ",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            const SizedBox(height: 4,),
            Row(mainAxisAlignment: MainAxisAlignment.center,children: [
              InkWell(
                onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Mountain()));},
                child: Container(
                  width: 150,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset(height: 60,"images/mountain.jpg",fit: BoxFit.cover,)),
                       Text("جبل عرفات ",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Tahneet()));},
                child: Container(
                  width: 150,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(20),child: Image.asset(height: 60,"images/moya2.jpeg",fit: BoxFit.cover,)),
                       Text("التحنيط",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              )
            ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 InkWell(
                onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Minus()));},
                child: Container(
                  width: 150,
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(alignment: Alignment.center,decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20)),width: 80, child: Text("-",style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold),),),
                       Text("مينص",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                    ],
                  ),
                ),
              )
              ],
            ),
            
            
          ],
        ),
      ),
    );
  }
}

class Mountain extends StatefulWidget {
  const Mountain({super.key});

  @override
  State<Mountain> createState() => _MountainState();
}

class _MountainState extends State<Mountain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,

      appBar: AppBar(backgroundColor: Colors.transparent,iconTheme: IconThemeData(color: Colors.white),),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: ListView(
          children: [
            Container(
                  width: double.infinity,
                  height: 250,
                  
                    child:  ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset("images/mountain.jpg",fit: BoxFit.cover,)),
                    
                  
            ),
            const SizedBox(height: 5,),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text("""عَرَفَةُ هوَ جبل في المملكة العربية السُعودية يقع على الطَريق بين مكة وَالطائف، حيث يَبعُد عن مكة حوالي 22 كيلومترا وعلى بُعد 10 كيلومترات من منى و 6 كيلومترات من مزدلفة. تُقام عنده أَهم مناسك الحج، والتي تسمى بوقفة عرفة وذلك في يوم التاسع من شهر ذي الحجة. وتعد الوقفة بعرفة أهم مناسك الحج كما قال الرسول محمد: «الحَجُّ عَرَفَةُ». يصل طول جبل عرفة إلى 300 متر، ووسط قمته شاخص طوله سبعة أمتار ليميزه عن بقية الجبال.

التسمِية
سُمِّي عرفة بهذا الاسم؛ لأنَّ النَّاس يتعارفون فيه. وَقيل لأن جبريل طاف بإبراهيم وكان يريه المشاهد فيقول له: «أَعَرَفْتَ؟ أَعَرَفْتَ؟»، فيرد إبراهيم: «عَرَفْتُ، عَرَفْتُ»، وَقد قيل أيضاً أنه سُمي عَرفة لأنَّ آدم وحواء «عندما هبطا من الجنة» التقيا فيه فعرفها وعرفته. وقيل أيضاً أنه سُمي بذلك لأن الناس يعترفون بذُنوبهم عِنده. وقيل: بل سُمي بالصبر على ما يُكابِدُون في الوصول إليه، لأن العُرف الصبر، قال الشاعر:

قُل لابن قَيْسٍ أخي الرُّقَيَّات
ما أحسنَ العُرْفَ في المصيبات
وَقد عُرف جَبل عَرفة باسم عَرفات، لوروده صراحة في القُرآن ﴿لَيْسَ عَلَيْكُمْ جُنَاحٌ أَنْ تَبْتَغُوا فَضْلًا مِنْ رَبِّكُمْ فَإِذَا أَفَضْتُمْ مِنْ عَرَفَاتٍ فَاذْكُرُوا اللَّهَ عِنْدَ الْمَشْعَرِ الْحَرَامِ وَاذْكُرُوهُ كَمَا هَدَاكُمْ وَإِنْ كُنْتُمْ مِنْ قَبْلِهِ لَمِنَ الضَّالِّينَ ١٩٨﴾. وَكلمة عَرفات ليست جَمْعَ عَرَفَة -كما يظن البعض- إنما هو مُفرد على صِيغة جَمْع، وله نظائرُ في لُغة العَرب. وهي فسيحٌ مِن الأرض محاطٌ بِقَوْسٍ مِن الجِبال يكون وَتَرُه وادي عُرَنة.

وَيُطلق على عرفة أسماء أخرى منها: جَبل الرَحمة، القرين، النابت، جبل إلال.

حدود عَرفة

قالَ ابن عَباسٍ:«حدُّ عَرفة مِن الجبل المُشرِف على بَطْن عُرَنَة إلى جبالها إلى قصر آل مالك، ووادي عَرَفَة».

وَتقع عرفة على الطَريق بين مكة والطائف شَرقيَّ مكة بنحو 22 كيلومترا، وعلى بُعد عَشْرِ كيلومترات من منى وسِتِّ كيلومترات من مزدلفة، وَيقرب طول عَرفة ميلين، وَعرضُها كذلك، وهي سَهل مُنبسط مُحاط بسلسلة من الجِبال على شكل قوس كَبير.

وحدود عَرَفَة مِن ناحية الحَرَم هي نَمِرَة، وثُوَيَّة، وذي المجاز، والأراك، أما الحدود الثلاثة الأخرى لعَرَفَة، فهي سلسلةٌ مِن جبالٍ سوداءَ، أَبْرَزُها أُمُّ الرَّضُوم، وقد وُضِع لعَرَفة عَلَمَان يرمُزان إلى بدايتها، وعَلَمَان يرمُزان لنهايتها، توضيحًا لمن يجهل ذلك. وبَيْنَ الأعلام تَقع بَطْنُ عُرَنَة، قال رسول الله: «عَرَفَةَ كُلَّهَا مَوْقِفٌ، إِلَّا بَطْنَ عُرفة». وَفي هذا الموقف نزل على الرسول: ﴿الْيَوْمَ أَكْمَلْتُ لَكُمْ دِينَكُمْ وَأَتْمَمْتُ عَلَيْكُمْ نِعْمَتِي وَرَضِيتُ لَكُمُ الْإِسْلَامَ دِينًا﴾.

وَعرفة تَعني المَشعر الأقصى من مشاعر الحج، وهو الوَحيد الذي يقع خارج حدود الحَرم، وهو المشعر الذي يقف عليه الحجيج بعد صلاة الظُهر من يوم التاسع من ذي الحجة.""",style: TextStyle(color: Colors.white,fontSize: 16),),
            )
          ],
        ),
      ),
    );
  }
}

class Tahneet extends StatefulWidget {
  const Tahneet({super.key});

  @override
  State<Tahneet> createState() => _TahneetState();
}

class _TahneetState extends State<Tahneet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,

      appBar: AppBar(backgroundColor: Colors.transparent,iconTheme: IconThemeData(color: Colors.white),),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: ListView(
          children: [
            Container(
                  width: double.infinity,
                  height: 250,
                  
                    child:  ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset("images/moya.jpeg",fit: BoxFit.fill,)),
                    
                  
            ),
            const SizedBox(height: 5,),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text("""تحنيط الموتى هو حفظ جثث الموتى باستعمال مواد كيميائية، فيبقى جسم الإنسان محافظاً على مظهرهِ ويبدو كأنهُ حي، عند تسجيته في مكان عام قبل إجراء مراسم الدفن، وذلك لأسباب طبية أو تزيينية؛ بالإضافة إلى أنه يفي بمتطلبات بعض الديانات التي تؤخر الدفن لعدة أيام، أو تضطر لنقل الجثة إلى مكان آخر، فيمنع التحنيط تعفّن الجثة.

طريقة التحنيط عند قدامى المصريين
اكتشف مؤخرا طريقة التحنيط واكتشفت مواده وأساليبه فقد اكتشف المصريون القدماء التحنيط عن طريق ترك الجثة فوق الرمال الحارة التي تغطيها أشعة الشمس إذ وجد أن الجثة لا تتحلل سريعا وقد ذكر هيرودوت بعض الطرق ومن هنا استطعنا اكتشاف طريقة التحنيط، وطرقه كالتالي:

استخراج المخ من الجمجمة بالشفط عن طريق الأنف باستعمال الإزميل والمطرقة للقطع من خلال الجدار الأنفي، وبعد ذلك يسحب المخ من خلال فتحة الأنف بسنارة محماة ومعقوفة واستخراج أحشاء الجسد كلها ما عدا القلب ((مركز الروح والعاطفة))، وبذلك لا يبقى في الجثة أية مواد رخوة تتعفن بالبكتريا إما بالفتح أو حقن زيت الصنوبر في الأحشاء عن طريق فتحة الشرج.
يملى تجويف الصدر والبطن بمحلول النطرون ولفائف الكتان المشبعة بالراتنج والعطور، وهي جميعا مواد لا يمكن أن تكون وسطا للتحلل والتعفن بالبكتيريا.
تجفيف الجسد بوضعه في ملح النطرون الجاف لاستخراج كل ذرة مياه موجودة فيه واستخلاص الدهون وتجفيف الأنسجة تجفيفا كاملا.
طلاء الجثة براتنج سائل لسد جميع مسامات البشرة وحتى يكون عازلا للرطوبة وطاردا للأحياء الدقيقة والحشرات في مختلف الظروف، حتى لو وضعت الجثة في الماء أو تركت في العراء.
في أحد المراحل المتقدمة من الدولة الفرعونية الحديثة، وضعت الرمال تحت الجلد بين طبقة العضلات والجلد عن طريق فتحات في مختلف أنحاء الجثة وبذلك لكي تبدو الأطراف ممتلئة ولا يظهر عليها أي ترهل في الجلد.
استعمال شمع العسل لإغلاق الأنف والعينين والفم وشق البطن.
تلوين الشفاه والخدود بمستحضرات تجميل.
لف المومياء بأربطة كتانية كثيرة قد تبلغ مئات الأمتار مدهونة بالراتنج تلون بأكاسيد الحديد الأحمر (المغرة الحمراء) مضاف لها شمع العسل كمادة لاصقة في آخر السبعين يوما التي تتم فيها عملية التحنيط.
إن أساس علم التحنيط هو تجفيف الجثة تماما ومنع البكتيريا من الوصول إليها. وعلم التحنيط يدرس حاليا في جامعة اوكسفورد في بريطانيا ويدرس أيضا في كليات الصيدلة بجامعات مصر في منهج (تاريخ الصيدلة والتصنيع الدوائي).
التحنيط في وسائل الأعلام
لعل من أبرز البرامج التلفازية التي تناولت التحنيط بل وطرق التعامل مع الموتى وذويهم هو ما سجل في المسلسل الأمريكي الشهير "ستة أقدام تحت الأرض"، والذي تناول الجانب الفكاهي والدرامي في عملية التحنيط والأمور اليومية التي تحدث في بيوت العزاء المنتشرة في العالم الغربي.

في الديانات
التحنيط محرم في الديانات السماوية، ومنها في دين الإسلام، حيث يعتبر حرام؛ لأن الجسم الميت لهُ حرمته، ولا يجوز تشريحه إلا لضرورة.""",style: TextStyle(color: Colors.white,fontSize: 16))
            )
          ],
        ),
      ),
    );
  }
}

class Minus extends StatefulWidget {
  const Minus({super.key});

  @override
  State<Minus> createState() => _MinusState();
}

class _MinusState extends State<Minus> {
  bool show = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,

      appBar: AppBar(backgroundColor: Colors.transparent,iconTheme: IconThemeData(color: Colors.white),),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: ListView(
          children: [
            Container(
                  width: double.infinity,
                  height: 250,
                  
                    child:  ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset("images/ahmed1.png",fit: BoxFit.contain,)),
                    
                  
            ),
            const SizedBox(height: 5,),
            Text("-:أكيد كلنا عارفين أن ",style: TextStyle(color: Colors.white,fontSize: 27),textAlign: TextAlign.center,),

            const SizedBox(height: 3,),
            Text("9 - 4 = 5 ",style: TextStyle(color: Colors.white,fontSize: 27),textAlign: TextAlign.center,),
            const SizedBox(height: 7,),
             Text("حل",style: TextStyle(color: Colors.white,fontSize: 37),textAlign: TextAlign.center,),
             Text(" 8 - 10 = ..... ",style: TextStyle(color: Colors.white,fontSize: 27),textAlign: TextAlign.center,),
             const SizedBox(height: 5,),
             TextButton(onPressed: (){setState(() {
               show = ! show;
             });}, child: show ? Text("اخفي الاجابه",style: TextStyle(color: Colors.black,backgroundColor: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),):Text("شوف الإجابه",style: TextStyle(color: Colors.black,backgroundColor: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
           const SizedBox(height: 3,),
           show ? Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text(" 8 - 10 =",style: TextStyle(color: Colors.white,fontSize: 27),textAlign: TextAlign.center,),Container(width: 80,height: 80,child: Image.asset(height: 60,"images/ahmed.png",fit: BoxFit.fill,),),Text("2",style: TextStyle(color: Colors.white,fontSize: 27))],):const SizedBox.shrink(),
           show ? Text("انا متأكد انك حطيت الاشاره غلط ههههههههه",style: TextStyle(color: Colors.red,fontSize: 16,),textAlign: TextAlign.center,):const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}