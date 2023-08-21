//: [Previous](@previous)

import Foundation

func repeatedSubstringPattern(_ s: String) -> Bool {
    let t = s + s
    let processT = t[t.index(after: t.startIndex)..<t.index(before: t.endIndex)]
    if (processT.contains(s)) {
        return true
    }
    else {
        return false
    }
}
//let s = "ababc"
let s = "zodwlwuxknpezmxxeksvyymlqyheptepjilxeiurxlvzasweerbcpnphnzmdssueahbhpvynivmiqioubqzqfqavpmaieumhbpqrkqgulsdbcryejzwrpwofioppkbylsoecekwrebvhvtleshxheloobdflgdxyrdcvobnsckbxdoexybgcnvsoaychbbfveksulhpnrqlwfptdsahfxbwxbyefbmafwsahcpwthjqmajrtlaykcwidwoixcifadfjfwgafrquscllpmlaoiktgacgdmlfpsrwozxvqppirbthphjfrtyxtadypogegxdwwasmpjxjmsqbzbgquhopjtqykwfqtippkjdbsakfvciudplzybphwfggblzwvqnfzqitttaoxjkbaxcyarfxynfzygxvwkaxdjtyetobeyeewheyamxzzdaajyvikyfnjalnubqaaxfyglwgxuhxzizkiussuaidavswxjxziezopvwnrgmsqndyjvsexahyyauxltwvxvlnshcmpqefdjdmhyqeaaeyczvnstksovfhehvuzzzclfqsdjwdjbelczawtmojhtslcnfdpffakysphqssrwfvyhsttgcacvngkvkzarbmpvbymvsfuxbsgvlzdpbfmroxmyyopachvfhjaapuzsognzhqrlwdekaqkzebbiiwnsgnsxktpybcajsrwquacxsmwyqzgaxtsfimcsgrthvtsqmqiislfkzdipcqqajkfuximdbhmxcfpoxxzqieckilbkdtmpesjbcxgdfucjbrazpzpzdrlnepyiikzoeirghxkmsoytgyuxxjycdmqhbqrjasyhapnkpzyjowewuzttitwnfmxgcqqejqllhbvwaufoqkkljfgtbchgqensufzdxmrenmdogiexurkfyqzzviglovgicfobrffhtivatbxnsjvrbwqweyisvocxvsyozgvtostjuszmdufeqybwwlqubsrwnskoyghoycyuwzjzvoelohjnszhttyrgsbvqjefkjfefgnhbenmsuvfowojppayhdvypbfzkmfsstztzmhtiebwapfrefpmkkmzmtyyfgqzzrsadztlfuhfmoyqtoegaqfolgnqmfpnxjnckiopdxwpmvhhlmplevcqbrinwyavjpyuxolankrbfzlsnafrvhjyyslxsnubcuxailcyvwzcvmuknzdkhnjhfwgxmbaovyqgjtggpfimucwhbztkoeutbasndtdztwhepnkguuuowsxztrmivgdyiwnmrtnmpwsgjemfyiwwatvvmjdkphiafymyrbkgxemiianikjekfbfrllbaumczkozdpllopzwzzkhlvnvaocuzpxcjjekvvjymujblixkjjtuhgrjvwdwlbyvmfhiargmnspbaplmahihpatkywjjzjgmoqwqhcfwuuxxlllmstvhvoutnffmonafdwvmbalxxiwivhupdqzygvutabgoqitufriirtfqeczzjvronqnuljnlmvbcgxylohthcaygcziouzckprgccvporqrzprmdafldhllkktygucqluynwucnntemkxyoyfbbmomwyiwgczzovxdrrgeebkqliobitcjgqxeqhbxkcyaxvdqplxtmhmarcbzwekewkknrnmdpmfohlfyweujlgjfikggqtmpfxewkqccehsluxmrbgcpmnwwzcdsxrhcolbbdddhmvuhvgaymcpyrlxqqainrpsictjfyomklhtgnvhcxwaqkxhazrpthjdlcmraadnnmiuaebedzeujedlfudadmdprpgrrlgfypbaveeyfkurqxcwshyxwcmntugngnugevgzbkzgwuxnrcllljjhlxufudsasmgwjoxkywsuqqjkuuxfeinpgjucmocgckclybxyyqsqieccychckwssiouwfydhihvgjuejmzbudeybgigseylmohjtgodovyxgubphcrbfxcjfkpxqpkfdsqzaecobcliwpxdrqhznjksvzslqeqtyisymwnoaawxrvcjmjkzuuuptodjsvetezrsxgiyjevacxjojtnfpjxizatuxandzewynewwlrwnribcdqhtcgdbgzvgbijapfaemxazqymjiplohvhjdmlmnisotbqijrmxoowgokqxzdlgauseifqynkmgldqwwetmsrsjbkgcotjqpduzimxxwkekpuinbeztvtczekbufmkwphwzvvxshbewxolysmuqgypmlqgsfspuznuxitpqwvotjcueoquuolibbquijlfkybhiuyaqvrlftflhvfemqmntdjcouhauiideifuewflrnwzkdfwttmoyvsmqbpklxpphvjntrynewmoztnsmzjnwbbmdqzopogxlpkhglumhibhdobrpmelogatwzjmppldhvmpigcqqdzttakknrxdxxytyjhozstiqfxynzqfepyzskjhbjmygkuftdvuwqcovcmkbdpguphmztvdchditxppbmjzconxqbjteybbnjppclseuvoovedwsoxvekuwleqscrtsckhevbkswzgrflpxzmsgwncktscxmxpohytfzfxyefplqhlrtdxssacnuglgfcvmbqtcvsaaxsnnzyhueeoygsmbyzhdbcseslhqgjsdbftceazkgningwqevxkxccbwpkmvuebxmuaswzccomrujhbehlblpfhgpwejafhmbjexkibyvvteeuinhmyyrggiekserbtskzruivsfsnjwjtkqfkqysxhwjbdbcwvoxpkhmcmesxcbrouyzkzrjiqtjtwnptboilwwpkahiflbtfbupaobieutxsiollcuyaqoltxvaiwtnzqfaegkicghuovfazbyauonpmipwgkmfathgbsqdyxzmugmuknugbhxprmmxyacbtkhueazexaquifouuiavrxnilbhkbllwxusburfutyodfcyzmyufyhpjiwtlhghhbzkxsqrnqhrvlpuzpqenavxkrqwbzdkafuzxmtncaezmttnimuwmpvyhnukmauohooedhtfhxfvsaldmfbauwzdjvpwvlkccyjfhckrcpouszzeeahbwgeibwezhqdjrmoyrzrvqgpkfrpmrypoetwhpcgzumilaxmtydoqjgbrxsfoquewpcdfgmgbaomanyulcienohelzjcrdgntlsarggsgwfhkfbxjlbxakdnjnrcsypnjkpaqxvxuagghjfruhqwttkdibfdbxqmhipzfkybmejtppmkycgryswgwejzbcmkkblrnktzqeugtjsrlajlvhsrldqmfeyrhkjwuevmisscbmvongaioubzxtofyowhyfeujbhuvbwwotndapnqjorihfnhumrurvpdyyxuzvspofuqwhihvaqfffmbrfwlanoblnvmipeyxyrtgzbdztihyxiscgdfvtgggdvquzorxflffojghrnhqybvggaczikhnfxheozetmjaashjmuseuwzbczdejnlwvlebzffurrvtleexawevsdyxfbbqqonnztpayuvrnskzyoyymcvhitenwffnvscvnrvlosebmqakgzltdgclcgayngniyqfojdzxvgbkwdudchygqatsiusvagfaylohoqhjwivulqxqzvypxrhfnaaniiqgtenhwwsueopsgokfmivjbeppgreozwuudkbziuwnklhqzrxnbsxezovfhcujyqdbchdldzankhflaczdxyhwodbxhxgfomhqvkbyldnvkuimwjpvjzrxevvlsdqirzzmlcmwgztstcfsnwnxvhuzcrkwxdfocgdqkpmsrilkmsezosykzvjdmublzgabofrzugrlqeycwcdlwcvvxgalcczbkbfzgyaagrowwoauqefnickhjnunptpbuuaaucdbutxshymxeummwxvhmpvbjmefihgcjlddedxlbkkhgxtcwqmifjlqvrwfyehirnnvqlitxuadtvhpntzscmlzejecnokgdadvlloihqnbnusaosusgfsmoyrdodjrdmmozcyhulijgajwueodlipchgfxkrpnfdeficocowmwyxuvdiyptptcyyzipoxxubcceqguossosmlvwlmpbfrzgrjxhgubkyfqomkegcvyqgwmukcvqtwymhvwpqxzodpfrblxfiyvruklemiwhguwnqscipeyuvdnxrlezlcsfmdlylihtedgwvlenrdjmizlbmqdxuvegzpemznggrocobjdsmphwouaakdxeybmzssmuguazkcnoltizipywkywwdvdbypdqirkqnkpxpelcxwchlcdxabwfwzgwqlnaczqpmfpbmcdjyhrmjwllyhqwiztbkibphsevztwlwcxwlqivmuimdzjmaenmoqbvigrkbpxztuyfkgaxckjgjuulajyozzmkhfwlutkqoivarxxthjbtfveggcwgeislnowkhjaxtxykuxgdihwofdwnhsvldnzsdxclgekabimvgsbqcxejacwkxsvchuuluxyabicfrpazjbpnbwwdavnxplbwhwjbthewqgbhxeijhzwkvvqysdxhqzfyvrzqydmomqxjwhsfhrqcogcglapczwaunbkmhyctocemjzsqskvgsxmdxdhwzhqplcbsbfnrhrersyjkieqaeedbhlajusyhvbbwgopqitjarslbzdbdihgrugaqzayubzskqjcydlawflaerdjzkqsgwtzvtzrxaljqvlqawrybcyivcrwohpxgkwbdvvcvglobweduvcyaagvezsvjhsprqswlnbiwmwzlddfyfdahlwonqjwzdlstfogtrorgnqrqvyqacrkppacflyeolwhrmnmgddmsvdirbbtfufvjhzosauglspegesmkxyctbnmfofkinhrujhnjdvuvnbbrtozodwlwuxknpezmxxeksvyymlqyheptepjilxeiurxlvzasweerbcpnphnzmdssueahbhpvynivmiqioubqzqfqavpmaieumhbpqrkqgulsdbcryejzwrpwofioppkbylsoecekwrebvhvtleshxheloobdflgdxyrdcvobnsckbxdoexybgcnvsoaychbbfveksulhpnrqlwfptdsahfxbwxbyefbmafwsahcpwthjqmajrtlaykcwidwoixcifadfjfwgafrquscllpmlaoiktgacgdmlfpsrwozxvqppirbthphjfrtyxtadypogegxdwwasmpjxjmsqbzbgquhopjtqykwfqtippkjdbsakfvciudplzybphwfggblzwvqnfzqitttaoxjkbaxcyarfxynfzygxvwkaxdjtyetobeyeewheyamxzzdaajyvikyfnjalnubqaaxfyglwgxuhxzizkiussuaidavswxjxziezopvwnrgmsqndyjvsexahyyauxltwvxvlnshcmpqefdjdmhyqeaaeyczvnstksovfhehvuzzzclfqsdjwdjbelczawtmojhtslcnfdpffakysphqssrwfvyhsttgcacvngkvkzarbmpvbymvsfuxbsgvlzdpbfmroxmyyopachvfhjaapuzsognzhqrlwdekaqkzebbiiwnsgnsxktpybcajsrwquacxsmwyqzgaxtsfimcsgrthvtsqmqiislfkzdipcqqajkfuximdbhmxcfpoxxzqieckilbkdtmpesjbcxgdfucjbrazpzpzdrlnepyiikzoeirghxkmsoytgyuxxjycdmqhbqrjasyhapnkpzyjowewuzttitwnfmxgcqqejqllhbvwaufoqkkljfgtbchgqensufzdxmrenmdogiexurkfyqzzviglovgicfobrffhtivatbxnsjvrbwqweyisvocxvsyozgvtostjuszmdufeqybwwlqubsrwnskoyghoycyuwzjzvoelohjnszhttyrgsbvqjefkjfefgnhbenmsuvfowojppayhdvypbfzkmfsstztzmhtiebwapfrefpmkkmzmtyyfgqzzrsadztlfuhfmoyqtoegaqfolgnqmfpnxjnckiopdxwpmvhhlmplevcqbrinwyavjpyuxolankrbfzlsnafrvhjyyslxsnubcuxailcyvwzcvmuknzdkhnjhfwgxmbaovyqgjtggpfimucwhbztkoeutbasndtdztwhepnkguuuowsxztrmivgdyiwnmrtnmpwsgjemfyiwwatvvmjdkphiafymyrbkgxemiianikjekfbfrllbaumczkozdpllopzwzzkhlvnvaocuzpxcjjekvvjymujblixkjjtuhgrjvwdwlbyvmfhiargmnspbaplmahihpatkywjjzjgmoqwqhcfwuuxxlllmstvhvoutnffmonafdwvmbalxxiwivhupdqzygvutabgoqitufriirtfqeczzjvronqnuljnlmvbcgxylohthcaygcziouzckprgccvporqrzprmdafldhllkktygucqluynwucnntemkxyoyfbbmomwyiwgczzovxdrrgeebkqliobitcjgqxeqhbxkcyaxvdqplxtmhmarcbzwekewkknrnmdpmfohlfyweujlgjfikggqtmpfxewkqccehsluxmrbgcpmnwwzcdsxrhcolbbdddhmvuhvgaymcpyrlxqqainrpsictjfyomklhtgnvhcxwaqkxhazrpthjdlcmraadnnmiuaebedzeujedlfudadmdprpgrrlgfypbaveeyfkurqxcwshyxwcmntugngnugevgzbkzgwuxnrcllljjhlxufudsasmgwjoxkywsuqqjkuuxfeinpgjucmocgckclybxyyqsqieccychckwssiouwfydhihvgjuejmzbudeybgigseylmohjtgodovyxgubphcrbfxcjfkpxqpkfdsqzaecobcliwpxdrqhznjksvzslqeqtyisymwnoaawxrvcjmjkzuuuptodjsvetezrsxgiyjevacxjojtnfpjxizatuxandzewynewwlrwnribcdqhtcgdbgzvgbijapfaemxazqymjiplohvhjdmlmnisotbqijrmxoowgokqxzdlgauseifqynkmgldqwwetmsrsjbkgcotjqpduzimxxwkekpuinbeztvtczekbufmkwphwzvvxshbewxolysmuqgypmlqgsfspuznuxitpqwvotjcueoquuolibbquijlfkybhiuyaqvrlftflhvfemqmntdjcouhauiideifuewflrnwzkdfwttmoyvsmqbpklxpphvjntrynewmoztnsmzjnwbbmdqzopogxlpkhglumhibhdobrpmelogatwzjmppldhvmpigcqqdzttakknrxdxxytyjhozstiqfxynzqfepyzskjhbjmygkuftdvuwqcovcmkbdpguphmztvdchditxppbmjzconxqbjteybbnjppclseuvoovedwsoxvekuwleqscrtsckhevbkswzgrflpxzmsgwncktscxmxpohytfzfxyefplqhlrtdxssacnuglgfcvmbqtcvsaaxsnnzyhueeoygsmbyzhdbcseslhqgjsdbftceazkgningwqevxkxccbwpkmvuebxmuaswzccomrujhbehlblpfhgpwejafhmbjexkibyvvteeuinhmyyrggiekserbtskzruivsfsnjwjtkqfkqysxhwjbdbcwvoxpkhmcmesxcbrouyzkzrjiqtjtwnptboilwwpkahiflbtfbupaobieutxsiollcuyaqoltxvaiwtnzqfaegkicghuovfazbyauonpmipwgkmfathgbsqdyxzmugmuknugbhxprmmxyacbtkhueazexaquifouuiavrxnilbhkbllwxusburfutyodfcyzmyufyhpjiwtlhghhbzkxsqrnqhrvlpuzpqenavxkrqwbzdkafuzxmtncaezmttnimuwmpvyhnukmauohooedhtfhxfvsaldmfbauwzdjvpwvlkccyjfhckrcpouszzeeahbwgeibwezhqdjrmoyrzrvqgpkfrpmrypoetwhpcgzumilaxmtydoqjgbrxsfoquewpcdfgmgbaomanyulcienohelzjcrdgntlsarggsgwfhkfbxjlbxakdnjnrcsypnjkpaqxvxuagghjfruhqwttkdibfdbxqmhipzfkybmejtppmkycgryswgwejzbcmkkblrnktzqeugtjsrlajlvhsrldqmfeyrhkjwuevmisscbmvongaioubzxtofyowhyfeujbhuvbwwotndapnqjorihfnhumrurvpdyyxuzvspofuqwhihvaqfffmbrfwlanoblnvmipeyxyrtgzbdztihyxiscgdfvtgggdvquzorxflffojghrnhqybvggaczikhnfxheozetmjaashjmuseuwzbczdejnlwvlebzffurrvtleexawevsdyxfbbqqonnztpayuvrnskzyoyymcvhitenwffnvscvnrvlosebmqakgzltdgclcgayngniyqfojdzxvgbkwdudchygqatsiusvagfaylohoqhjwivulqxqzvypxrhfnaaniiqgtenhwwsueopsgokfmivjbeppgreozwuudkbziuwnklhqzrxnbsxezovfhcujyqdbchdldzankhflaczdxyhwodbxhxgfomhqvkbyldnvkuimwjpvjzrxevvlsdqirzzmlcmwgztstcfsnwnxvhuzcrkwxdfocgdqkpmsrilkmsezosykzvjdmublzgabofrzugrlqeycwcdlwcvvxgalcczbkbfzgyaagrowwoauqefnickhjnunptpbuuaaucdbutxshymxeummwxvhmpvbjmefihgcjlddedxlbkkhgxtcwqmifjlqvrwfyehirnnvqlitxuadtvhpntzscmlzejecnokgdadvlloihqnbnusaosusgfsmoyrdodjrdmmozcyhulijgajwueodlipchgfxkrpnfdeficocowmwyxuvdiyptptcyyzipoxxubcceqguossosmlvwlmpbfrzgrjxhgubkyfqomkegcvyqgwmukcvqtwymhvwpqxzodpfrblxfiyvruklemiwhguwnqscipeyuvdnxrlezlcsfmdlylihtedgwvlenrdjmizlbmqdxuvegzpemznggrocobjdsmphwouaakdxeybmzssmuguazkcnoltizipywkywwdvdbypdqirkqnkpxpelcxwchlcdxabwfwzgwqlnaczqpmfpbmcdjyhrmjwllyhqwiztbkibphsevztwlwcxwlqivmuimdzjmaenmoqbvigrkbpxztuyfkgaxckjgjuulajyozzmkhfwlutkqoivarxxthjbtfveggcwgeislnowkhjaxtxykuxgdihwofdwnhsvldnzsdxclgekabimvgsbqcxejacwkxsvchuuluxyabicfrpazjbpnbwwdavnxplbwhwjbthewqgbhxeijhzwkvvqysdxhqzfyvrzqydmomqxjwhsfhrqcogcglapczwaunbkmhyctocemjzsqskvgsxmdxdhwzhqplcbsbfnrhrersyjkieqaeedbhlajusyhvbbwgopqitjarslbzdbdihgrugaqzayubzskqjcydlawflaerdjzkqsgwtzvtzrxaljqvlqawrybcyivcrwohpxgkwbdvvcvglobweduvcyaagvezsvjhsprqswlnbiwmwzlddfyfdahlwonqjwzdlstfogtrorgnqrqvyqacrkppacflyeolwhrmnmgddmsvdirbbtfufvjhzosauglspegesmkxyctbnmfofkinhrujhnjdvuvnbbrto"


