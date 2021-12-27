module Day15Test exposing (..)

import Day15
import Expect
import Test exposing (..)


suite : Test
suite =
    describe "day 15"
        [ test "part 1 example" <|
            \() ->
                exampleInput1
                    |> Day15.parseInput
                    |> Day15.solvePart1
                    |> Expect.equal 40
        , test "part 1 answer" <|
            \() ->
                puzzleInput
                    |> Day15.parseInput
                    |> Day15.solvePart1
                    |> Expect.equal 441

        --, test "part 2 example" <|
        --    \() ->
        --        exampleInput1
        --            |> Day15.parseInput
        --            |> Maybe.andThen Day15.solvePart2
        --            |> Expect.equal (Just 2188189693529)
        --, test "part 2 answer" <|
        --    \() ->
        --        puzzleInput
        --            |> Day15.parseInput
        --            |> Maybe.andThen Day15.solvePart2
        --            |> Expect.equal (Just 2432786807053)
        ]


exampleInput1 : String
exampleInput1 =
    """
1163751742
1381373672
2136511328
3694931569
7463417111
1319128137
1359912421
3125421639
1293138521
2311944581
"""


puzzleInput : String
puzzleInput =
    """
7135912411912798932871391322889941544645211112288183969191588665579426181549613954113914616349281119
8818482819182139319112316373697999126211219541956811442497469891197212131227119531231231297911937841
1514575112959236914131559711156719336447259942553728322911271774241293394881913682176891871931225931
3911411211611179328267522115348239963876196416413136271519591723261183181259792938429689524986199662
7641142151561121642912253491632132312682391976219236246811321441614458168298442897517119286294427143
2121192132289162313728563181871122493359816197929334844219181379799666376121879896792359861963352341
7824634877975124922137296299957468954179392824124437392871314337752916614225212219614414683959191151
4697413917922193912419678321922133939613861216689158123571322738228138479426524278182172119312848883
8924576358796711856729358848547891622733114113537182199512138345191419912781799661213494977849752719
9132169172714432689989487585816291188372945729446982887385921614921294423815188486235978437499258722
9929612116117322929192611415689558648414234962111998328276736614756763995581743581596537519892142521
6859462858823445699961194293368522127111119151871541859481733312151116149914179449331819839353155113
8988116192491137816954351881298779248676485369639447862482485217115384714391817295351133512843746966
7571297119217394373851931827249232122997672148435518981284665125835621941441532141274393695122619314
3939863898771614631946691997721854917392211921111728141868588118885471347186178748851776892861438443
2155858821839528992349995595944111672471514987919211316318272884633628411528621318162698112862229923
2691764214377199693151237477259942269443921791894817178521112414184311435491289747591145199572891861
2183942132282912239178796993312121721766259916716468139198515826259948419825368918945525463932414235
9154869181176678119983249451922785744127441495675634793648176729934175835771217248334139962527974988
8316744932991141279996315662192146345781219556153198919381318996543312112711981728293841548111952196
1678649394142988654712416121184133779252711945121896991914229495253651999438942623918521884672772847
2188335827591362911271449532775346481117326676931792861349422858831552256823539837899371212511711813
1137111476222151188969945128797252113619562499638219193695753685119112178441254646513776815961119391
1311494299181429199922894135898194891799252689612799393219881531897359146294437998966817122264298246
7869971941425993845734716136911492866591595142713692655681732461441353982895789121752626869711378115
9239951784171297254939792866381495619396182347224976131529736151479936377316511523536618939221132899
7581784265611979969632696671661117125328674794912934429399563111498429917632932111221563912112515273
7367291592679814612371895444265262975496492458115911411475523864214631973161319915171412551791413376
6143589915761117133161228522845431711285983623123914475415191119611426132353137122133138131833612241
7315896136915814193423598722861235221151383267818971821574386831514941997259725791289186442371844418
2944988532619915833681566922831548513196692639711234911281599216462185722897881931171312789137243721
3415172717189389569477924294841849972631114691111623229683952159862188171818115133384485154497599559
1443919891944499961536175263268527116362122922287285719966998199199441931137574959919144151197817839
9774211468397683929442718999171788895916913394193919232141112487256919224143149441799394272131971871
3198272448962643191324588811488161219314122782581211597498382898541626779286175517151236427512269349
2641494257999752612311911198184769891171431782812383711226539636119129192822936482141279883592179266
2119972469619139184934989573412475621816182148681881122375284211995236284989831151661817931779422112
7295958272613111691177736161533154911323159856156237541831115325212648628989877768131262418812991296
9179734481249251841492271271519693142191924942413892511575142934295889198126293312336342918151758162
1918288372217685211881621182876373641278237319193188611518466628913951431547316142239282889861971168
6481288831198825137983699584119844171277298465968692235991695699839824893811316389191284779455458926
8396111649592147388769281297398198661114743131873363398675119721739926264694823462335131594481481373
2434215191197181483294466759973649632193194912131483571345665393945693919958491191412791223154934727
7871951292356181798923129711323861114141919495144297269813147499439323419895693812252459742998597441
1574717591196738322951111198251131842829721216144119624318859125151713218899752276339146481494861892
1819991568362993452123883231325566449151533275721919561992199831792982843649316477921121367147112896
7164846864939958375749731419384111621136661946642611971828921433914128176165123794829624567184522488
4785123474241882671572457297581589514786127561961119193971931191877171612248351111414768782178179192
6227491725442145283239476196991134314139115335311416974791813981549591345151138264431591871129924992
9525981188584231132225439982816211118263916789496251772415921912198419411784321547231797226171319518
5276492419192822328129329248691592169731892693238887119782761121281198881289143311556111145762141969
3128271331163834865261684351337989624523993845875478623191688489571627219561929218973142745155346265
4193551178487292216333184531282141936739498223496986982695779191177684516564996992993218533675828331
2178191346196125243262494112463518611452132231119193528129991178147134976927614139217336689471498249
6129713279458826397211359112797612571949711626579326212321673631424994612159994119946275596513947795
3513497921274818281264559359411281941591491117122122513632133498123984489432938585627194427716713591
3735691482998186339938618867117735735847168696112281481791121411985468672769129111298118716916287399
1871918977115917121139294513119138122212125991828911437898741676491287516364929242332123121247291921
2172938726152562311291781426375458965363121645283962593961676981631211918396931794147343949131142886
3563293612799972919112123214912219918111635798791497828431231792831311217641761129849469863965344918
1199166791334792849211686283551172171219541419495341213428632733677312221229433611169995941144111147
6394369495897282264742163299416336447831867811285891952214644819921138169319196919342859116381114162
1373926897138229918126319121589683666822323221358191793312332391875371695224911132182819762271622842
1395938837219999119653897313168437621521184698183523953888133528386521187834914545761589174121311297
9148392198938912815631892856379782259177441991512171923741241392634839192197699439238712971285121718
9617115534391147936286149747257196999197226833236193228161416125387152377324271993189142587565889216
1138362373562714886584858791749611811391259594249851471911421657411858414811911739328179589614345311
2123263137952269324948912289526328291197821918189951818829272897911921983618661121229352371999183526
5364542519321819925791596927167149711914374975527491381956921757465199133213416132899957474191996977
1929347192289551889583428247594612171742195719193841918882922816292422493651515188151411754731924869
1692134868984869947615245132531711235666968796975199664129196512199668151246836942177187915931113294
7118262375923241337938127228199296914375632221737416368412524122981911769239158321157253335191842293
3265737381753813995198616644314148942312543211211966982383799621211653591584222576569677423117196363
9111924341513711995134611113399813147951464737687954215191822862835181297749588181342888512621814237
3947613151114693862482811617516971318912913889228941136129781272113943413319524119274915826444984968
5124181549192167218912741168272953789192961976729911857199221329892492339197918893411144398169336194
1485129117199312786562116458324116828444543126133413128119541914771248211512152882987215871197292423
7422889855487415671335853281581333169614425918126836514342948114194791483915918432221121929323211132
1397784733219914119249936528322918311193215184294314164148919316331195897687294516359772213253697211
4717364471215123665331721971981229594119554941752216989211613831529573361213916861111893555851517418
4475292919699311784787119799878541261915191691592987284894722138693167937451131188958781235581483286
1714644391788411669199191897458772783119829374655796257128313876192611966566911569752913319295999161
5353589995929755657711912453381161722689758111263452119611629592723857772946211138911548213132414261
2323191817916231415963297418916213749962744352527498552191811131527176211561691378514642127964489253
8152739983512395662414199891116913122891128119944989152213551956193871323119712519943171227126393112
4277581221626287191599922889219313146698155917772441677491134651142134839446179968189181111117921264
1529718132292294511939933926184891864671981421194613891858891618413249116991111313819714816391282114
2736713356811187816216326169766914131244193378437739141121325532382168695918714583941211765269841845
6861393358329912377611366412273921772179929351971811612713977218371523129424314194646292115794965959
3679491485643668398349312922716981614177469361188111177278192895776778119176811991694871925591898988
7848791135845793449869357967261811862593411114238191934518272187499291243315361136315316349516559897
2411183429933422439362133562818449269911144591895315983271911239311885918348116127395818295417142197
1149999499271716641741695755112598414296811143775898536992648741825632691771283631891964299913386859
7697191119989531956155347154456132115329827725927411161313639157441831911577982311114748522118581583
1815888198921498665618218659132911455457193212697148817464169664117619551412423137492313588316296486
9485595239675134411169618995341912442884121821776319272924315115347989581919156755236917322517294195
9781159216631418625141321358419192261944897168929996578364222131392382311288714992416184543214582115
5163463131885451189428292988121225981319219157179263733192533612392419373399148619195391911225811356
2199395612171271152392819795216311991115818792511159521265359573629956281827812821311719715781738737
2126356321322111185843117549923315199213385946175489294117624711949445499157452371358923199949713123
"""
