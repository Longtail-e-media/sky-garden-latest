<?php
/*
* Top Social Links
*/
$socialRec = SocialNetworking::getSocialNetwork();
$siteRegulars = Config::find_by_id(1);
$resocl = '';

if (!empty($socialRec)) {
    foreach ($socialRec as $socialRow) {
        // pr($socialRow);
        $resocl .= '
        <li>
            <a href="' . $socialRow->linksrc . '" class="white" target="_blank" rel = "noopener noreferror"><i class="'.$socialRow->image.'" aria-hidden="true"></i></a>
        </li>';
    }
}

$jVars['module:socilaLinkbtm'] = $resocl;


/*
* Home social link
*/
$ressl = '';
if (!empty($socialRec)) {
    foreach ($socialRec as $socialRow) {
        $ressl .= ' <a href="' . $socialRow->linksrc . '" target="_blank" rel = "noopener noreferror"><i class="fa ' . $socialRow->image . '"></i></a>';
    }
}

$jVars['module:socilaLinktop'] = $ressl;

$detect = new Mobile_Detect;

$ret = '';



$ota = "";
$ota .= '<div class="row otas">
                        <div class="col-md-3 col-xs-4 col-6 ota">
                            <a href="https://www.expedia.co.in/Pokhara-Hotels-Hotel-Peninsula.h8323628.Hotel-Information?rfrr=Redirect.From.www.expedia.com%2FPokhara-Hotels-Hotel-Peninsula.h8323628.Hotel-Information" target="_blank"><img src="' . BASE_URL . 'template/web/img/icon/ex.png" alt="social"></a>
                        </div>
                        <div class="col-md-3 col-xs-4 col-6 ota">
                            <a href="https://www.booking.com/hotel/np/peninsula.en-gb.html" target="_blank" rel = "noopener noreferror"><img src="' . BASE_URL . 'template/web/img/icon/bo.png" alt="social"></a>
                        </div>
                        <div class="col-md-3 col-xs-4 col-6 ota">
                            <a href="https://www.makemytrip.com/hotels-international/nepal/pokhara-hotels/hotel_peninsula-details.html" target="_blank" rel = "noopener noreferror"><img src="' . BASE_URL . 'template/web/img/icon/ma.png" alt="social"></a>
                        </div>
                        <div class="col-md-3 col-xs-4 col-6 ota">
                            <a href="https://www.tripadvisor.com/Hotel_Review-s1-g293891-d2064976-Reviews-Hotel_Peninsula-Pokhara_Gandaki_Zone_Western_Region.html" target="_blank" rel = "noopener noreferror"><img src="' . BASE_URL . 'template/web/img/icon/ta.png" alt="social"></a>
                        </div>
                        <div class="col-md-3 col-xs-4 col-6 ota">
                            <a href="#" target="_blank" rel = "noopener noreferror"><img src="' . BASE_URL . 'template/web/img/icon/ct.png" alt=social""></a>
                        </div>
                        <div class="col-md-3 col-xs-4 col-6 ota">
                            <a href="https://www.agoda.com/pages/agoda/default/DestinationSearchResult.aspx?selectedproperty=293557&city=5733&hid=293557&site_id=1646622&tag=c4dffc98-485d-9eb9-a1b8-ff1699d7e839&device=c&network=g&adid=204833898677&rand=11384011593909406552&expid=&adpos=1t3&gclid=Cj0KCQjwvdXpBRCoARIsAMJSKqID39KX5fYAQ1Wru2uoUkkLE-sky3RZ_nLwUNf3GrzSlmFvCy5zArMaAkwcEALw_wcB" target="_blank" rel = "noopener noreferror"><img src="' . BASE_URL . 'template/web/img/icon/ag.png" alt="social"></a>
                        </div>
                        <div class="col-md-3 col-xs-4 col-6 ota">
                            <a href="https://www.trivago.com/?iGeoDistanceItem=2108754&aDateRange%5Barr%5D=2018-01-30&aDateRange%5Bdep%5D=2018-01-31&iPathId=85969&iRoomType=7" target="_blank" rel = "noopener noreferror"><img src="' . BASE_URL . 'template/web/img/icon/tri.png" alt="social"></a>
                        </div>
                        <div class="col-md-3 col-xs-4 col-6 ota">
                            <a href="https://www.goibibo.com/hotels/peninsula-hotel-in-pokhara-1152238026423715335/?hquery=%7B%22ci%22%3A%2220180126%22%2C%22co%22%3A%2220180127%22%2C%22r%22%3A%221-2-0%22%2C%22ibp%22%3A%22na%22%2C%22ts%22%3A1%7D" target="_blank" rel = "noopener noreferror"><img src="' . BASE_URL . 'template/web/img/icon/go.png" alt="social"></a>
                        </div>
                    </div>';
$jVars['module:ota'] = $ota;
?>