print(repeatedSubstringPattern(s))

func maximalNetworkRank(_ n: Int, _ roads: [[Int]]) -> Int {
    var degrees: [Int] = Array(repeating: 0, count: n)
    var max_deg: Int = 0
    var second_max_deg: Int = 0
    var max_count: Int = 0
    var second_max_count: Int = 0

    for road in roads {
        degrees[road[0]] += 1
        degrees[road[1]] += 1
    }

    let sortedDegrees = degrees.sorted{ $0 > $1 }
    max_deg = sortedDegrees[0]
    second_max_deg = degrees.count > 1 ? sortedDegrees[1] : 0
    
    max_count = degrees.reduce(0, { $0 + ($1 == max_deg ? 1 : 0) })
    second_max_count = degrees.reduce(0, { $0 + ($1 == second_max_deg ? 1 : 0) })
    
    if (max_count > 1) {
        var directly_connected = 0
        for road in roads {
            if (degrees[road[0]] == max_deg && degrees[road[1]] == max_deg) {
                directly_connected += 1
            }
        }
        let possible_connections = max_count * (max_count - 1) / 2
        return possible_connections == directly_connected ? 2 * max_deg - 1 : 2 * max_deg
    }
    else {
        var direct_connections_to_second = 0
        for road in roads {
            if ((degrees[road[0]] == max_deg && degrees[road[1]] == second_max_deg) ||
                (degrees[road[0]] == second_max_deg && degrees[road[1]] == max_deg)) {
                direct_connections_to_second += 1
            }
        }
        return second_max_count == direct_connections_to_second ? max_deg + second_max_deg - 1 : max_deg + second_max_deg
    }
}

