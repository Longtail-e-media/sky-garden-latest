<?php
/* First Slideshow */
$reslide='';

$Records = Slideshow::getSlideshow_by(1);
// var_dump($Records); die();
if($Records) {
        foreach($Records as $RecRow) {
            $file_path = SITE_ROOT.'images/slideshow/'.$RecRow->image;
            if(file_exists($file_path) and !empty($RecRow->image)) {
                
                $reslide.='
                    <div class="swiper-slide" style="background-image: url('.IMAGE_PATH.'slideshow/'.$RecRow->image.')">
                        <div class="swiper-content">
                            <h5 data-animation="animated initial-scale">
                                '.strtoupper($RecRow->title).'
                            </h5>
                            <h3 data-animation="animated fadeInUp">
                                '.$RecRow->content.'
                            </h3>
                        </div>
                    </div>
                            ';

            }
        }

}

$jVars['module:slideshow']= $reslide;
?>