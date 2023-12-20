<?php
$nearbydetail = $nearbydetail_modals= $imageList = $nearbybred = '';

if (defined('HOME_PAGE')) {
    $recRows = Nearby::find_all_active();
    if (!empty($recRows)) {
        $c=1;
        foreach($recRows as $recRow){
            $link = '';
            // pr($recRow);


            if($recRow->linktype ==0){
                $link = BASE_URL . $recRow->linksrc;
            }
            else{
                $link = $recRow->linksrc;

            }

            $imglink = BASE_URL . 'template/web/img/slider/2.jpg';
            if ($recRow->image != "a:0:{}") {
                $imageList = unserialize($recRow->image);
                $imgno = array_rand($imageList);
                $file_path = SITE_ROOT . 'images/nearby/' . $imageList[$imgno];
                if (file_exists($file_path)) {
                    $imglink = IMAGE_PATH . 'nearby/' . $imageList[$imgno];
                }
            }
            // pr($recRow);
            if(($c!=2) && ($c!=3)){
                $nearbydetail .= '
                <div class="col-lg-6 col-md-12">
                    <div class="dine-inner-img pkg-inner">
                        <img src="'.$imglink.'" alt="pkg" class="image">
                        <div class="overlay">
                            <div class="text">
                                <a href="'. $link .'"><h4>'.$recRow->title.'</h4></a>
                            </div>
                        </div>
                    </div>
                </div>';

            }else{
                $nearbydetail .= '
                    
                <div class="col-lg-3 col-md-6">
                    <div class="dine-inner-img pkg-inner">
                        <img src="'.$imglink.'" alt="pkg" class="image">
                        <div class="overlay">
                            <div class="text">
                                <a href="'. $link .'"><h4>'.$recRow->title.'</h4></a>
                            </div>
                        </div>
                    </div>
                </div>';
            }
            if($c==5){
                $c=0;
            }
            $c++;
     

        } 
    }
}
// pr($nearbydetail);


$jVars['module:inner-nearby-detail'] = $nearbydetail;
// $jVars['module:inner-nearby-detail-modals'] = $nearbydetail_modals;

?>