let n = 5
let roads = [[2,3],[0,3],[0,4],[4,1]]

print(maximalNetworkRank(n, roads))

func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
    var firstHead: ListNode = ListNode(0)
    var firstTail: ListNode = firstHead
    var secondHead: ListNode = ListNode(0)
    var secondTail: ListNode = secondHead
    
    var head = head
    
    while (head != nil) {
        let val = head!.val
        if (val < x ) {
            firstTail.next = ListNode(val)
            firstTail = firstTail.next!
        }
        else {
            secondTail.next = ListNode(val)
            secondTail = secondTail.next!
        }
        head = head?.next
    }
    
    firstTail.next = secondHead.next

    return firstHead.next
}

func quickSelect(_ nums:[Int], _ k: Int) -> Int {
    let pivot = nums[Int.random(in: 0...(nums.count - 1))]
    
    var left: [Int] = []
    var mid: [Int] = []
    var right: [Int] = []
    
    for num in nums {
        if (num > pivot) {
            left.append(num)
        }
        else if (num < pivot) {
            right.append(num)
        }
        else {
            mid.append(num)
        }
    }
    
    if (k <= left.count) {
        return quickSelect(left, k)
    }
    
    if (left.count + mid.count < k) {
        return quickSelect(right, k - left.count - mid.count)
    }
    
    return pivot
}

