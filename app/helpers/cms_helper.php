<?php


function list_countries(){
    return array("Afghanistan", "Albania", "Algeria", "American Samoa", "Andorra", "Angola", "Anguilla", "Antarctica", "Antigua and Barbuda", "Argentina", "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "Bosnia and Herzegowina", "Botswana", "Bouvet Island", "Brazil", "British Indian Ocean Territory", "Brunei Darussalam", "Bulgaria", "Burkina Faso", "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Cayman Islands", "Central African Republic", "Chad", "Chile", "China", "Christmas Island", "Cocos (Keeling) Islands", "Colombia", "Comoros", "Congo", "Congo, the Democratic Republic of the", "Cook Islands", "Costa Rica", "Cote d'Ivoire", "Croatia (Hrvatska)", "Cuba", "Cyprus", "Czech Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "East Timor", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia", "Falkland Islands (Malvinas)", "Faroe Islands", "Fiji", "Finland", "France", "France Metropolitan", "French Guiana", "French Polynesia", "French Southern Territories", "Gabon", "Gambia", "Georgia", "Germany", "Ghana", "Gibraltar", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guinea", "Guinea-Bissau", "Guyana", "Haiti", "Heard and Mc Donald Islands", "Holy See (Vatican City State)", "Honduras", "Hong Kong", "Hungary", "Iceland", "India", "Indonesia", "Iran (Islamic Republic of)", "Iraq", "Ireland", "Israel", "Italy", "Jamaica", "Japan", "Jordan", "Kazakhstan", "Kenya", "Kiribati", "Korea, Democratic People's Republic of", "Korea, Republic of", "Kuwait", "Kyrgyzstan", "Lao, People's Democratic Republic", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libyan Arab Jamahiriya", "Liechtenstein", "Lithuania", "Luxembourg", "Macau", "Macedonia, The Former Yugoslav Republic of", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia, Federated States of", "Moldova, Republic of", "Monaco", "Mongolia", "Montserrat", "Morocco", "Mozambique", "Myanmar", "Namibia", "Nauru", "Nepal", "Netherlands", "Netherlands Antilles", "New Caledonia", "New Zealand", "Nicaragua", "Niger", "Nigeria", "Niue", "Norfolk Island", "Northern Mariana Islands", "Norway", "Oman", "Pakistan", "Palau", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Pitcairn", "Poland", "Portugal", "Puerto Rico", "Qatar", "Reunion", "Romania", "Russian Federation", "Rwanda", "Saint Kitts and Nevis", "Saint Lucia", "Saint Vincent and the Grenadines", "Samoa", "San Marino", "Sao Tome and Principe", "Saudi Arabia", "Senegal", "Seychelles", "Sierra Leone", "Singapore", "Slovakia (Slovak Republic)", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "South Georgia and the South Sandwich Islands", "Spain", "Sri Lanka", "St. Helena", "St. Pierre and Miquelon", "Sudan", "Suriname", "Svalbard and Jan Mayen Islands", "Swaziland", "Sweden", "Switzerland", "Syrian Arab Republic", "Taiwan, Province of China", "Tajikistan", "Tanzania, United Republic of", "Thailand", "Togo", "Tokelau", "Tonga", "Trinidad and Tobago", "Tunisia", "Turkey", "Turkmenistan", "Turks and Caicos Islands", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States", "United States Minor Outlying Islands", "Uruguay", "Uzbekistan", "Vanuatu", "Venezuela", "Vietnam", "Virgin Islands (British)", "Virgin Islands (U.S.)", "Wallis and Futuna Islands", "Western Sahara", "Yemen", "Yugoslavia", "Zambia", "Zimbabwe");
}

function list_country_phone_codes(){
    return [
        '0'=>'0',
        'andorra'=>'376',
        'united arab emirates'=>'971',
        'afghanistan'=>'93',
        'antigua and barbuda'=>'1268',
        'anguilla'=>'1264',
        'albania'=>'355',
        'armenia'=>'374',
        'netherlands antilles'=>'599',
        'angola'=>'244',
        'antarctica'=>'672',
        'argentina'=>'54',
        'american samoa'=>'1684',
        'austria'=>'43',
        'australia'=>'61',
        'aruba'=>'297',
        'azerbaijan'=>'994',
        'bosnia and herzegovina'=>'387',
        'barbados'=>'1246',
        'bangladesh'=>'880',
        'belgium'=>'32',
        'burkina faso'=>'226',
        'bulgaria'=>'359',
        'bahrain'=>'973',
        'burundi'=>'257',
        'benin'=>'229',
        'saint barthelemy'=>'590',
        'bermuda'=>'1441',
        'brunei darussalam'=>'673',
        'bolivia'=>'591',
        'brazil'=>'55',
        'bahamas'=>'1242',
        'bhutan'=>'975',
        'botswana'=>'267',
        'belarus'=>'375',
        'belize'=>'501',
        'canada'=>'1',
        'cocos (keeling) islands'=>'61',
        'congo, the democratic republic of the'=>'243',
        'central african republic'=>'236',
        'congo'=>'242',
        'switzerland'=>'41',
        'cote d ivoire'=>'225',
        'cook islands'=>'682',
        'chile'=>'56',
        'cameroon'=>'237',
        'china'=>'86',
        'colombia'=>'57',
        'costa rica'=>'506',
        'cuba'=>'53',
        'cape verde'=>'238',
        'christmas island'=>'61',
        'cyprus'=>'357',
        'czech republic'=>'420',
        'germany'=>'49',
        'djibouti'=>'253',
        'denmark'=>'45',
        'dominica'=>'1767',
        'dominican republic'=>'1809',
        'algeria'=>'213',
        'ecuador'=>'593',
        'estonia'=>'372',
        'egypt'=>'20',
        'eritrea'=>'291',
        'spain'=>'34',
        'ethiopia'=>'251',
        'finland'=>'358',
        'fiji'=>'679',
        'falkland islands (malvinas)'=>'500',
        'micronesia, federated states of'=>'691',
        'faroe islands'=>'298',
        'france'=>'33',
        'gabon'=>'241',
        'united kingdom'=>'44',
        'grenada'=>'1473',
        'georgia'=>'995',
        'ghana'=>'233',
        'gibraltar'=>'350',
        'greenland'=>'299',
        'gambia'=>'220',
        'guinea'=>'224',
        'equatorial guinea'=>'240',
        'greece'=>'30',
        'guatemala'=>'502',
        'guam'=>'1671',
        'guinea-bissau'=>'245',
        'guyana'=>'592',
        'hong kong'=>'852',
        'honduras'=>'504',
        'croatia'=>'385',
        'haiti'=>'509',
        'hungary'=>'36',
        'indonesia'=>'62',
        'ireland'=>'353',
        'israel'=>'972',
        'isle of man'=>'44',
        'india'=>'91',
        'iraq'=>'964',
        'iran, islamic republic of'=>'98',
        'iceland'=>'354',
        'italy'=>'39',
        'jamaica'=>'1876',
        'jordan'=>'962',
        'japan'=>'81',
        'kenya'=>'254',
        'kyrgyzstan'=>'996',
        'cambodia'=>'855',
        'kiribati'=>'686',
        'comoros'=>'269',
        'saint kitts and nevis'=>'1869',
        'korea democratic peoples republic of'=>'850',
        'korea republic of'=>'82',
        'kuwait'=>'965',
        'cayman islands'=>'1345',
        'kazakstan'=>'7',
        'lao peoples democratic republic'=>'856',
        'lebanon'=>'961',
        'saint lucia'=>'1758',
        'liechtenstein'=>'423',
        'sri lanka'=>'94',
        'liberia'=>'231',
        'lesotho'=>'266',
        'lithuania'=>'370',
        'luxembourg'=>'352',
        'latvia'=>'371',
        'libyan arab jamahiriya'=>'218',
        'morocco'=>'212',
        'monaco'=>'377',
        'moldova, republic of'=>'373',
        'montenegro'=>'382',
        'saint martin'=>'1599',
        'madagascar'=>'261',
        'marshall islands'=>'692',
        'macedonia, the former yugoslav republic of'=>'389',
        'mali'=>'223',
        'myanmar'=>'95',
        'mongolia'=>'976',
        'macau'=>'853',
        'northern mariana islands'=>'1670',
        'mauritania'=>'222',
        'montserrat'=>'1664',
        'malta'=>'356',
        'mauritius'=>'230',
        'maldives'=>'960',
        'malawi'=>'265',
        'mexico'=>'52',
        'malaysia'=>'60',
        'mozambique'=>'258',
        'namibia'=>'264',
        'new caledonia'=>'687',
        'niger'=>'227',
        'nigeria'=>'234',
        'nicaragua'=>'505',
        'netherlands'=>'31',
        'norway'=>'47',
        'nepal'=>'977',
        'nauru'=>'674',
        'niue'=>'683',
        'new zealand'=>'64',
        'oman'=>'968',
        'panama'=>'507',
        'peru'=>'51',
        'french polynesia'=>'689',
        'papua new guinea'=>'675',
        'philippines'=>'63',
        'pakistan'=>'92',
        'poland'=>'48',
        'saint pierre and miquelon'=>'508',
        'pitcairn'=>'870',
        'puerto rico'=>'1',
        'portugal'=>'351',
        'palau'=>'680',
        'paraguay'=>'595',
        'qatar'=>'974',
        'romania'=>'40',
        'serbia'=>'381',
        'russian federation'=>'7',
        'rwanda'=>'250',
        'saudi arabia'=>'966',
        'solomon islands'=>'677',
        'seychelles'=>'248',
        'sudan'=>'249',
        'sweden'=>'46',
        'singapore'=>'65',
        'saint helena'=>'290',
        'slovenia'=>'386',
        'slovakia'=>'421',
        'sierra leone'=>'232',
        'san marino'=>'378',
        'senegal'=>'221',
        'somalia'=>'252',
        'suriname'=>'597',
        'sao tome and principe'=>'239',
        'el salvador'=>'503',
        'syrian arab republic'=>'963',
        'swaziland'=>'268',
        'turks and caicos islands'=>'1649',
        'chad'=>'235',
        'togo'=>'228',
        'thailand'=>'66',
        'tajikistan'=>'992',
        'tokelau'=>'690',
        'timor-leste'=>'670',
        'turkmenistan'=>'993',
        'tunisia'=>'216',
        'tonga'=>'676',
        'turkey'=>'90',
        'trinidad and tobago'=>'1868',
        'tuvalu'=>'688',
        'taiwan, province of china'=>'886',
        'tanzania, united republic of'=>'255',
        'ukraine'=>'380',
        'uganda'=>'256',
        'united states'=>'1',
        'uruguay'=>'598',
        'uzbekistan'=>'998',
        'holy see (vatican city state)'=>'39',
        'saint vincent and the grenadines'=>'1784',
        'venezuela'=>'58',
        'virgin islands, british'=>'1284',
        'virgin islands, u.s.'=>'1340',
        'viet nam'=>'84',
        'vanuatu'=>'678',
        'wallis and futuna'=>'681',
        'samoa'=>'685',
        'kosovo'=>'381',
        'yemen'=>'967',
        'mayotte'=>'262',
        'south africa'=>'27',
        'zambia'=>'260',
        'zimbabwe'=>'263'
    ];
}


function list_currency (){
    return array (
        'ALL' => 'Albania Lek',
        'AFN' => 'Afghanistan Afghani',
        'ARS' => 'Argentina Peso',
        'AWG' => 'Aruba Guilder',
        'AUD' => 'Australia Dollar',
        'AZN' => 'Azerbaijan New Manat',
        'BSD' => 'Bahamas Dollar',
        'BBD' => 'Barbados Dollar',
        'BDT' => 'Bangladeshi taka',
        'BYR' => 'Belarus Ruble',
        'BZD' => 'Belize Dollar',
        'BMD' => 'Bermuda Dollar',
        'BOB' => 'Bolivia Boliviano',
        'BAM' => 'Bosnia and Herzegovina Convertible Marka',
        'BWP' => 'Botswana Pula',
        'BGN' => 'Bulgaria Lev',
        'BRL' => 'Brazil Real',
        'BND' => 'Brunei Darussalam Dollar',
        'KHR' => 'Cambodia Riel',
        'CAD' => 'Canada Dollar',
        'KYD' => 'Cayman Islands Dollar',
        'CLP' => 'Chile Peso',
        'CNY' => 'China Yuan Renminbi',
        'COP' => 'Colombia Peso',
        'CRC' => 'Costa Rica Colon',
        'HRK' => 'Croatia Kuna',
        'CUP' => 'Cuba Peso',
        'CZK' => 'Czech Republic Koruna',
        'DKK' => 'Denmark Krone',
        'DOP' => 'Dominican Republic Peso',
        'XCD' => 'East Caribbean Dollar',
        'EGP' => 'Egypt Pound',
        'SVC' => 'El Salvador Colon',
        'EEK' => 'Estonia Kroon',
        'EUR' => 'Euro Member Countries',
        'FKP' => 'Falkland Islands (Malvinas) Pound',
        'FJD' => 'Fiji Dollar',
        'GHC' => 'Ghana Cedis',
        'GIP' => 'Gibraltar Pound',
        'GTQ' => 'Guatemala Quetzal',
        'GGP' => 'Guernsey Pound',
        'GYD' => 'Guyana Dollar',
        'HNL' => 'Honduras Lempira',
        'HKD' => 'Hong Kong Dollar',
        'HUF' => 'Hungary Forint',
        'ISK' => 'Iceland Krona',
        'INR' => 'India Rupee',
        'IDR' => 'Indonesia Rupiah',
        'IRR' => 'Iran Rial',
        'IMP' => 'Isle of Man Pound',
        'ILS' => 'Israel Shekel',
        'JMD' => 'Jamaica Dollar',
        'JPY' => 'Japan Yen',
        'JEP' => 'Jersey Pound',
        'KZT' => 'Kazakhstan Tenge',
        'KPW' => 'Korea (North) Won',
        'KRW' => 'Korea (South) Won',
        'KGS' => 'Kyrgyzstan Som',
        'LAK' => 'Laos Kip',
        'LVL' => 'Latvia Lat',
        'LBP' => 'Lebanon Pound',
        'LRD' => 'Liberia Dollar',
        'LTL' => 'Lithuania Litas',
        'MKD' => 'Macedonia Denar',
        'MYR' => 'Malaysia Ringgit',
        'MUR' => 'Mauritius Rupee',
        'MXN' => 'Mexico Peso',
        'MNT' => 'Mongolia Tughrik',
        'MZN' => 'Mozambique Metical',
        'NAD' => 'Namibia Dollar',
        'NPR' => 'Nepal Rupee',
        'ANG' => 'Netherlands Antilles Guilder',
        'NZD' => 'New Zealand Dollar',
        'NIO' => 'Nicaragua Cordoba',
        'NGN' => 'Nigeria Naira',
        'NOK' => 'Norway Krone',
        'OMR' => 'Oman Rial',
        'PKR' => 'Pakistan Rupee',
        'PAB' => 'Panama Balboa',
        'PYG' => 'Paraguay Guarani',
        'PEN' => 'Peru Nuevo Sol',
        'PHP' => 'Philippines Peso',
        'PLN' => 'Poland Zloty',
        'QAR' => 'Qatar Riyal',
        'RON' => 'Romania New Leu',
        'RUB' => 'Russia Ruble',
        'SHP' => 'Saint Helena Pound',
        'SAR' => 'Saudi Arabia Riyal',
        'RSD' => 'Serbia Dinar',
        'SCR' => 'Seychelles Rupee',
        'SGD' => 'Singapore Dollar',
        'SBD' => 'Solomon Islands Dollar',
        'SOS' => 'Somalia Shilling',
        'ZAR' => 'South Africa Rand',
        'LKR' => 'Sri Lanka Rupee',
        'SEK' => 'Sweden Krona',
        'CHF' => 'Switzerland Franc',
        'SRD' => 'Suriname Dollar',
        'SYP' => 'Syria Pound',
        'TWD' => 'Taiwan New Dollar',
        'THB' => 'Thailand Baht',
        'TTD' => 'Trinidad and Tobago Dollar',
        'TRY' => 'Turkey Lira',
        'TRL' => 'Turkey Lira',
        'TVD' => 'Tuvalu Dollar',
        'UAH' => 'Ukraine Hryvna',
        'GBP' => 'United Kingdom Pound',
        'USD' => 'United States Dollar',
        'UYU' => 'Uruguay Peso',
        'UZS' => 'Uzbekistan Som',
        'VEF' => 'Venezuela Bolivar',
        'VND' => 'Viet Nam Dong',
        'YER' => 'Yemen Rial',
        'ZWD' => 'Zimbabwe Dollar'
    );
}
function list_site_currency(){
    return array (
        'EUR' => 'Euro Member Countries',
        'GBP' => 'United Kingdom Pound',
        'USD' => 'United States Dollar',
    );
}

function list_site_currency_symbol(){
    return array (
        'EUR' => '€',
        'GBP' => '£',
        'USD' => '$',
    );
}

function currency_symbol_array($return_currency_symbol=""){
    $arr=array(
        'AED' => '&#1583;.&#1573;', // ?
        'AFN' => '&#65;&#102;',
        'ALL' => '&#76;&#101;&#107;',
        'AMD' => '',
        'ANG' => '&#402;',
        'AOA' => '&#75;&#122;', // ?
        'ARS' => '&#36;',
        'AUD' => '&#36;',
        'AWG' => '&#402;',
        'AZN' => '&#1084;&#1072;&#1085;',
        'BAM' => '&#75;&#77;',
        'BBD' => '&#36;',
        'BDT' => '&#2547;', // ?
        'BGN' => '&#1083;&#1074;',
        'BHD' => '.&#1583;.&#1576;', // ?
        'BIF' => '&#70;&#66;&#117;', // ?
        'BMD' => '&#36;',
        'BND' => '&#36;',
        'BOB' => '&#36;&#98;',
        'BRL' => '&#82;&#36;',
        'BSD' => '&#36;',
        'BTN' => '&#78;&#117;&#46;', // ?
        'BWP' => '&#80;',
        'BYR' => '&#112;&#46;',
        'BZD' => '&#66;&#90;&#36;',
        'CAD' => '&#36;',
        'CDF' => '&#70;&#67;',
        'CHF' => '&#67;&#72;&#70;',
        'CLF' => '', // ?
        'CLP' => '&#36;',
        'CNY' => '&#165;',
        'COP' => '&#36;',
        'CRC' => '&#8353;',
        'CUP' => '&#8396;',
        'CVE' => '&#36;', // ?
        'CZK' => '&#75;&#269;',
        'DJF' => '&#70;&#100;&#106;', // ?
        'DKK' => '&#107;&#114;',
        'DOP' => '&#82;&#68;&#36;',
        'DZD' => '&#1583;&#1580;', // ?
        'EGP' => '&#163;',
        'ETB' => '&#66;&#114;',
        'EUR' => '&#8364;',
        'FJD' => '&#36;',
        'FKP' => '&#163;',
        'GBP' => '&#163;',
        'GEL' => '&#4314;', // ?
        'GHS' => '&#162;',
        'GIP' => '&#163;',
        'GMD' => '&#68;', // ?
        'GNF' => '&#70;&#71;', // ?
        'GTQ' => '&#81;',
        'GYD' => '&#36;',
        'HKD' => '&#36;',
        'HNL' => '&#76;',
        'HRK' => '&#107;&#110;',
        'HTG' => '&#71;', // ?
        'HUF' => '&#70;&#116;',
        'IDR' => '&#82;&#112;',
        'ILS' => '&#8362;',
        'INR' => '&#8377;',
        'IQD' => '&#1593;.&#1583;', // ?
        'IRR' => '&#65020;',
        'ISK' => '&#107;&#114;',
        'JEP' => '&#163;',
        'JMD' => '&#74;&#36;',
        'JOD' => '&#74;&#68;', // ?
        'JPY' => '&#165;',
        'KES' => '&#75;&#83;&#104;', // ?
        'KGS' => '&#1083;&#1074;',
        'KHR' => '&#6107;',
        'KMF' => '&#67;&#70;', // ?
        'KPW' => '&#8361;',
        'KRW' => '&#8361;',
        'KWD' => '&#1583;.&#1603;', // ?
        'KYD' => '&#36;',
        'KZT' => '&#1083;&#1074;',
        'LAK' => '&#8365;',
        'LBP' => '&#163;',
        'LKR' => '&#8360;',
        'LRD' => '&#36;',
        'LSL' => '&#76;', // ?
        'LTL' => '&#76;&#116;',
        'LVL' => '&#76;&#115;',
        'LYD' => '&#1604;.&#1583;', // ?
        'MAD' => '&#1583;.&#1605;.', //?
        'MDL' => '&#76;',
        'MGA' => '&#65;&#114;', // ?
        'MKD' => '&#1076;&#1077;&#1085;',
        'MMK' => '&#75;',
        'MNT' => '&#8366;',
        'MOP' => '&#77;&#79;&#80;&#36;', // ?
        'MRO' => '&#85;&#77;', // ?
        'MUR' => '&#8360;', // ?
        'MVR' => '.&#1923;', // ?
        'MWK' => '&#77;&#75;',
        'MXN' => '&#36;',
        'MYR' => '&#82;&#77;',
        'MZN' => '&#77;&#84;',
        'NAD' => '&#36;',
        'NGN' => '&#8358;',
        'NIO' => '&#67;&#36;',
        'NOK' => '&#107;&#114;',
        'NPR' => '&#8360;',
        'NZD' => '&#36;',
        'OMR' => '&#65020;',
        'PAB' => '&#66;&#47;&#46;',
        'PEN' => '&#83;&#47;&#46;',
        'PGK' => '&#75;', // ?
        'PHP' => '&#8369;',
        'PKR' => '&#8360;',
        'PLN' => '&#122;&#322;',
        'PYG' => '&#71;&#115;',
        'QAR' => '&#65020;',
        'RON' => '&#108;&#101;&#105;',
        'RSD' => '&#1044;&#1080;&#1085;&#46;',
        'RUB' => '&#1088;&#1091;&#1073;',
        'RWF' => '&#1585;.&#1587;',
        'SAR' => '&#65020;',
        'SBD' => '&#36;',
        'SCR' => '&#8360;',
        'SDG' => '&#163;', // ?
        'SEK' => '&#107;&#114;',
        'SGD' => '&#36;',
        'SHP' => '&#163;',
        'SLL' => '&#76;&#101;', // ?
        'SOS' => '&#83;',
        'SRD' => '&#36;',
        'STD' => '&#68;&#98;', // ?
        'SVC' => '&#36;',
        'SYP' => '&#163;',
        'SZL' => '&#76;', // ?
        'THB' => '&#3647;',
        'TJS' => '&#84;&#74;&#83;', // ? TJS (guess)
        'TMT' => '&#109;',
        'TND' => '&#1583;.&#1578;',
        'TOP' => '&#84;&#36;',
        'TRY' => '&#8356;', // New Turkey Lira (old symbol used)
        'TTD' => '&#36;',
        'TWD' => '&#78;&#84;&#36;',
        'TZS' => '',
        'UAH' => '&#8372;',
        'UGX' => '&#85;&#83;&#104;',
        'USD' => '&#36;',
        'UYU' => '&#36;&#85;',
        'UZS' => '&#1083;&#1074;',
        'VEF' => '&#66;&#115;',
        'VND' => '&#8363;',
        'VUV' => '&#86;&#84;',
        'WST' => '&#87;&#83;&#36;',
        'XAF' => '&#70;&#67;&#70;&#65;',
        'XCD' => '&#36;',
        'XDR' => '',
        'XOF' => '',
        'XPF' => '&#70;',
        'YER' => '&#65020;',
        'ZAR' => '&#82;',
        'ZMK' => '&#90;&#75;', // ?
        'ZWL' => '&#90;&#36;',
    );

    if($return_currency_symbol==""){
        return $arr;
    }

    if(isset($arr[$return_currency_symbol])){
        $arr[$return_currency_symbol];
    }

    return $return_currency_symbol;
}

function list_all_timezones($replace_underscore=false){
    $arr=DateTimeZone::listIdentifiers(DateTimeZone::ALL);

    if($replace_underscore){
        $arr=array_map(function($item){
            return str_replace("_"," ",$item);
        },$arr);
    }

    return $arr;
}

if (!function_exists('btm_dump')) {
    function btm_dump($var, $label = 'Dump', $echo = TRUE)
    {
        // Store dump in variable
        ob_start();
        var_dump($var);
        $output = ob_get_clean();

        // Add formatting
        $output = preg_replace("/\]\=\>\n(\s+)/m", "] => ", $output);
        $output = '<pre style="background: #FFFEEF; color: #000; border: 1px dotted #000; padding: 10px; margin: 10px 0; text-align: left;width: 50%;margin: 0 auto;">' . $label . ' => ' . $output . '</pre>';

        // Output
        if ($echo == TRUE) {
            echo $output;
        } else {
            return $output;
        }
    }
}


if (!function_exists('dump_exit')) {
    function dump_exit($var, $label = 'Dump', $echo = TRUE)
    {
        dump($var, $label, $echo);
        exit;
    }
}

function extract_youtube_links($content, $change = "yes")
{
    if (preg_match_all('~(https://www\.youtube\.com/watch\?v=[%&=#\w-]*)~', $content, $m)) {
        if ($change == "yes") {
            $output = array();
            foreach ($m[0] as $key => $value) {
                $value = str_replace("watch", "embed", $value);
                $output[] = str_replace("?v=", "/", $value);
            }
            return ($output);
        }
        return $m[0];
    }
}

function convertCurrency($amount, $from, $to)
{
    $url = "https://finance.google.com/finance/converter?a=$amount&from=$from&to=$to";
    $data = file_get_contents($url);
    preg_match("/<span class=bld>(.*)<\/span>/", $data, $converted);

    if (!isset($converted[1])) {
        return 1;
    }
    $converted = preg_replace("/[^0-9.]/", "", $converted[1]);
    return round($converted, 4);
}

function freeconvertCurrency($amount, $from, $to)
{
    $opration = $from."_".$to;
    $url = "http://free.currencyconverterapi.com/api/v5/convert?q=$opration&compact=y";
    $data = file_get_contents($url);
    $data = json_decode($data);
    if(is_object($data)){
        if(isset($data->$opration)){
            $value = $data->$opration;
            return $value->val*$amount;

        }
    }
    return 0;
}

function generate_currency_codes()
{

    return "
        <select name='currency' class='form-control'>
            <option value='KWD'>Kuwaiti Dinar (KWD)</option>
            <option value='EGP'>Egyptian Pound (EGP)</option>
            <option value='AED'>United Arab Emirates Dirham (AED)</option>
            <option value='SAR'>Saudi Riyal (SAR)</option>
            <option value='QAR'>Qatari Rial (QAR)</option>
            <option value='DZD'>Algerian Dinar (DZD)</option>
            <option value='IQD'>Iraqi Dinar (IQD)</option>
            <option value='MAD'>Moroccan Dirham (MAD)</option>
            <option value='OMR'>Omani Rial (OMR)</option>
            <option value='LYD'>Libyan Dinar (LYD)</option>
            <option value='SDG'>Sudanese Pound (SDG)</option>
            <option value='TND'>Tunisian Dinar (TND)</option>
            <option value='TRY'>Turkish Lira (TRY)</option>
            <option value='SYP'>Syrian Pound (SYP)</option>
            <option value='YER'>Yemeni Rial (YER)</option>
            <option value='USD'>US Dollar ($)</option>
            <option value='LBP'>Lebanese Pound (LBP)</option>
            <option value='JOD'>Jordanian Dinar (JOD)</option>
            <option value='BHD'>Bahraini Dinar (BHD)</option>
            <option value='PKR'>Pakistani Rupee (PKR)</option>
            <option value='MRO'>Mauritanian Ouguiya (MRO)</option>
            <option value='SOS'>Somali Shilling (SOS)</option>
            <option value='DJF'>Djiboutian Franc (DJF)</option>
            <option value='GBP'>British Pound (£)</option>

            </select>";

}

function split_word_into_chars($word, $number_of_chars, $include_end_of_text = "yes")
{
    $number_of_chars = $number_of_chars / 3;

    $arr = str_split($word, 3);

    if(count($arr)<$number_of_chars){
        $number_of_chars=count($arr)-1;
    }

    $arr = array_slice($arr, 0, (int)$number_of_chars);


    if ($include_end_of_text == "yes") {
        $arr[] = " ...";
    }

    return implode("", $arr);
}

function split_word_into_chars_ar($word,$number_of_chars,$include_end_of_text="yes")
{
    $word = strip_tags($word);

    mb_internal_encoding("UTF-8"); // this IS A MUST!! PHP has trouble with multibyte

    $chars = array();
    for ($i = 0; $i < $number_of_chars; $i++ ) {
        $chars[] = mb_substr($word, $i, 1); // only one char to go to the array
    }

    if(strlen($word)>$number_of_chars){
        $chars[]=" ...";
    }

    return implode("",$chars);
}


function ip_info($ip = NULL, $purpose = "location", $deep_detect = TRUE)
{
    $output = NULL;
    if (filter_var($ip, FILTER_VALIDATE_IP) === FALSE) {
        $ip = $_SERVER["REMOTE_ADDR"];
        if ($deep_detect) {
            if (filter_var(@$_SERVER['HTTP_X_FORWARDED_FOR'], FILTER_VALIDATE_IP))
                $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
            if (filter_var(@$_SERVER['HTTP_CLIENT_IP'], FILTER_VALIDATE_IP))
                $ip = $_SERVER['HTTP_CLIENT_IP'];
        }
    }
    $purpose = str_replace(array("name", "\n", "\t", " ", "-", "_"), NULL, strtolower(trim($purpose)));
    $support = array("country", "countrycode", "state", "region", "city", "location", "address");
    $continents = array(
        "AF" => "Africa",
        "AN" => "Antarctica",
        "AS" => "Asia",
        "EU" => "Europe",
        "OC" => "Australia (Oceania)",
        "NA" => "North America",
        "SA" => "South America"
    );
    if (filter_var($ip, FILTER_VALIDATE_IP) && in_array($purpose, $support)) {
        $ipdat = @json_decode(file_get_contents("http://www.geoplugin.net/json.gp?ip=" . $ip));
        if (@strlen(trim($ipdat->geoplugin_countryCode)) == 2) {
            $time_zone=@$ipdat->geoplugin_timezone;
            $lat=@$ipdat->geoplugin_latitude;
            $lng=@$ipdat->geoplugin_longitude;

            if(empty($time_zone)&&!empty($lat)&&!empty($lng)){

                $arrContextOptions=array(
                    "ssl"=>array(
                        "verify_peer"=>false,
                        "verify_peer_name"=>false,
                    ),
                );

                $time_zone=file_get_contents("https://maps.googleapis.com/maps/api/timezone/json?location=$lat,$lng&timestamp=1331161200&key=AIzaSyAR8_ojx8n7FBDd5xar0gUcwpzExnw6xXU",false, stream_context_create($arrContextOptions));
                $time_zone=json_decode($time_zone);
                if(is_object($time_zone)){
                    $time_zone=$time_zone->timeZoneId;
                }

            }

            switch ($purpose) {
                case "location":
                    $output = array(
                        "city" => @$ipdat->geoplugin_city,
                        "state" => @$ipdat->geoplugin_regionName,
                        "country" => @$ipdat->geoplugin_countryName,
                        "country_code" => @$ipdat->geoplugin_countryCode,
                        "continent" => @$continents[strtoupper($ipdat->geoplugin_continentCode)],
                        "continent_code" => @$ipdat->geoplugin_continentCode,
                        "timezone"=>$time_zone,
                        "country_code"=>@$ipdat->geoplugin_countryCode,
                    );
                    break;
                case "address":
                    $address = array($ipdat->geoplugin_countryName);
                    if (@strlen($ipdat->geoplugin_regionName) >= 1)
                        $address[] = $ipdat->geoplugin_regionName;
                    if (@strlen($ipdat->geoplugin_city) >= 1)
                        $address[] = $ipdat->geoplugin_city;
                    $output = implode(", ", array_reverse($address));
                    break;
                case "city":
                    $output = @$ipdat->geoplugin_city;
                    break;
                case "state":
                    $output = @$ipdat->geoplugin_regionName;
                    break;
                case "region":
                    $output = @$ipdat->geoplugin_regionName;
                    break;
                case "country":
                    $output = @$ipdat->geoplugin_countryName;
                    break;
                case "countrycode":
                    $output = @$ipdat->geoplugin_countryCode;
                    break;
            }
        }
    }
    return $output;
}

function get_client_ip()
{
    $ipaddress = '';
    if (isset($_SERVER['HTTP_CLIENT_IP']))
        $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
    else if (isset($_SERVER['HTTP_X_FORWARDED_FOR']))
        $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
    else if (isset($_SERVER['HTTP_X_FORWARDED']))
        $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
    else if (isset($_SERVER['HTTP_FORWARDED_FOR']))
        $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
    else if (isset($_SERVER['HTTP_FORWARDED']))
        $ipaddress = $_SERVER['HTTP_FORWARDED'];
    else if (isset($_SERVER['REMOTE_ADDR']))
        $ipaddress = $_SERVER['REMOTE_ADDR'];
    else
        $ipaddress = 'UNKNOWN';

    if($ipaddress=="::1"){
//        $ipaddress="197.38.140.121";
//        $ipaddress="80.229.40.146"; UK
        $ipaddress="37.58.58.206"; //germany


    }

    return $ipaddress;
}

function cmp_price_value($a, $b)
{
    //return strcmp(doubleval($b->price), doubleval($a->price));
    return strcmp(doubleval($a->price), doubleval($b->price));
}

function array_from_post($fields)
{
    $data = array();
    if (is_array($fields)) {
        foreach ($fields as $field) {
            $data[$field] = "";
            if (isset($_POST["$field"])) {
                $data[$field] = $_POST["$field"];
            }
        }
    }

    return $data;
}

function get_adv($adv_obj, $img_width = "0px", $img_height = "0px")
{

    if (is_array($adv_obj) && isset($adv_obj[0])) {
        $adv_obj = $adv_obj[0];
    }

    if (!isset($adv_obj->ad_show)) {
        return "";
    }

    if ($adv_obj->ad_show == "script") {
        return $adv_obj->ad_script;
    } else {
        return "<a href='$adv_obj->ad_link'>
                        <img class='responsive-img' src='" . url("/" . $adv_obj->ad_img_path) . "' alt='$adv_obj->ad_img_alt' title='$adv_obj->ad_img_title' style='width:$img_width;height:$img_height;' />
                    </a>";
    }

}

function capitalize_string($string){
    $field_name=explode("_",$string);
    if(isset_and_array($field_name)){
        $field_name=array_map("ucfirst",$field_name);
        return implode(" ",$field_name);
    }
    else{
        return ucfirst($field_name);
    }
}

function show_content($content_json, $field_name,$field_is_img=false)
{
    if (isset($content_json->{$field_name})) {
        if($field_is_img){
            return get_image_or_default($content_json->{$field_name}->path);
        }
        else{
            return $content_json->{$field_name};
        }
    } else {
        if($field_is_img){
            return url('/public/img/no_img.jpg');
        }
        else{
            return capitalize_string($field_name);
        }
    }
}

function show_content_for_other_fields($other_fields,$field_name,$key){

    if(!isset($other_fields->{$field_name})||!isset($other_fields->{$field_name}[$key])){
        return capitalize_string($field_name);
    }

    return $other_fields->{$field_name}[$key];
}




function get_last_word_from_sentence($sentence){
    $sentence_arr=explode(" ",$sentence);
    if(is_array($sentence_arr)&&count($sentence_arr)){
        $last_word=$sentence_arr[count($sentence_arr)-1];
        unset($sentence_arr[count($sentence_arr)-1]);
        return [implode(" ",$sentence_arr),$last_word];
    }

    return [$sentence,$sentence];
}

function isset_and_array($var){

    return (isset($var)&&is_array($var)&&count($var));

}

function convert_youtube_link_to_lazy_frame($youtube_link="",$width="",$height=""){
    $embed=extract_youtube_links($youtube_link);
    if(isset_and_array($embed)){
        $embed=$embed[0];

        return '<iframe width="'.$width.'" height="'.$height.'" class="lazy1"
                    src="'.$embed.'"
                    frameborder="0"
                    allowfullscreen>
                </iframe>';
    }
    return "";
}

function return_youtube_thumbnail($youtube_link=""){
    //https://img.youtube.com/vi/<insert-youtube-video-id-here>/0.jpg
    $youtube_code=explode("=",$youtube_link);
    if(isset_and_array($youtube_code)){
        $youtube_code=$youtube_code[1];

        return "https://img.youtube.com/vi/$youtube_code/0.jpg";
    }
    return "";
}



function intPart($float) {
    if ($float < -0.0000001)
        return ceil($float - 0.0000001);
    else
        return floor($float + 0.0000001);
}

function Greg2Hijri($day, $month, $year, $string = false) {
    $day = (int) $day;
    $month = (int) $month;
    $year = (int) $year;


    if (($year > 1582) or ( ($year == 1582) and ( $month > 10)) or ( ($year == 1582) and ( $month == 10) and ( $day > 14))) {
        $jd = intPart((1461 * ($year + 4800 + intPart(($month - 14) / 12))) / 4) + intPart((367 * ($month - 2 - 12 * (intPart(($month - 14) / 12)))) / 12) -
            intPart((3 * (intPart(($year + 4900 + intPart(($month - 14) / 12) ) / 100) ) ) / 4) + $day - 32075;
    } else {
        $jd = 367 * $year - intPart((7 * ($year + 5001 + intPart(($month - 9) / 7))) / 4) + intPart((275 * $month) / 9) + $day + 1729777;
    }


    $l = $jd - 1948440 + 10632;
    $n = intPart(($l - 1) / 10631);
    $l = $l - 10631 * $n + 354;
    $j = (intPart((10985 - $l) / 5316)) * (intPart((50 * $l) / 17719)) + (intPart($l / 5670)) * (intPart((43 * $l) / 15238));
    $l = $l - (intPart((30 - $j) / 15)) * (intPart((17719 * $j) / 50)) - (intPart($j / 16)) * (intPart((15238 * $j) / 43)) + 29;

    $month = intPart((24 * $l) / 709);
    $day = $l - intPart((709 * $month) / 24);
    $year = 30 * $n + $j - 30;

    $date = array();
    $date['year'] = $year;
    $date['month'] = $month;
    $date['day'] = $day;


    if (!$string)
        return $date;
    else
        return "{$year}-{$month}-{$day}";
}



function get_hegri_date($date=null){
    if($date==null){
        $date=time();
    }

    $hijriDate = Greg2Hijri(date("d",$date), date("m",$date), date("Y",$date));

    $hijriMonth = array("محرم", "صفر", "ربيع الأول", "ربيع الثانى ", "جماد الاول", "جماد الثانى", "رجب", "شعبان", "رمضان", "شوال", "ذى القعده", "ذى الحجه");

    $year = $hijriDate["year"];
    $month = $hijriMonth[$hijriDate["month"] - 1];
    $day = $hijriDate["day"]+1;

    return $day . " " . $month . " " . $year;
}


function k_to_c($temp) {
    if ( !is_numeric($temp) ) { return false; }
    return round(($temp - 273.15));
}


function dump_date($str_data="",$format="j/ n/ Y"){
    return date($format,strtotime($str_data));
}

function populate_trans_admin($keyword,$en_val,$ar_val){
    $arr["en"]=$en_val;
    $arr["ar"]=$ar_val;
    return $arr;
}

function translate_admin_panel($data,$classification,$keyword,$lang){
    if(
        isset($data)&&isset($keyword)&&isset($lang)&&isset($classification)&&
        isset($data[$classification])&&isset($data[$classification][$keyword])&&isset($data[$classification][$keyword][$lang])){
        return $data[$classification][$keyword][$lang];
    }

    return $keyword;
}


function get_currency_rates($currencies)
{
    $currencies = implode(',',$currencies);
    $url = "http://www.apilayer.net/api/live?access_key=75cb1c553f0ba5c222fa2a05b4069153&currencies=$currencies";
    $data = file_get_contents($url);
    if(!empty($data))
    {
        $data = json_decode($data);
        if (isset($data))
        {
            return $data;
        }

    }

    return "";
}

function implode_arr($arr,$implode_delimiter="-",$remove_duplicate=true){
    if(!isset_and_array($arr)){
        return "";
    }

    if($remove_duplicate){
        $arr=array_unique($arr);
    }

    $arr=implode($implode_delimiter,$arr);
    $arr="-".$arr."-";

    return $arr;
}

function explode_arr($string,$explode_delimiter="-"){
    $string=explode($explode_delimiter,$string);
    return $string;
}

function have_permission_or_redirect($user_permissions,$permission_page,$action,$url_redirect_to="admin/dashboard"){
    if (!check_permission($user_permissions,$permission_page,$action))
    {
        return  \Redirect::to($url_redirect_to)->
        with(["msg"=>"<div class='alert alert-danger'>You've not the permission</div>"])->
        send();

        die();
    }
}

function hear_from (){
    return [

        "Please Select How"=>"Please Select How",
        "Google or other Search Engine"=>"Google or other Search Engine",
        "LinkedIn"=>"LinkedIn",
        "Social Media"=>"Social Media",
        "Business Relation"=>"Business Relation",
        "GICT Sales"=>"GICT Sales",
        "GICT Sales (Godson)"=>"GICT Sales (Godson)",
        "dban.org"=>"dban.org"
    ];
}

function draw_stars($value,$stars_count=5){

    $int_val=(int)$value;
    $return_html="";

    for($i=0;$i<$int_val;$i++){
        $return_html.='<span class="glyphicon glyphicon-star"></span>';
    }

    if($value>$int_val){
        $return_html.='<span class="glyphicon glyphicon-star half"></span>';
    }

    $rest_val=$stars_count-$value;
    $rest_int_val=(int)$rest_val;

    for($i=0;$i<$rest_int_val;$i++){
        $return_html.='<span class="glyphicon glyphicon-star reverse"></span>';
    }

    return $return_html;
}