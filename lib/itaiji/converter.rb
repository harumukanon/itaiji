#encoding: utf-8
module Itaiji
  class Converter
    def convert_seijitai(string)
      itaiji_list.each do |itaiji_set|

        seijitai = itaiji_set.keys.first
        itaijis = itaiji_set.values.first

        string.gsub!(/#{itaijis.join('|')}/, seijitai)
      end
      string
    end

    def convert_itaiji(string)
      itaiji_list.each do |itaiji_set|

        seijitai = itaiji_set.keys.first
        itaiji = itaiji_set.values.flatten.first

        string.gsub!(/#{seijitai}/, itaiji)
      end
      string
    end

    private

    def itaiji_list
      [
        { '五' => ['乄','〆'] },
        { '亜' => ['亞'] },
        { '唖' => ['啞','瘂'] },
        { '悪' => ['惡'] },
        { '芦' => ['蘆'] },
        { '鯵' => ['鰺'] },
        { '圧' => ['壓'] },
        { '庵' => ['菴','葊'] },
        { '案' => ['桉'] },
        { '囲' => ['圍'] },
        { '為' => ['爲'] },
        { '医' => ['醫'] },
        { '育' => ['毓'] },
        { '一' => ['弌'] },
        { '壱' => ['壹'] },
        { '稲' => ['稻'] },
        { '因' => ['囙'] },
        { '姻' => ['婣'] },
        { '飲' => ['飮'] },
        { '淫' => ['婬','滛'] },
        { '隠' => ['隱'] },
        { '陰' => ['阴','隂'] },
        { '卯' => ['夘'] },
        { '丑' => ['丒'] },
        { '嘘' => ['噓'] },
        { '欝' => ['鬱'] },
        { '厩' => ['廐','廏','廄'] },
        { '叡' => ['睿'] },
        { '営' => ['營'] },
        { '映' => ['暎'] },
        { '曳' => ['曵'] },
        { '栄' => ['榮'] },
        { '穎' => ['頴'] },
        { '英' => ['偀'] },
        { '衛' => ['衞'] },
        { '詠' => ['咏'] },
        { '駅' => ['驛'] },
        { '円' => ['圓','圎'] },
        { '堰' => ['椻'] },
        { '焔' => ['焰'] },
        { '煙' => ['烟'] },
        { '縁' => ['緣'] },
        { '艶' => ['艷','豔','豓'] },
        { '鉛' => ['鈆'] },
        { '塩' => ['鹽'] },
        { '汚' => ['汙'] },
        { '奥' => ['奧'] },
        { '往' => ['徃'] },
        { '応' => ['應'] },
        { '横' => ['橫'] },
        { '欧' => ['歐'] },
        { '殴' => ['毆'] },
        { '鴬' => ['鶯','鸎'] },
        { '鴎' => ['鷗'] },
        { '黄' => ['黃'] },
        { '岡' => ['堽','崗'] },
        { '沖' => ['冲'] },
        { '温' => ['溫'] },
        { '穏' => ['穩'] },
        { '下' => ['丅'] },
        { '仮' => ['假'] },
        { '価' => ['價'] },
        { '花' => ['芲'] },
        { '嘩' => ['譁'] },
        { '蚊' => ['蚉','螡','蟁'] },
        { '峨' => ['峩'] },
        { '画' => ['畫','畵'] },
        { '臥' => ['卧'] },
        { '会' => ['會'] },
        { '解' => ['觧'] },
        { '回' => ['囘','囬'] },
        { '壊' => ['壞'] },
        { '廻' => ['廽','迴'] },
        { '怪' => ['恠'] },
        { '懐' => ['懷'] },
        { '界' => ['畍'] },
        { '絵' => ['繪'] },
        { '蟹' => ['蠏'] },
        { '開' => ['开'] },
        { '階' => ['堦'] },
        { '貝' => ['蛽'] },
        { '崖' => ['崕'] },
        { '概' => ['槩','槪'] },
        { '碍' => ['礙'] },
        { '蓋' => ['盖','葢'] },
        { '柿' => ['柹'] },
        { '蛎' => ['蠣'] },
        { '鈎' => ['鉤'] },
        { '拡' => ['擴'] },
        { '撹' => ['攪'] },
        { '殻' => ['殼','壳'] },
        { '覚' => ['覺'] },
        { '角' => ['甪'] },
        { '赫' => ['爀','焃'] },
        { '学' => ['學','斈','斅','斆'] },
        { '岳' => ['嶽'] },
        { '楽' => ['樂'] },
        { '潟' => ['澙'] },
        { '轄' => ['鎋'] },
        { '兜' => ['兠'] },
        { '竃' => ['竈','灶'] },
        { '釜' => ['釡'] },
        { '鎌' => ['鐮','劆'] },
        { '柏' => ['栢'] },
        { '萱' => ['蘐','蕿'] },
        { '粥' => ['鬻'] },
        { '乾' => ['乹','亁'] },
        { '勧' => ['勸'] },
        { '巻' => ['卷'] },
        { '寛' => ['寬'] },
        { '幹' => ['榦'] },
        { '款' => ['欵','歀'] },
        { '歓' => ['歡'] },
        { '潅' => ['灌'] },
        { '缶' => ['罐','缻'] },
        { '観' => ['觀'] },
        { '諌' => ['諫'] },
        { '鑑' => ['鑒','鍳'] },
        { '間' => ['閒'] },
        { '関' => ['關','閞'] },
        { '陥' => ['陷'] },
        { '館' => ['舘'] },
        { '巌' => ['巖','嵓'] },
        { '雁' => ['鴈','鳫'] },
        { '顔' => ['顏'] },
        { '喜' => ['憙','憘','囍'] },
        { '器' => ['噐'] },
        { '奇' => ['竒'] },
        { '既' => ['旣'] },
        { '期' => ['朞'] },
        { '棋' => ['棊'] },
        { '棄' => ['弃'] },
        { '帰' => ['歸','皈'] },
        { '気' => ['氣'] },
        { '規' => ['槼'] },
        { '亀' => ['龜','龟'] },
        { '偽' => ['僞'] },
        { '宜' => ['冝'] },
        { '戯' => ['戲','戱'] },
        { '犠' => ['犧'] },
        { '蟻' => ['螘'] },
        { '掬' => ['匊'] },
        { '却' => ['卻'] },
        { '脚' => ['腳'] },
        { '丘' => ['坵'] },
        { '窮' => ['竆','匑','穷'] },
        { '糾' => ['糺'] },
        { '旧' => ['舊'] },
        { '去' => ['厺'] },
        { '拠' => ['據'] },
        { '挙' => ['擧','舉'] },
        { '虚' => ['虛','虗'] },
        { '魚' => ['鱼'] },
        { '京' => ['亰'] },
        { '侠' => ['俠'] },
        { '協' => ['恊','旪'] },
        { '叫' => ['呌'] },
        { '峡' => ['峽'] },
        { '強' => ['强','勥','犟'] },
        { '挟' => ['挾'] },
        { '教' => ['敎'] },
        { '橋' => ['槗','桥'] },
        { '況' => ['况'] },
        { '狭' => ['狹'] },
        { '胸' => ['胷'] },
        { '郷' => ['鄕'] },
        { '暁' => ['曉'] },
        { '欣' => ['惞','俽'] },
        { '琴' => ['琹','珡'] },
        { '筋' => ['觔','竻'] },
        { '倶' => ['俱'] },
        { '区' => ['區'] },
        { '躯' => ['軀'] },
        { '駆' => ['驅','駈','敺'] },
        { '寓' => ['庽'] },
        { '靴' => ['鞾'] },
        { '窪' => ['漥'] },
        { '桑' => ['桒','枽'] },
        { '鍬' => ['鍫'] },
        { '勲' => ['勳','勛'] },
        { '薫' => ['薰'] },
        { '群' => ['羣'] },
        { '啓' => ['諬','啟','唘','啔'] },
        { '径' => ['徑','逕'] },
        { '恵' => ['惠','憓','僡'] },
        { '憩' => ['憇'] },
        { '携' => ['攜','擕'] },
        { '渓' => ['溪','谿'] },
        { '経' => ['經'] },
        { '継' => ['繼'] },
        { '繋' => ['繫'] },
        { '茎' => ['莖'] },
        { '荊' => ['荆'] },
        { '蛍' => ['螢'] },
        { '軽' => ['輕'] },
        { '頚' => ['頸'] },
        { '鶏' => ['鷄','雞'] },
        { '芸' => ['藝','秇'] },
        { '欠' => ['缺','缼'] },
        { '決' => ['决'] },
        { '倹' => ['儉'] },
        { '剣' => ['劍','劔','劒','剱','釼','劎'] },
        { '圏' => ['圈'] },
        { '検' => ['檢','撿'] },
        { '権' => ['權'] },
        { '献' => ['獻'] },
        { '県' => ['縣'] },
        { '賢' => ['臤'] },
        { '険' => ['險'] },
        { '顕' => ['顯'] },
        { '験' => ['驗','騐'] },
        { '鹸' => ['鹼','碱','醎','鹹'] },
        { '原' => ['厡'] },
        { '厳' => ['嚴'] },
        { '減' => ['减'] },
        { '袴' => ['絝'] },
        { '股' => ['脵'] },
        { '虎' => ['乕'] },
        { '鼓' => ['皷','鼔'] },
        { '呉' => ['吴','吳'] },
        { '娯' => ['娛'] },
        { '悟' => ['忢'] },
        { '侯' => ['矦'] },
        { '光' => ['灮','炗'] },
        { '効' => ['效'] },
        { '巷' => ['衖'] },
        { '広' => ['廣'] },
        { '恒' => ['恆'] },
        { '拘' => ['抅'] },
        { '晃' => ['晄'] },
        { '浩' => ['澔'] },
        { '稿' => ['稾','藳','稁'] },
        { '紘' => ['綋'] },
        { '耕' => ['畊'] },
        { '鉱' => ['鑛'] },
        { '砿' => ['礦'] },
        { '高' => ['髙'] },
        { '劫' => ['刧','刦','刼'] },
        { '号' => ['號'] },
        { '轟' => ['軣'] },
        { '国' => ['國','圀','囶','囻'] },
        { '穀' => ['糓','榖'] },
        { '黒' => ['黑'] },
        { '昏' => ['昬'] },
        { '嵯' => ['嵳'] },
        { '鎖' => ['鏁','鎻'] },
        { '歳' => ['歲','嵗'] },
        { '済' => ['濟'] },
        { '災' => ['灾','烖'] },
        { '砕' => ['碎'] },
        { '斎' => ['齋'] },
        { '剤' => ['劑'] },
        { '財' => ['戝'] },
        { '冴' => ['冱','沍'] },
        { '崎' => ['嵜','﨑'] },
        { '埼' => ['碕'] },
        { '柵' => ['栅'] },
        { '策' => ['敇'] },
        { '桜' => ['櫻'] },
        { '冊' => ['册'] },
        { '殺' => ['煞'] },
        { '雑' => ['雜','襍'] },
        { '皐' => ['皋','臯'] },
        { '晒' => ['曬'] },
        { '三' => ['弎'] },
        { '傘' => ['仐','伞'] },
        { '参' => ['參','叄','叅'] },
        { '惨' => ['慘'] },
        { '桟' => ['棧'] },
        { '蚕' => ['蠶'] },
        { '讃' => ['讚'] },
        { '賛' => ['贊'] },
        { '餐' => ['湌'] },
        { '残' => ['殘'] },
        { '四' => ['亖'] },
        { '姉' => ['姊'] },
        { '糸' => ['絲'] },
        { '紙' => ['帋'] },
        { '視' => ['眎','眂','眡'] },
        { '歯' => ['齒'] },
        { '事' => ['亊','叓'] },
        { '児' => ['兒'] },
        { '時' => ['时','峕'] },
        { '爾' => ['尓','尔'] },
        { '璽' => ['壐','玺'] },
        { '辞' => ['辭'] },
        { '湿' => ['濕','溼'] },
        { '質' => ['貭'] },
        { '実' => ['實','实'] },
        { '篠' => ['筱'] },
        { '蕊' => ['蘂','蕋','蘃'] },
        { '舎' => ['舍'] },
        { '写' => ['冩','寫'] },
        { '煮' => ['煑'] },
        { '蛇' => ['虵'] },
        { '釈' => ['釋'] },
        { '守' => ['垨'] },
        { '呪' => ['咒'] },
        { '寿' => ['壽'] },
        { '収' => ['收'] },
        { '秋' => ['秌','穐','龝'] },
        { '繍' => ['繡'] },
        { '臭' => ['狊'] },
        { '衆' => ['乑','眾'] },
        { '讐' => ['讎'] },
        { '蹴' => ['蹵'] },
        { '酬' => ['酧'] },
        { '従' => ['從'] },
        { '渋' => ['澁','澀'] },
        { '獣' => ['獸'] },
        { '縦' => ['縱'] },
        { '粛' => ['肅'] },
        { '淳' => ['湻'] },
        { '準' => ['凖'] },
        { '醇' => ['醕'] },
        { '処' => ['處'] },
        { '叙' => ['敍','敘'] },
        { '嘗' => ['甞'] },
        { '奨' => ['奬','獎'] },
        { '将' => ['將'] },
        { '廠' => ['厰'] },
        { '昇' => ['曻'] },
        { '松' => ['枩','柗','梥','枀'] },
        { '渉' => ['涉'] },
        { '焼' => ['燒'] },
        { '照' => ['瞾'] },
        { '称' => ['稱','穪'] },
        { '蒋' => ['蔣'] },
        { '証' => ['證'] },
        { '醤' => ['醬'] },
        { '上' => ['丄'] },
        { '乗' => ['乘'] },
        { '冗' => ['宂'] },
        { '剰' => ['剩'] },
        { '場' => ['塲'] },
        { '壌' => ['壤'] },
        { '嬢' => ['孃'] },
        { '条' => ['條'] },
        { '浄' => ['淨'] },
        { '状' => ['狀'] },
        { '畳' => ['疊','疉','疂','叠'] },
        { '穣' => ['穰'] },
        { '譲' => ['讓'] },
        { '醸' => ['釀'] },
        { '嘱' => ['囑'] },
        { '飾' => ['餝','餙'] },
        { '職' => ['軄'] },
        { '触' => ['觸'] },
        { '唇' => ['脣'] },
        { '伸' => ['訷'] },
        { '寝' => ['寢'] },
        { '審' => ['宷'] },
        { '慎' => ['愼'] },
        { '晋' => ['晉'] },
        { '真' => ['眞'] },
        { '刃' => ['刄'] },
        { '尽' => ['盡'] },
        { '靭' => ['靫','靱','韌'] },
        { '酢' => ['醋'] },
        { '圖' => ['図','啚','圗'] },
        { '厨' => ['廚','橱'] },
        { '垂' => ['埀'] },
        { '粋' => ['粹'] },
        { '水' => ['氺'] },
        { '翠' => ['翆'] },
        { '酔' => ['醉'] },
        { '随' => ['隨'] },
        { '髄' => ['膸','髓'] },
        { '数' => ['數'] },
        { '枢' => ['樞'] },
        { '雛' => ['鶵'] },
        { '杉' => ['椙','杦'] },
        { '澄' => ['澂'] },
        { '世' => ['丗','卋'] },
        { '瀬' => ['瀨'] },
        { '畝' => ['畆','畒'] },
        { '是' => ['昰'] },
        { '凄' => ['淒'] },
        { '勢' => ['势'] },
        { '整' => ['愸'] },
        { '晴' => ['暒'] },
        { '棲' => ['栖','捿'] },
        { '清' => ['淸'] },
        { '声' => ['聲'] },
        { '青' => ['靑'] },
        { '静' => ['靜'] },
        { '齊' => ['斉'] },
        { '齊' => ['亝'] },
        { '齊' => ['斊'] },
        { '税' => ['稅'] },
        { '脆' => ['脃'] },
        { '摂' => ['攝'] },
        { '説' => ['說'] },
        { '窃' => ['竊'] },
        { '絶' => ['絕'] },
        { '蝉' => ['蟬'] },
        { '専' => ['專'] },
        { '戦' => ['戰'] },
        { '浅' => ['淺'] },
        { '潜' => ['潛','濳'] },
        { '線' => ['綫'] },
        { '繊' => ['纖','纎'] },
        { '船' => ['舩'] },
        { '賎' => ['賤'] },
        { '践' => ['踐'] },
        { '銭' => ['錢'] },
        { '前' => ['歬'] },
        { '善' => ['譱'] },
        { '禅' => ['禪'] },
        { '膳' => ['饍'] },
        { '曽' => ['曾'] },
        { '疎' => ['踈'] },
        { '蘇' => ['蘓'] },
        { '遡' => ['溯'] },
        { '鼠' => ['鼡'] },
        { '双' => ['雙'] },
        { '壮' => ['壯'] },
        { '匝' => ['帀'] },
        { '捜' => ['搜'] },
        { '挿' => ['插','揷'] },
        { '掻' => ['搔'] },
        { '曹' => ['曺'] },
        { '巣' => ['巢'] },
        { '争' => ['爭'] },
        { '痩' => ['瘦','膄'] },
        { '窓' => ['窗','牕','牎','窻'] },
        { '総' => ['總','緫','縂'] },
        { '聡' => ['聰','聦','聪'] },
        { '荘' => ['莊','庄','庒'] },
        { '葬' => ['塟'] },
        { '装' => ['裝'] },
        { '走' => ['赱'] },
        { '騒' => ['騷'] },
        { '増' => ['增'] },
        { '臓' => ['臟'] },
        { '蔵' => ['藏'] },
        { '即' => ['卽'] },
        { '属' => ['屬'] },
        { '続' => ['續'] },
        { '卒' => ['卆'] },
        { '多' => ['夛'] },
        { '堕' => ['墮'] },
        { '舵' => ['柁'] },
        { '楕' => ['橢'] },
        { '陀' => ['陁'] },
        { '駄' => ['馱'] },
        { '騨' => ['驒'] },
        { '体' => ['躰','軆','體','骵'] },
        { '堆' => ['垖'] },
        { '対' => ['對'] },
        { '帯' => ['帶'] },
        { '滞' => ['滯'] },
        { '袋' => ['帒'] },
        { '台' => ['臺'] },
        { '滝' => ['瀧'] },
        { '卓' => ['桌'] },
        { '択' => ['擇'] },
        { '沢' => ['澤'] },
        { '鐸' => ['鈬'] },
        { '達' => ['逹'] },
        { '竪' => ['豎'] },
        { '狸' => ['貍'] },
        { '単' => ['單','单'] },
        { '担' => ['擔'] },
        { '箪' => ['簞'] },
        { '耽' => ['躭'] },
        { '胆' => ['膽'] },
        { '鍛' => ['煅'] },
        { '団' => ['團'] },
        { '弾' => ['彈'] },
        { '断' => ['斷'] },
        { '恥' => ['耻'] },
        { '痴' => ['癡'] },
        { '稚' => ['穉','稺'] },
        { '遅' => ['遲'] },
        { '蓄' => ['稸'] },
        { '昼' => ['晝'] },
        { '虫' => ['蟲'] },
        { '鋳' => ['鑄'] },
        { '瀦' => ['潴'] },
        { '猪' => ['豬'] },
        { '帳' => ['賬'] },
        { '庁' => ['廳','廰'] },
        { '徴' => ['徵'] },
        { '町' => ['甼'] },
        { '聴' => ['聽'] },
        { '腸' => ['膓'] },
        { '長' => ['镸'] },
        { '勅' => ['敕','勑','欶'] },
        { '沈' => ['沉'] },
        { '珍' => ['珎'] },
        { '鎮' => ['鎭'] },
        { '掴' => ['摑'] },
        { '壷' => ['壺'] },
        { '鶴' => ['寉','靎','靍','靏'] },
        { '堤' => ['埞'] },
        { '碇' => ['椗'] },
        { '蹄' => ['蹏'] },
        { '逓' => ['遞'] },
        { '泥' => ['坭'] },
        { '哲' => ['喆','嚞','埑','悊'] },
        { '鉄' => ['銕','鐵','鐡'] },
        { '填' => ['塡'] },
        { '纏' => ['纒'] },
        { '転' => ['轉'] },
        { '顛' => ['顚'] },
        { '点' => ['點'] },
        { '伝' => ['傳'] },
        { '兎' => ['兔','莵'] },
        { '砺' => ['礪'] },
        { '努' => ['伮'] },
        { '土' => ['圡'] },
        { '党' => ['黨'] },
        { '島' => ['嶌','嶋','隝'] },
        { '梼' => ['檮'] },
        { '盗' => ['盜'] },
        { '涛' => ['濤'] },
        { '灯' => ['燈'] },
        { '当' => ['當'] },
        { '祷' => ['禱'] },
        { '統' => ['綂'] },
        { '逃' => ['迯'] },
        { '闘' => ['鬪'] },
        { '働' => ['仂'] },
        { '同' => ['仝'] },
        { '道' => ['衟'] },
        { '徳' => ['德','悳'] },
        { '涜' => ['瀆'] },
        { '独' => ['獨'] },
        { '読' => ['讀'] },
        { '栃' => ['杤'] },
        { '突' => ['宊'] },
        { '届' => ['屆'] },
        { '酉' => ['丣'] },
        { '呑' => ['吞'] },
        { '奈' => ['柰'] },
        { '内' => ['內'] },
        { '縄' => ['繩'] },
        { '楠' => ['枏','柟'] },
        { '二' => ['弍'] },
        { '弐' => ['貳','貮'] },
        { '迩' => ['邇'] },
        { '韮' => ['韭'] },
        { '妊' => ['姙'] },
        { '祢' => ['禰'] },
        { '廼' => ['迺'] },
        { '野' => ['壄','墅','埜'] },
        { '嚢' => ['囊'] },
        { '悩' => ['惱'] },
        { '脳' => ['腦'] },
        { '覇' => ['霸'] },
        { '罵' => ['駡'] },
        { '廃' => ['廢'] },
        { '拝' => ['拜'] },
        { '敗' => ['贁'] },
        { '杯' => ['盃','桮'] },
        { '輩' => ['軰'] },
        { '梅' => ['楳'] },
        { '売' => ['賣'] },
        { '蝿' => ['蠅','蝇'] },
        { '矧' => ['矤'] },
        { '剥' => ['剝'] },
        { '迫' => ['廹'] },
        { '麦' => ['麥'] },
        { '函' => ['凾'] },
        { '肇' => ['肈'] },
        { '櫨' => ['枦'] },
        { '鉢' => ['缽'] },
        { '溌' => ['潑'] },
        { '発' => ['發'] },
        { '醗' => ['醱'] },
        { '髪' => ['髮'] },
        { '罰' => ['罸'] },
        { '抜' => ['拔'] },
        { '筏' => ['栰'] },
        { '飯' => ['飰'] },
        { '蛮' => ['蠻'] },
        { '秘' => ['祕'] },
        { '備' => ['僃','俻','偹'] },
        { '毘' => ['毗'] },
        { '稗' => ['薭'] },
        { '髭' => ['頾'] },
        { '彦' => ['彥'] },
        { '弼' => ['弻'] },
        { '筆' => ['笔'] },
        { '桧' => ['檜'] },
        { '姫' => ['姬'] },
        { '氷' => ['冰'] },
        { '廟' => ['庿','庙'] },
        { '彬' => ['斌','份'] },
        { '浜' => ['濱','濵'] },
        { '賓' => ['賔'] },
        { '瓶' => ['甁'] },
        { '富' => ['冨'] },
        { '敷' => ['旉'] },
        { '普' => ['暜'] },
        { '膚' => ['肤'] },
        { '譜' => ['諩'] },
        { '舞' => ['儛'] },
        { '部' => ['郶'] },
        { '風' => ['凬','凮','凨'] },
        { '淵' => ['渕','渊'] },
        { '払' => ['拂'] },
        { '仏' => ['佛'] },
        { '併' => ['倂'] },
        { '幣' => ['幤'] },
        { '並' => ['竝'] },
        { '閉' => ['閇'] },
        { '箆' => ['篦'] },
        { '変' => ['變'] },
        { '辺' => ['邊','邉'] },
        { '弁' => ['辨','辧','瓣','辯'] },
        { '舗' => ['舖','鋪'] },
        { '歩' => ['步'] },
        { '穂' => ['穗'] },
        { '宝' => ['寶','寳','珤','寚'] },
        { '峰' => ['峯'] },
        { '法' => ['灋'] },
        { '萌' => ['萠'] },
        { '蜂' => ['蠭'] },
        { '褒' => ['襃'] },
        { '豊' => ['豐'] },
        { '冒' => ['冐'] },
        { '貌' => ['皃'] },
        { '頬' => ['頰'] },
        { '没' => ['沒'] },
        { '幌' => ['縨'] },
        { '本' => ['夲'] },
        { '翻' => ['飜'] },
        { '凡' => ['凢'] },
        { '麻' => ['蔴'] },
        { '毎' => ['每'] },
        { '槙' => ['槇'] },
        { '桝' => ['枡'] },
        { '侭' => ['儘'] },
        { '万' => ['萬'] },
        { '満' => ['滿'] },
        { '漫' => ['澷','熳'] },
        { '蓑' => ['簑','簔'] },
        { '脈' => ['脉','衇'] },
        { '妙' => ['玅','竗'] },
        { '夢' => ['梦','夣'] },
        { '無' => ['无'] },
        { '婿' => ['壻','聟'] },
        { '明' => ['朙'] },
        { '面' => ['靣'] },
        { '麺' => ['麪','麫','麵','糆'] },
        { '猛' => ['勐'] },
        { '黙' => ['默','嘿'] },
        { '餅' => ['餠'] },
        { '弥' => ['彌'] },
        { '矢' => ['笶'] },
        { '薬' => ['藥'] },
        { '訳' => ['譯'] },
        { '柳' => ['栁','桺'] },
        { '薮' => ['籔','藪'] },
        { '癒' => ['瘉'] },
        { '勇' => ['勈'] },
        { '予' => ['豫'] },
        { '余' => ['餘'] },
        { '与' => ['與'] },
        { '誉' => ['譽'] },
        { '揺' => ['搖'] },
        { '様' => ['樣'] },
        { '窯' => ['窰'] },
        { '耀' => ['燿'] },
        { '謡' => ['謠'] },
        { '踊' => ['踴'] },
        { '陽' => ['阳','阦'] },
        { '養' => ['羪'] },
        { '裸' => ['躶'] },
        { '来' => ['來'] },
        { '莱' => ['萊'] },
        { '頼' => ['賴'] },
        { '雷' => ['靁'] },
        { '乱' => ['亂'] },
        { '覧' => ['覽'] },
        { '李' => ['杍'] },
        { '梨' => ['棃'] },
        { '裏' => ['裡'] },
        { '略' => ['畧'] },
        { '溜' => ['澑'] },
        { '留' => ['畄','畱'] },
        { '竜' => ['龍'] },
        { '両' => ['兩'] },
        { '涼' => ['凉'] },
        { '猟' => ['獵'] },
        { '瞭' => ['暸'] },
        { '糧' => ['粮'] },
        { '緑' => ['綠'] },
        { '隣' => ['鄰'] },
        { '瑠' => ['璢'] },
        { '塁' => ['壘'] },
        { '涙' => ['泪'] },
        { '類' => ['类'] },
        { '励' => ['勵'] },
        { '礼' => ['禮'] },
        { '隷' => ['隸'] },
        { '霊' => ['靈','灵','霛'] },
        { '齢' => ['齡'] },
        { '暦' => ['曆'] },
        { '歴' => ['歷'] },
        { '恋' => ['戀'] },
        { '聯' => ['聨'] },
        { '炉' => ['爐'] },
        { '労' => ['勞','劳'] },
        { '婁' => ['娄'] },
        { '朗' => ['朖'] },
        { '楼' => ['樓'] },
        { '篭' => ['籠'] },
        { '蝋' => ['蠟'] },
        { '禄' => ['祿','禒'] },
        { '録' => ['錄'] },
        { '和' => ['咊'] },
        { '亘' => ['亙'] },
        { '湾' => ['灣'] },
        { '碗' => ['埦'] },
        { '仞' => ['仭'] },
        { '佇' => ['伫'] },
        { '俎' => ['爼'] },
        { '倅' => ['伜'] },
        { '倆' => ['俩'] },
        { '僊' => ['僲'] },
        { '僭' => ['僣'] },
        { '儔' => ['俦'] },
        { '冉' => ['冄'] },
        { '胄' => ['伷'] },
        { '冤' => ['寃'] },
        { '冦' => ['寇','宼'] },
        { '冪' => ['羃'] },
        { '冽' => ['洌'] },
        { '凅' => ['涸'] },
        { '凛' => ['凜'] },
        { '刊' => ['刋'] },
        { '剋' => ['尅'] },
        { '剳' => ['箚','劄'] },
        { '匆' => ['匇'] },
        { '匯' => ['滙'] },
        { '匳' => ['奩','匲','奁'] },
        { '卮' => ['巵'] },
        { '厖' => ['庬'] },
        { '厠' => ['廁'] },
        { '厦' => ['廈'] },
        { '厮' => ['廝'] },
        { '燮' => ['爕'] },
        { '吽' => ['呍'] },
        { '咤' => ['咜','吒'] },
        { '喀' => ['咯'] },
        { '嗅' => ['齅'] },
        { '嘔' => ['呕'] },
        { '嘯' => ['嘨'] },
        { '噪' => ['譟'] },
        { '嚔' => ['嚏'] },
        { '囓' => ['齧'] },
        { '址' => ['阯'] },
        { '埒' => ['埓'] },
        { '塹' => ['壍'] },
        { '壜' => ['罎'] },
        { '壟' => ['壠'] },
        { '夾' => ['夹'] },
        { '奘' => ['弉'] },
        { '佞' => ['侫'] },
        { '妍' => ['姸'] },
        { '嫋' => ['嬝'] },
        { '嫦' => ['姮'] },
        { '嫩' => ['嫰'] },
        { '嫺' => ['嫻'] },
        { '嬲' => ['嫐'] },
        { '尠' => ['尟'] },
        { '尢' => ['尣'] },
        { '屏' => ['屛'] },
        { '崑' => ['崐'] },
        { '崙' => ['崘'] },
        { '嵌' => ['篏'] },
        { '嶢' => ['嶤'] },
        { '巒' => ['峦'] },
        { '幇' => ['幚','幫'] },
        { '廸' => ['迪'] },
        { '彝' => ['彜'] },
        { '彎' => ['弯'] },
        { '彑' => ['彐'] },
        { '彗' => ['蔧'] },
        { '彿' => ['髴'] },
        { '徊' => ['佪'] },
        { '很' => ['佷'] },
        { '徇' => ['狥'] },
        { '徭' => ['傜'] },
        { '怱' => ['忩','悤'] },
        { '悍' => ['猂'] },
        { '悋' => ['恡'] },
        { '悴' => ['忰'] },
        { '慍' => ['愠'] },
        { '愨' => ['慤'] },
        { '愧' => ['媿'] },
        { '慙' => ['慚'] },
        { '憖' => ['憗','慭'] },
        { '憔' => ['嫶'] },
        { '憚' => ['惮'] },
        { '憑' => ['慿'] },
        { '懣' => ['懑'] },
        { '懺' => ['懴'] },
        { '戛' => ['戞'] },
        { '扠' => ['扨'] },
        { '捏' => ['揑'] },
        { '擡' => ['抬'] },
        { '攬' => ['擥'] },
        { '攅' => ['攢'] },
        { '攣' => ['挛'] },
        { '攫' => ['爴'] },
        { '斟' => ['酙'] },
        { '旆' => ['斾'] },
        { '旛' => ['旙'] },
        { '晢' => ['晣'] },
        { '曠' => ['昿'] },
        { '朶' => ['朵'] },
        { '傑' => ['杰'] },
        { '档' => ['檔'] },
        { '椢' => ['槶'] },
        { '棕' => ['椶'] },
        { '楫' => ['檝'] },
        { '槁' => ['槀'] },
        { '榴' => ['橊'] },
        { '槞' => ['櫳'] },
        { '樅' => ['枞'] },
        { '樒' => ['櫁'] },
        { '檗' => ['蘗'] },
        { '櫟' => ['檪'] },
        { '欅' => ['櫸'] },
        { '櫺' => ['欞','棂'] },
        { '欒' => ['栾'] },
        { '歟' => ['欤'] },
        { '歿' => ['殁'] },
        { '殲' => ['殱'] },
        { '毟' => ['毮'] },
        { '氈' => ['毡','氊'] },
        { '汳' => ['汴'] },
        { '泯' => ['冺'] },
        { '洶' => ['汹'] },
        { '滾' => ['滚'] },
        { '滲' => ['渗','涁'] },
        { '潸' => ['澘'] },
        { '澳' => ['澚'] },
        { '炯' => ['烱'] },
        { '煕' => ['熈','熙','凞'] },
        { '熏' => ['燻'] },
        { '熹' => ['暿','熺'] },
        { '燼' => ['烬'] },
        { '爿' => ['丬'] },
        { '犂' => ['犁'] },
        { '犲' => ['豺'] },
        { '狢' => ['貉'] },
        { '倏' => ['倐'] },
        { '猊' => ['貎'] },
        { '猯' => ['貒'] },
        { '猩' => ['狌'] },
        { '獏' => ['貘'] },
        { '玳' => ['瑇'] },
        { '琅' => ['瑯'] },
        { '瑙' => ['碯'] },
        { '瑶' => ['瑤'] },
        { '瓔' => ['珱'] },
        { '甌' => ['瓯'] },
        { '畭' => ['畬','畲'] },
        { '疆' => ['壃','畺','疅'] },
        { '疇' => ['畴'] },
        { '疣' => ['肬'] },
        { '瘤' => ['癅'] },
        { '瘻' => ['瘘'] },
        { '癇' => ['癎'] },
        { '皎' => ['晈'] },
        { '皖' => ['晥'] },
        { '皸' => ['皹'] },
        { '盪' => ['蘯'] },
        { '眥' => ['眦'] },
        { '眷' => ['睠'] },
        { '瞠' => ['瞪'] },
        { '瞰' => ['矙'] },
        { '矚' => ['瞩'] },
        { '稟' => ['禀'] },
        { '筐' => ['筺'] },
        { '笄' => ['筓'] },
        { '筍' => ['笋','箰'] },
        { '箏' => ['筝'] },
        { '籌' => ['筹'] },
        { '籐' => ['籘'] },
        { '籤' => ['籖'] },
        { '粳' => ['稉','秔'] },
        { '粽' => ['糭'] },
        { '絅' => ['綗'] },
        { '絋' => ['絖','纊'] },
        { '絆' => ['靽'] },
        { '絛' => ['縧'] },
        { '繦' => ['繈'] },
        { '繃' => ['綳'] },
        { '纃' => ['緕'] },
        { '纉' => ['纘'] },
        { '罌' => ['甇'] },
        { '网' => ['罒','罓'] },
        { '羈' => ['羇','覊'] },
        { '羹' => ['羮'] },
        { '耋' => ['耊'] },
        { '胚' => ['肧'] },
        { '腆' => ['倎'] },
        { '脾' => ['腗'] },
        { '胼' => ['腁'] },
        { '膂' => ['膐'] },
        { '膣' => ['腟'] },
        { '膾' => ['脍'] },
        { '臘' => ['臈'] },
        { '艫' => ['舮'] },
        { '艱' => ['囏'] },
        { '苡' => ['苢'] },
        { '苺' => ['莓'] },
        { '茘' => ['荔'] },
        { '莅' => ['蒞'] },
        { '莢' => ['荚'] },
        { '萼' => ['蕚'] },
        { '薺' => ['萕'] },
        { '藜' => ['蔾'] },
        { '蘊' => ['藴','薀','蕰'] },
        { '虱' => ['蝨'] },
        { '蚋' => ['蜹'] },
        { '蛛' => ['蟵'] },
        { '雖' => ['虽'] },
        { '蟇' => ['蟆'] },
        { '螻' => ['蝼'] },
        { '蠎' => ['蟒'] },
        { '蠹' => ['蠧','螙'] },
        { '衄' => ['衂'] },
        { '袞' => ['衮'] },
        { '衽' => ['袵'] },
        { '裙' => ['裠'] },
        { '裴' => ['裵'] },
        { '褓' => ['緥'] },
        { '襌' => ['褝'] },
        { '襠' => ['裆'] },
        { '襭' => ['擷'] },
        { '襾' => ['覀'] },
        { '覓' => ['覔'] },
        { '訶' => ['哬'] },
        { '謚' => ['諡'] },
        { '謫' => ['讁'] },
        { '譖' => ['譛'] },
        { '谺' => ['岈'] },
        { '貂' => ['鼦'] },
        { '貔' => ['豼'] },
        { '齎' => ['賷','賫'] },
        { '贓' => ['賍','贜'] },
        { '蹶' => ['蹷'] },
        { '躊' => ['踌'] },
        { '躙' => ['躪'] },
        { '躬' => ['躳'] },
        { '輙' => ['輒'] },
        { '輜' => ['輺'] },
        { '輌' => ['輛'] },
        { '轜' => ['輀'] },
        { '辣' => ['辢'] },
        { '迥' => ['逈'] },
        { '遒' => ['逎'] },
        { '邁' => ['迈'] },
        { '釁' => ['舋','衅'] },
        { '鉈' => ['鉇'] },
        { '銜' => ['衘'] },
        { '銷' => ['焇'] },
        { '錙' => ['鍿'] },
        { '鏥' => ['鏽'] },
        { '鑪' => ['鈩'] },
        { '鑽' => ['鑚'] },
        { '閙' => ['鬧'] },
        { '閹' => ['剦'] },
        { '闊' => ['濶'] },
        { '闃' => ['閴'] },
        { '陜' => ['陿'] },
        { '陟' => ['徏'] },
        { '陦' => ['隯'] },
        { '隲' => ['騭'] },
        { '雋' => ['隽'] },
        { '韜' => ['鞱'] },
        { '齏' => ['韲'] },
        { '韻' => ['韵','匀'] },
        { '頤' => ['頥'] },
        { '頽' => ['頹'] },
        { '飄' => ['飃'] },
        { '飆' => ['颷','飈','飇','飊'] },
        { '駢' => ['騈'] },
        { '騾' => ['驘'] },
        { '驕' => ['憍'] },
        { '驢' => ['馿'] },
        { '髯' => ['髥'] },
        { '鬢' => ['鬂','髩','鬓'] },
        { '鰮' => ['鰛'] },
        { '鰤' => ['魳'] },
        { '鱸' => ['魲'] },
        { '鳧' => ['鳬'] },
        { '鴉' => ['鵶'] },
        { '鴟' => ['鵄'] },
        { '鵝' => ['鵞'] },
        { '鶇' => ['鶫'] },
        { '鶤' => ['鵾'] },
        { '鷆' => ['鷏'] },
        { '麩' => ['麸','麬'] },
        { '鼈' => ['鱉'] },
        { '齔' => ['齓'] },
        { '齶' => ['腭'] },
        { '役' => ['伇'] },
        { '兪' => ['俞'] },
        { '偬' => ['傯'] },
        { '慢' => ['僈'] },
        { '兌' => ['兊'] },
        { '凭' => ['凴'] },
        { '別' => ['别'] },
        { '剏' => ['刱','剙'] },
        { '刹' => ['剎'] },
        { '戮' => ['剹'] },
        { '劃' => ['劐'] },
        { '勁' => ['劲'] },
        { '廿' => ['卄'] },
        { '率' => ['卛'] },
        { '艸' => ['卝'] },
        { '膝' => ['厀'] },
        { '夬' => ['叏'] },
        { '尉' => ['叞'] },
        { '難' => ['叵'] },
        { '告' => ['吿'] },
        { '呱' => ['哌'] },
        { '嚇' => ['哧'] },
        { '邑' => ['唈'] },
        { '奸' => ['姧','姦'] },
        { '寧' => ['寜'] },
        { '尚' => ['尙'] },
        { '尩' => ['尫'] },
        { '屡' => ['屢'] },
        { '寅' => ['帍'] },
        { '寅' => ['刁'] },
        { '并' => ['幷'] },
        { '奕' => ['弈'] },
        { '於' => ['扵'] },
        { '校' => ['挍'] },
        { '槌' => ['搥'] },
        { '撲' => ['擈'] },
        { '撃' => ['擊'] },
        { '晩' => ['晚'] },
        { '斗' => ['枓'] },
        { '櫃' => ['樻'] },
        { '毀' => ['毁'] },
        { '得' => ['淂'] },
        { '嗽' => ['潄'] },
        { '恢' => ['烣'] },
        { '亟' => ['焏'] },
        { '烽' => ['熢'] },
        { '執' => ['犱'] },
        { '盆' => ['瓫'] },
        { '産' => ['產'] },
        { '示' => ['礻'] },
        { '年' => ['秊'] },
        { '牢' => ['窂'] },
        { '芒' => ['笀'] },
        { '算' => ['笇','筭'] },
        { '芽' => ['笌'] },
        { '苳' => ['笗'] },
        { '緒' => ['緖'] },
        { '承' => ['羕'] },
        { '羨' => ['羡'] },
        { '脱' => ['脫'] },
        { '節' => ['莭'] },
        { '暫' => ['蹔'] },
        { '鳳' => ['鳯'] },
        { '麹' => ['麴'] },
        { '麼' => ['麽'] },
        { '癸' => ['关'] },
        { '簡' => ['蕳'] },
        { '閏' => ['閠','壬'] },
        { '園' => ['薗','苑'] },
        { '歌' => ['謌','哥'] },
        { '旗' => ['籏','簱'] },
        { '競' => ['竸','竞'] },
        { '尭' => ['堯'] },
        { '跡' => ['蹟','迹'] },
        { '湧' => ['涌'] },
        { '遥' => ['遙'] },
        { '累' => ['縲'] },
        { '墻' => ['牆','墙'] },
        { '郎' => ['郞'] },
        { '悦' => ['悅'] },
        { '惧' => ['懼'] },
        { '芻' => ['蒭'] },
        { '襪' => ['韈'] },
        { '注' => ['註'] }
      ]
    end
  end
end