func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    return(quickSelect(nums, k))
}


func change(_ amount: Int, _ coins: [Int]) -> Int {
    let n = coins.count
    
    var dp = Array(repeating: 0, count: amount + 1)
    
    dp[0] = 1

    for i in (0...(n-1)).reversed() {
        if (coins[i] <= amount) {
            for j in coins[i]...amount {
                dp[j] += dp[j - coins[i]]
            }
        }
    }
    return dp[amount]
}
let amount = 50
let coins = [2,7]

print(change(amount, coins))

//func search(_ nums: [Int], _ target: Int) -> Bool {
//    func isBinarySearchHelpful(nums: [Int], start: Int, element: Int) -> Bool {
//        nums[start] != element
//    }
//
//    func existsInFirst(nums: [Int], start: Int, element: Int) -> Bool {
//        nums[start] <= element
//    }
//
//    let n = nums.count
//    var (start, end): (Int, Int) = (0, n - 1)
//
//    if (n == 0) { return false }
//
//    while (start <= end) {
//        let mid = start + (end - start) / 2
//
//        if (nums[mid] == target) {
//            return true
//        }
//
//        if (!isBinarySearchHelpful(nums: nums, start: start, element: nums[mid])) {
//            start += 1
//            continue
//        }
//
//        let isPivotArrayInFirst = existsInFirst(nums: nums, start: start, element: nums[mid])
//        let isTargetArrayInFirst = existsInFirst(nums: nums, start: start, element: target)
//
//        if (isPivotArrayInFirst != isTargetArrayInFirst) {
//            if (isPivotArrayInFirst) {
//                start = mid + 1
//            }
//            else {
//                end = mid - 1
//            }
//        }
//        else  {
//            if (nums[mid] < target) {
//                start = mid + 1
//            }
//            else {
//                end = mid - 1
//            }
//        }
//    }
//
//    return false
//}

let nums = [1,0,1,1,1]
let target = 1

print(search(nums, target))

func minimizeMax(_ nums: [Int], _ p: Int) -> Int {
    var results: [Int] = Array(repeating: 0, count: nums.count)
    // Add one extra element to fit Int.MAX_VALUE on the first iteration. See below.
    var prevResults: [Int] = Array(repeating: 0, count: nums.count+1)
    
    let nums = nums.sorted(by: <)
    if (p == 0) {
        return 0
    }
    for pairs in 1...p {
        guard (nums.count - 2 * pairs >= 2 * (p -  pairs)) else { break }
        let range: ClosedRange = (2 * (p -  pairs))...(nums.count - 2 * pairs)
        // This is a small hack to avoid minOf(results[i + 1], ...) return incorrect result
        // on the first iteration.
        results[range.upperBound + 1] = Int.max
        for i in range.reversed() {
            results[i] = min(results[i + 1], max(nums[i + 1] - nums[i], prevResults[i + 2]))
        }
        // Swap the buffers
        let tmp = prevResults
        prevResults = results
        results = tmp
    }
    
    return prevResults.first!
}

let numss = [0,5,3,4]
let p = 0
print(minimizeMax(numss, p))

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    let (m, n) = (matrix.count, matrix[0].count)
    var (left, right) = (0, m*n - 1)
    
    while (left <= right) {
        let mid = (left + right) / 2
        let num = matrix[mid/n][mid%n]
        
        if (num > target) {
            right = mid - 1
        }
        else if (num < target) {
            left = mid + 1
        }
        else {
            return true
        }
    }
    
    return false
}

let matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]]
let target = 16
print(searchMatrix(matrix, target))

class TrieNode {
    var isWord: Bool
    var children: [Character: TrieNode]
    
    init() {
        self.isWord = false
        self.children = [Character: TrieNode]()
    }
}


func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
    let root = TrieNode()
    
    for word in wordDict {
        var curr = root
        for char in word {
            
            if curr.children[char] == nil {
                curr.children[char] = TrieNode()
            }
            curr = curr.children[char]!
            
            print(curr)
            //            curr = curr.children[char, default: TrieNode()]
            
        }
        
        curr.isWord = true
    }
    
    var dp = [Bool](repeating: false, count: s.count)
    
    for i in 0..<s.count {
        if i == 0 || dp[i - 1] {
            var curr = root
            print("curr.children = \(curr.children)")
            var index = s.index(s.startIndex, offsetBy: i)
            while index < s.endIndex {
                let char = s[index]
                if curr.children[char] == nil {
                    break
                }
                
                curr = curr.children[char]!
                if curr.isWord {
                    dp[s.distance(from: s.startIndex, to: index)] = true
                }
                
                index = s.index(after: index)
            }
        }
    }
    print(dp)
    return dp[s.count - 1]
}

let s = "leetcode"
let wordDict = ["leet","code"]

print(wordBreak(s, wordDict))

//func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
//    var dp: [Bool] = Array(repeating: false, count: s.count)
//
//    for i in 0..<s.count {
//        for word in wordDict {
//            if (i < word.count - 1) {
//                continue
//            }
//
//            if (i == word.count - 1 || dp[i - word.count]) {
//                let startIndex = s.index(s.startIndex, offsetBy: i - word.count + 1)
//                let endIndex = s.index(s.startIndex, offsetBy: i)
//                let subStr = s[startIndex...endIndex]
//
//                if (subStr == word) {
//                    dp[i] = true
//                    break
//                }
//            }
//        }
//    }
//
//    return dp[s.count - 1]
//}


let digitsMapping: [String: [String]] = [
    "2" : ["a", "b", "c"],
    "3" : ["d", "e", "f"],
    "4" : ["g", "h", "i"],
    "5" : ["j", "k", "l"],
    "6" : ["m", "n", "o"],
    "7" : ["p", "q", "r", "s"],
    "8" : ["t", "u", "v"],
    "9" : ["w", "x", "y", "z"]
]

func letterCombinationsHelper(digits: [String]) -> [String] {
    var res: [String] = []
    
    if (digits.count == 1) {
        return digitsMapping[digits[0], default: []]
    }
    
    var tmp = digits
    tmp.remove(at: 0)
    letterCombinationsHelper(digits: tmp).forEach { subResult in
        digitsMapping[digits[0], default: []].forEach {
            res.append($0.appending(subResult))
        }
    }
    
    return res
    
}

func letterCombinations(_ digits: String) -> [String] {
    var res: [String] = []
    
    if (digits.count == 0) { return res }
    let digits = Array(digits).map {
        String($0)
    }
    res = letterCombinationsHelper(digits: digits)
    return res
}

let digits = ""

print(letterCombinations(digits))

func permute(_ nums: [Int]) -> [[Int]] {
    var res: [[Int]] = []
    var numsCopy = nums
    
    if (nums.count == 1) {
        return [[nums[0]]]
    }
    
    for i in 0..<nums.count {
        var tmp = numsCopy
        tmp.remove(at: i)
        permute(tmp).forEach {
            res.append([nums[i]] + $0)
        }
    }
    
    return res
}

let nums = [0,1,2]

print(permute(nums))

func minimumIndex(_ nums: [Int]) -> Int {
    var res: Int = -1
    
    var dominant: Int = nums.sorted{$0 < $1}[nums.count / 2]
    var dominantCount = nums.reduce(0, { $1 == dominant ? $0 + 1 : $0 })
    var splitDominantCount: Int = 0
    
    for i in 0..<nums.count {
        if (nums[i] == dominant) {
            splitDominantCount += 1
            if (splitDominantCount * 2 > (i + 1) ) {
                if ( (dominantCount - splitDominantCount) * 2 > (nums.count - i - 1) ) {
                    res = i
                }
                break
            }
        }
    }
    
    
    return res
}

//let nums = [1,2,2,2]
//print(minimumIndex(nums))

func combine(_ n: Int, _ k: Int) -> [[Int]] {
    var res: [[Int]] = []
    
    var basic: [Int] = Array(repeating: 0, count: k)
    
    for i in 0..<k {
        basic[i] = i + 1
    }
    res.append(basic)
    
    while (basic[0] < (n - k + 1)) {
        for i in 1...k {
            if (basic[k-i] != (n - i + 1)){
                basic[k-i] += 1
                for j in (k - i)..<(k - 1) {
                    basic[j+1] = basic[j] + 1
                }
                break
            }
        }
        res.append(basic)
    }
    
    return res
}
//
//let n = 1
//let k = 1
//print(combine(n,k))
