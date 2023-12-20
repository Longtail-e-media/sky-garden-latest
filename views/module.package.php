<?php
$booking_code = Config::getField('hotel_code', true);

$siteRegulars = Config::find_by_id(1);

/*
* Home accmodation list
*/
$reshmpkg = '';
$imageList = '';

// if (defined('HOME_PAGE')) {
//     $acid = Package::get_accommodationId();
//     $pkgRec = Package::find_by_id($acid);
//     if (!empty($pkgRec)) {
//         $subRec = Subpackage::getPackage_limit($acid);

//         if (!empty($subRec)) {
//             $imglink = '';
//             $reshmpkg .= '';

//             $reshmpkg .= "";
//             foreach ($subRec as $subRow) {
//                 $features_of_rooms='';
//                 if(!empty($subRow->class_room_style)){
//                 $features_of_rooms = '<div class="tags featured">'. $subRow->class_room_style  .'</div>';
//                 }

//                 $img123 = unserialize($subRow->image);

//                 if (!empty($subRow->image)) {

//                     $imglink = IMAGE_PATH . 'subpackage/' . $img123[0];
//                 } else {
//                     $imglink = IMAGE_PATH . 'static/gallery1.jpg';
//                 }
//                 $file_path = SITE_ROOT . 'images/subpackage/' . $img123[0];
//                 if (file_exists($file_path) and !empty($subRow->image)) {
//                                 $reshmpkg .= '
//                             <div class="col-md-4 room-item wow fadeInUp" data-wow-delay=".4s">
//                                <div class="inner">
//                                    '. $features_of_rooms .'
//                                    <img src="' . $imglink . '" class="img-responsive" alt="' . $subRow->title . '">
//                                    <h3>' . $subRow->title . '</h3>
//                                    <div class="price_from">Start From <span>'. $subRow->currency .' ' . $subRow->onep_price . '++</span>/night</div>
//                                    <div class="spacer-half"></div>
//                                    <a href="' . BASE_URL . $subRow->slug . '" class="btn-detail">View Details</a>
//                                </div>
//                            </div>
//                                 ';
                            
//                 }
//             }
//             $reshmpkg .= '';
//         }
//     }
// }




$jVars['module:home-accommodation'] = $reshmpkg;





/*
* Home Extra pkg  list
*/
$newpkg = '';
$reshplist = $pakagehometype =$roomlist = $sbpkglist = '';

if (defined('HOME_PAGE')) {    
    $subpkgRow = Package::find_by_id(8);
    $pkgRec = Subpackage::getPackage_limits(8, 6);
    
    if (!empty($subpkgRow)) {
        $c=0;

            $features ='';
            $imageList = '';
            $imglink = '';

            if ($subpkgRow->header_image != "a:0:{}") {
                $imageList = unserialize($subpkgRow->header_image);
                foreach($imageList as $img){
                    $file_path = SITE_ROOT . 'images/package/imgheader/' . $img;
                    if (file_exists($file_path) and !empty($img)) {
                        $roomlist .= '
                    
                        <div class="col-lg-12 col-md-6 mx-3">
                            <div class="room-item">
                                <div class="room-image">
                                    <img src="'.IMAGE_PATH . 'package/imgheader/' . $img.'" alt="pkg" class="image">
                                </div>
                            </div>
                        </div>';
                    }
                }

                
            }

            $newpkg.='
            <div class="section-title">
                <h2>'.$subpkgRow->home_title.'</h2>
                    '.$subpkgRow->content.'
            </div>
            
            
            <div class="room-outer" style="margin-top: 35px;margin-bottom: 33px;">
                <div class="row team-slider">
                    '.$roomlist.'

                </div>
            </div>';


            foreach ($pkgRec as $key => $pkgRow) {
                $features ='';
                $imageList = '';
                $imglink = '';
    
                if ($pkgRow->header_image != "a:0:{}") {
                    $imageList = unserialize($pkgRow->image);


                        $file_path = SITE_ROOT . 'images/subpackage/' . $imageList[0];
                        if (file_exists($file_path) and !empty($imageList[0])) {
                            $imglink .= '
                            <div class="room-image">
                                <img src="'.IMAGE_PATH . 'subpackage/' . $imageList[0].'" alt="image" />
                            </div>';
                        }
                    
    

                }else {
                    $imglink .= '
                    <div class="room-image">
                        <img src="'.IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload.'" alt="image" />
                    </div>';
                }
    

                // pr($pkgRow);
                $sbpkglist .= '
        
                    <div class="col-lg-12 col-md-6 mx-3">
                        <div class="room-item">
                            '. $imglink .'
                            <div class="room-content">
                                <div class="room-title">
                                    <h4>'.$pkgRow->title.'</h4>
                                </div>
                                <div class="room-services mar-bottom-15">
                                    <p>'.$pkgRow->detail.'</p>
                                </div>
                                <div class="room-btns mar-top-20">
                                    <a href="'.BASE_URL.'gallery-list" class="btn btn-orange">Discover</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    ';
                    $c++;
            }


    }
}

$jVars['module:newpkg'] = $newpkg;
$jVars['module:newpkg-subpkg'] = $sbpkglist;


/////HOmepage room section
$reshplist = $pakagehometype =$roomlist =  $roomhead = '';
if (defined('HOME_PAGE')) {
    $pgkRows = Package::find_by_id(1);
    $pkgRec = Subpackage::getPackage_limits(1, 6);
    $roomhead .= '<h2>'. $pgkRows->home_title .'</h2>';
    $roomhead .= $pgkRows->detail;
    if (!empty($pkgRec)) {
        $c=0;

        foreach ($pkgRec as $key => $subpkgRow) {
            $features ='';
            $imageList = '';
            $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;

            // pr($subpkgRow);
            if (!empty($subpkgRow->image2)) {
                $file_path = SITE_ROOT . 'images/subpackage/image/' . $subpkgRow->image2;
                if (file_exists($file_path) and !empty($subpkgRow->image2)) {
                    $imglink = IMAGE_PATH . 'subpackage/image/' . $subpkgRow->image2;
                }else {
                    $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;
                }
            }else {
                $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;
            }
            // pr($imglink);

            $saveRec = unserialize($subpkgRow->feature);
            // pr($saveRec);
            if ($saveRec != null) {
                // pr($saveRec);


                foreach($saveRec as $key => $val ){
                    $featureList = $saveRec[$key][1];
                    $feature_list ='';
                    $feature_list_1 ='';
                    if (!empty($featureList)) {
                        $icoRec = '';
                        $i=0;
                        $feature_list ='';
                        $feature_list_1 ='';

                        foreach ($featureList as $fetRow) {
                            $icoRec = Features::get_by_id($fetRow);
                            if($i==8){
                                break;
                            }

                        
                            if(!empty($icoRec->image )){
                                $features .= '
                                <div class="col-md-3 col-sm-6 col-xs-12">
                                    <div class="icons-amnities">
                                        <img src="'.IMAGE_PATH . 'features/' . $icoRec->image .'" alt="' . $icoRec->title . '">
                                        <p>' . $icoRec->title . '</p>
                                    </div>
                                </div>';  
                            }
                            $i++;


                        }
                    }
                }
            }


    
           $left='';
            ($c % 2 == 0)?$left = ' left ':'';
            $roomlist .= '
                <div class="col-lg-12 col-md-12">
                    <div class="room-item">
                        <div class="room-image">
                            <img src="'. $imglink .'" alt="image" />
                        </div>
                        <div class="room-content">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="room-title">
                                        <h4>'. $subpkgRow->title .'</h4>
                                        <span>'.$subpkgRow->view .'  (BB Plan)</span>
                                    </div>
                                    <div class="room-services mar-bottom-15">
                                        
                                        <p>'. $subpkgRow->detail .'</p>
                                        <a href="' . BASE_URL . $subpkgRow->slug . '" class="btn btn-orange btn-room2">View Room</a>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="row">
                                        '. $features .'
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                ';
                $c++;

        }
    }
    /* $reshplist.= '</div>
                 </div>
             </div>';*/
}

$jVars['module:home-packagelist'] = $roomlist;
$jVars['module:home-package-type-list'] = $pakagehometype;
$jVars['module:home-package-type-header'] = $roomhead;





/////HOmepage other service section
$reshplist = $pakagehometype =$roomlist =  '';
if (defined('HOME_PAGE')) {
    $pgkRows = Package::getPackageByType(1);
    // pr($pgkRows);
    $pkgRec = Package::getPackageByType(1);

    if (!empty($pkgRec)) {
        $c=0;

        foreach ($pkgRec as $key => $subpkgRow) {
            if($subpkgRow->id != 8){
                    $features ='';
                    $imageList = '';
                    $imglink = '';

                    if ($subpkgRow->header_image != "a:0:{}") {
                        $imageList = unserialize($subpkgRow->header_image);
                        foreach($imageList as $img){
                            $file_path = SITE_ROOT . 'images/package/imgheader/' . $img;
                            if (file_exists($file_path) and !empty($img)) {
                                $imglink .= '
                                <div class="room-item">
                                    <div class="room-image">
                                        <img src="'.IMAGE_PATH . 'package/imgheader/' . $img.'" alt="image" />
                                    </div>
                                </div>';
                            }
                        }

                        
                    }else {
                        $imglink .= '
                        <div class="room-item">
                            <div class="room-image">
                                <img src="'.IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload.'" alt="image" />
                            </div>
                        </div>';
                    }


                    // pr($subpkgRow);
                    $left='';
                    ($c % 2 == 0)?$left = ' left ':'';
                    $roomlist .= '
                    

                        

                            <div class="col-lg-6">
                            <div class="room-outer">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12">
                                        <div class="room-slider-one">
                                            '.$imglink.'
                                        </div>

                                        <div class="room-content">
                                            <div class="room-title">
                                                <h4 style="font-size: 27px;">'.$subpkgRow->home_title.'</h4>
                                            </div>
                                            <div class="room-services mar-bottom-15">
                                                <p>'.$subpkgRow->detail.'</p>
                                            </div>
                                            <div class="room-btns mar-top-20">
                                                <a href="' . BASE_URL . $subpkgRow->slug . '" class="btn btn-orange">Learn More</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        ';
                        $c++;
                }
        }
    }
    /* $reshplist.= '</div>
                 </div>
             </div>';*/
}

$jVars['module:home-packagelist-service'] = $roomlist;
$jVars['module:home-package-type-list-service'] = $pakagehometype;


$roomlist = $roombread = $room_desc = $final_roomlist = '';

if (defined('PACKAGE_PAGE') and isset($_REQUEST['slug'])) {

    $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
    $pkgRow = Package::find_by_slug($slug);

    $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;
    $pkgRowImg = $pkgRow->banner_image;
    if ($pkgRowImg != "a:0:{}") {
        $pkgRowList = unserialize($pkgRowImg);
        $file_path = SITE_ROOT . 'images/package/banner/' . $pkgRowList[0];
        if (file_exists($file_path) and !empty($pkgRowList[0])) {
            $imglink = IMAGE_PATH . 'package/banner/' . $pkgRowList[0];
        }else {
            $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;
        }
    }else {
        $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;
    }
    $room_desc = $pkgRow->content;
    $roombread .= ' 
        <section class="breadcrumb-outer room-outer"  style="background: url(' . $imglink . ') no-repeat !important;    background-size: cover !important;
        background-position: center !important;">
            <div class="container">
                <div class="breadcrumb-content">
                    <h2>' . $pkgRow->sub_title . '</h2>
                    <nav aria-label="breadcrumb">
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item">' . $pkgRow->sub_sub_title . '</li>
                        </ul>
                    </nav>
                </div>
            </div>
        </section>';

    $sql = "SELECT *  FROM tbl_package_sub WHERE status='1' AND type = '{$pkgRow->id}' ORDER BY sortorder DESC ";

    $page = (isset($_REQUEST["pageno"]) and !empty($_REQUEST["pageno"])) ? $_REQUEST["pageno"] : 1;
    $limit = 200;
    $total = $db->num_rows($db->query($sql));
    $startpoint = ($page * $limit) - $limit;
    $sql .= " LIMIT " . $startpoint . "," . $limit;
    $query = $db->query($sql);
    $pkgRec = Subpackage::find_by_sql($sql);
    // pr($pkgRow);

    if (!empty($pkgRec)) {
        if($pkgRow->id ==1){
            $c=1;

            foreach ($pkgRec as $key => $subpkgRow) {
                $features ='';
                $imageList = '';
                $img_bund = '';
                $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;

                if ($subpkgRow->image != "a:0:{}") {
                    $imageList = unserialize($subpkgRow->image);
                    // pr($imageList);
                    foreach($imageList as $imgind){
                        $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;

                        $file_path = SITE_ROOT . 'images/subpackage/' . $imgind;
                        if (file_exists($file_path) and !empty($imgind)) {
                            $imglink = IMAGE_PATH . 'subpackage/' . $imgind;
                        }else {
                            $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;
                        }

                        $img_bund .= '
                            <div class="room-item">
                                <div class="room-image">
                                    <img src="'. $imglink .'" alt="image" />
                                </div>
                            </div>';
                    }

                }else {
                    $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;
                    $img_bund .= '
                            <div class="room-item">
                                <div class="room-image">
                                    <img src="'. $imglink .'" alt="image" />
                                </div>
                            </div>';
                }


                $saveRec = unserialize($subpkgRow->feature);
                // pr($saveRec);
                    $count = 1;
                    // if ($saveRec != null) {
                    //     $featureList = $saveRec[113][1];
                    //     if (!empty($featureList)) {
                    //         $icoRec = '';
                    //         $i=0;
                    //         $feature_list ='';
                    //         foreach ($featureList as $fetRow) {
                    //             $icoRec = Features::get_by_id($fetRow);
                                
                    //             $feature_list .= '<li><i class="ti-check"></i> ' . $icoRec->title . '</li>';  
                    //             $i++;
                    //             if($i%2==0){
                    //                 $features .= '
                    //                 <div class="col-md-4">
                    //                     <ul>
                    //                         '. $feature_list .'
                    //                     </ul>
                    //                 </div>';
                    //                 $feature_list='';
                    //             }
                                    
                    //                 if ($count++ == 6) break;

                    //         }
                    //     }

                    // }


            $left='';
                ($c % 2 == 0)?$left = ' left ':'';

                if($c % 2 == 0 ){
                    $roomlist .='
                    <div class="rooms2 mb-90 animate-box fadeInUp animated" data-animate-effect="fadeInUp">
                        <div class="container">
                            <div class="room-list-one">
                                <div class="row">
                                    <div class="col-lg-5 col-md-12 order-2 order-lg-1">
                                        <div class="caption">
                                            <h4><a href="' . BASE_URL . $subpkgRow->slug . '">'. $subpkgRow->title .'</a></h4><span>'.$subpkgRow->view . ' (BB Plan)</span>
                                            <p>'. $subpkgRow->detail .'</p>
                                            <div class="row room-facilities">
                                                <div class="col-md-12">
                                                    <ul>
                                                        <li>Room Size: '. $subpkgRow->room_size .'</li>
                                                        <li>Bed Type: '. $subpkgRow->extra_bed .'</li>
                                                        <li>Occupancy: '. $subpkgRow->occupancy .'</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="info-wrapper">
                                                <div class="room-btns more">
                                                    <a href="' . BASE_URL . $subpkgRow->slug . '" class="btn btn-orange">VIEW DETAILS</a><br/>
                                                    <a href="result.php?hotel_code=uynSCw" target="_blank" rel = "noopener noreferror" class="btn btn-black mar-right-10">BOOK NOW</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
        
                                    <div class="col-lg-7 col-md-12 order-1 order-lg-2">
                                        <div class="room-slider-one">
                                            '. $img_bund .'
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--<img src="images/about/leaf1.png" class="leaf_4">-->
                    </div> 
                    ';
                }else{
                    $roomlist .= '
                        <div class="rooms2 mb-90 left animate-box fadeInUp animated" data-animate-effect="fadeInUp">
                            <div class="container">
                                <div class="room-list-one">
                                    <div class="row">
                                        <div class="col-lg-7 col-md-12">
                                            <div class="room-slider-one">
                                                '. $img_bund .'
                                            </div>
                                        </div>
            
                                        <div class="col-lg-5 col-md-12">
                                            <div class="caption">
                                                <h4><a href="' . BASE_URL . $subpkgRow->slug . '">'. $subpkgRow->title .'</a></h4><span>'.$subpkgRow->view . ' (BB Plan)</span>
                                                <p>'. $subpkgRow->detail .'</p>
                                                <div class="row room-facilities">
                                                    <div class="col-md-12">
                                                        <ul>
                                                            <li>Room Size: '. $subpkgRow->room_size .'</li>
                                                            <li>Bed Type: '. $subpkgRow->extra_bed .'</li>
                                                            <li>Occupancy: '. $subpkgRow->occupancy .'</li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                
                                                <div class="info-wrapper">
                                                    <!--<div class="more"><a href="' . BASE_URL . $subpkgRow->slug . '" class="link-btn" tabindex="0">View Details <i class="ti-arrow-right"></i></a></div>-->
                                                    <div class="room-btns more">
                                                        <a href="' . BASE_URL . $subpkgRow->slug . '" class="btn btn-orange">VIEW DETAILS</a><br/>
                                                        <a href="result.php?hotel_code=uynSCw" target="_blank" rel = "noopener noreferror" class="btn btn-black mar-right-10">BOOK NOW</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                            ';
                    }
                    $c++;

            }

            $final_roomlist .='
                <section class="about" style="padding-bottom:0px;">
                    <div class="container">
                        <div class="section-title">
                            <h2>COMFORT IN <span style="color:#176533;font-weight: 400;">THE JUNGLE</span></h2>
                            <p>'.$room_desc.'</p>
                        </div>
                    </div>
            
                    <div class="row">
                        <div class="col-md-12">
                            '.$roomlist.'
                        </div>
                    </div>
                </section>
                ';
        }

        if($pkgRow->id ==6){
            $c=1;
            foreach ($pkgRec as $key => $subpkgRow) {
                $features ='';
                $imageList = '';
                $img_bund = '';
                $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;

                if ($subpkgRow->image != "a:0:{}") {
                    $imageList = unserialize($subpkgRow->image);
                    // pr($imageList);
                    foreach($imageList as $imgind){
                        $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;

                        $file_path = SITE_ROOT . 'images/subpackage/' . $imgind;
                        if (file_exists($file_path) and !empty($imgind)) {
                            $imglink = IMAGE_PATH . 'subpackage/' . $imgind;
                        }else {
                            $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;
                        }

                        $img_bund .= '
                            <div class="room-item">
                                <div class="room-image">
                                    <img src="'. $imglink .'" alt="image" />
                                </div>
                            </div>';
                    }

                }else {
                    $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;
                    $img_bund .= '
                            <div class="room-item">
                                <div class="room-image">
                                    <img src="'. $imglink .'" alt="image" />
                                </div>
                            </div>';
                }

                


            $left='';
                ($c % 2 == 0)?$left = ' left ':'';
                if($c % 2 != 0 ){
                    $roomlist .='
                    


                                <div class="rooms2 mb-90 left animate-box fadeInUp animated hall-below" data-animate-effect="fadeInUp">
                                    <div class="row">
                                        <div class="col-lg-5 col-md-12 order-2 order-lg-1">
                                            <div class="caption dine-caption">
                                                <h4 class="animated-text animated-text-right">'. $subpkgRow->title .'</h4><p class="hall-text7 animated-text animated-text-right">Hall Size: '. $subpkgRow->room_size .'</p>
                                                <p class="hall-txt animated-text animated-text-right">'. $subpkgRow->content .'</p>';
                                                
                                            
                                                
                        $saveRec = unserialize($subpkgRow->feature);
                        $count = 1;
                        if ($saveRec != null) {
                            $feature_list ='';
                            $feature_list_1 ='';

                            foreach($saveRec as $key => $val ){
                                $featureList = $saveRec[$key][1];

                                if (!empty($featureList)) {

                                    $icoRec = '';
                                    $i=0;


                                    foreach ($featureList as $fetRow) {
                                        $icoRec = Features::get_by_id($fetRow);

                                        if($i%2==0){
                                            $feature_list .= '<li>' . $icoRec->title . '</li>';  
                                        }else{
                                            $feature_list_1 .= '<li>' . $icoRec->title . '</li>';  
                                        }
                                        $i++;

        
                                    }

                                }
                            }
                            
                            $roomlist .= '
                                <h3 class="animated-text animated-text-right">Amenities</h3>
                                <div class="row room-facilities animated-text animated-text-right">
                                    <div class="col-md-6">
                                        <ul>
                                            '. $feature_list .'
                                        </ul>
                                    </div>
                                    
                                    <div class="col-md-6">
                                        <ul>
                                            '. $feature_list_1 .'
                                        </ul>
                                    </div>
                                </div>';
                        }
                    

                    $roomlist .='
                                </div>
                            </div>

                            <div class="col-lg-7 col-md-12 order-1 order-lg-2">
                                <div class="room-slider-one">
                                    '.$img_bund.'
                                </div>
                            </div>
                        </div>
                    </div>
                    ';
                    $roomlist .= $subpkgRow->below_content;
                }else{
                    $roomlist .='
                            <div class="rooms2 mb-90 left animate-box fadeInUp animated hall-below" data-animate-effect="fadeInUp">
                                <div class="row">

                                    <div class="col-lg-7 col-md-12">
                                        <div class="room-slider-one">
                                            '.$img_bund.'
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-md-12">
                                        <div class="caption dine-caption">
                                            <h4 class="animated-text animated-text-right">'. $subpkgRow->title .'</h4><p class="hall-text7 animated-text animated-text-right">Hall Size: '. $subpkgRow->room_size .'</p>
                                            <p class="hall-txt animated-text animated-text-right">'. $subpkgRow->content .'</p>';
                                            
                                        
                                            
                    $saveRec = unserialize($subpkgRow->feature);
                    $count = 1;
                    if ($saveRec != null) {
                        // pr($saveRec);

                        $feature_list ='';
                        $feature_list_1 ='';
                        foreach($saveRec as $key => $val ){
                            $featureList = $saveRec[$key][1];

                            if (!empty($featureList)) {
                                $icoRec = '';
                                $i=0;


                                foreach ($featureList as $fetRow) {
                                    $icoRec = Features::get_by_id($fetRow);
                                    
                                    if($i%2==0){
                                        $feature_list .= '<li>' . $icoRec->title . '</li>';  
                                    }else{
                                        $feature_list_1 .= '<li>' . $icoRec->title . '</li>';  
                                    }
                                    $i++;


                                }
                            }
                        }
                        $roomlist .= '
                            <h3 class="animated-text animated-text-right">Amenities</h3>
                            <div class="row room-facilities animated-text animated-text-right">
                                <div class="col-md-6">
                                    <ul>
                                        '. $feature_list .'
                                    </ul>
                                </div>
                                
                                <div class="col-md-6">
                                    <ul>
                                        '. $feature_list_1 .'
                                    </ul>
                                </div>
                            </div>';
                    }
                

                    $roomlist .='
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    ';
                    $roomlist .= $subpkgRow->below_content;

                }

            $c++;
                }
                $final_roomlist .='

                        <section class="about hall-mobile" style="padding-bottom:0px;">
                            <div class="container">
                                <div class="section-title">
                                    <h2>CONFERENCES <span style="color:#B59410;font-weight: 400;"> AND EVENTS</span></h2>
                                    <p>
                                        '.$room_desc.'
                                    </p>
                                </div>
                                <div class="row dine-home">
                                    <div class="col-md-12">
                                        '.$roomlist.'
                                        <ul class="pagination">
                                            <li>
                                                <a href="'. BASE_URL .'contact-us">Book A Hall</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </section>
                            ';
        }
        if($pkgRow->id ==7){
            $c=1;
            foreach ($pkgRec as $key => $subpkgRow) {
                $features ='';
                $imageList = '';
                $img_bund = '';
                $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;

                if ($subpkgRow->image != "a:0:{}") {
                    $imageList = unserialize($subpkgRow->image);
                    // pr($imageList);
                    foreach($imageList as $imgind){
                        $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;

                        $file_path = SITE_ROOT . 'images/subpackage/' . $imgind;
                        if (file_exists($file_path) and !empty($imgind)) {
                            $imglink = IMAGE_PATH . 'subpackage/' . $imgind;
                        }else {
                            $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;
                        }

                        $img_bund .= '
                            <div class="room-item">
                                <div class="room-image">
                                    <img src="'. $imglink .'" alt="image" />
                                </div>
                            </div>';
                    }

                }else {
                    $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;
                    $img_bund .= '
                            <div class="room-item">
                                <div class="room-image">
                                    <img src="'. $imglink .'" alt="image" />
                                </div>
                            </div>';
                }

                

            $left='';
                ($c % 2 == 0)?$left = ' left ':'';
                if($c % 2 != 0 ){
                    $roomlist .='
                    <div class="rooms2 mb-90 animate-box fadeInUp animated" data-animate-effect="fadeInUp">
                        <div class="room-list-one">
                            <div class="row">
                            <div class="col-lg-7 col-md-12">
                                <div class="room-slider-one">
                                    '. $img_bund .'
                                </div>
                            </div>

                            <div class="col-lg-5 col-md-12">
                                <div class="caption dine-caption">
                                    <h4 class="animated-text"><a href="#">'. $subpkgRow->title .'</a></h4>
                                    <div class="row room-facilities animated-text">
                                        <div class="col-md-12">
                                            <ul>
                                                <li>Capacity</li>
                                                <li>'. $subpkgRow->occupancy .'</li>
                                            </ul>

                                            <ul>
                                                <li>Type</li>
                                                <li>'. $subpkgRow->extra_bed .'</li>
                                            </ul>

                                            <ul>
                                                <li>Timing</li>
                                                <li>'. $subpkgRow->checkinout .'</li>
                                            </ul>
                                            <ul>
                                                <li>'. $subpkgRow->content .'</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    ';
                }else{
                    $roomlist .='
                            <div class="rooms2 mb-90 left animate-box fadeInUp animated" data-animate-effect="fadeInUp">
                                <div class="room-list-one">
                                    <div class="row">
                                    <div class="col-lg-5 col-md-12 order-2 order-lg-1">
                                        <div class="caption dine-caption">
                                            <h4 class="animated-text animated-text-right"><a href="#">'. $subpkgRow->title .'</a></h4>
                                            <div class="row room-facilities animated-text animated-text-right">
                                                <div class="col-md-12">
                                                    <ul>
                                                        <li>Capacity</li>
                                                        <li>'. $subpkgRow->occupancy .'</li>
                                                    </ul>

                                                    <ul>
                                                        <li>Type</li>
                                                        <li>'. $subpkgRow->extra_bed .'</li>
                                                    </ul>

                                                    <ul>
                                                        <li>Timing</li>
                                                        <li>'. $subpkgRow->checkinout .'</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-lg-7 col-md-12 order-1 order-lg-2">
                                        <div class="room-slider-one">
                                            '. $img_bund .'
                                        </div>
                                    </div>
                                </div>
                                </div>
                            </div>';
                                            
                              

                }

            $c++;
                }
                $final_roomlist .='
                        <section class="about dine-home" style="padding-bottom:0px;">
                            <div class="container">
                                <div class="section-title">
                                    <h2>ULTIMATE <span style="color:#DB4914;font-weight: 400;"> DINING</span></h2>
                                    <p>'.$room_desc.'</p>
                                </div>
                    
                                <div class="row dine-home">
                                    <div class="col-md-12">
                                        '.$roomlist.'
                                    </div>
                                </div>
                            </div>
                        </section>
                            ';
        }
        if(($pkgRow->id !=1) && ($pkgRow->id !=6) && ($pkgRow->id !=7) ){
            $c=1;
            foreach ($pkgRec as $key => $subpkgRow) {
                $features ='';
                $imageList = '';
                $img_bund = '';
                $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;

                if ($subpkgRow->image != "a:0:{}") {
                    $imageList = unserialize($subpkgRow->image);
                    // pr($imageList);
                    foreach($imageList as $imgind){
                        $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;

                        $file_path = SITE_ROOT . 'images/subpackage/' . $imgind;
                        if (file_exists($file_path) and !empty($imgind)) {
                            $imglink = IMAGE_PATH . 'subpackage/' . $imgind;
                        }else {
                            $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;
                        }

                        $img_bund .= '
                            <div class="room-item">
                                <div class="room-image">
                                    <img src="'. $imglink .'" alt="image" />
                                </div>
                            </div>';
                    }

                }else {
                    $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;
                    $img_bund .= '
                            <div class="room-item">
                                <div class="room-image">
                                    <img src="'. $imglink .'" alt="image" />
                                </div>
                            </div>';
                }

                


            $left='';
                ($c % 2 == 0)?$left = ' left ':'';
                if($c % 2 != 0 ){
                    $roomlist .='
                    


                                <div class="rooms2 mb-90 left animate-box fadeInUp animated hall-below" data-animate-effect="fadeInUp">
                                    <div class="row">
                                        <div class="col-lg-5 col-md-12 order-2 order-lg-1">
                                            <div class="caption dine-caption">
                                                <h4 class="animated-text animated-text-right">'. $subpkgRow->title .'</h4>
                                                <p class="hall-txt animated-text animated-text-right">'. $subpkgRow->content .'</p>';
                                                
                                            
                                                
                        $saveRec = unserialize($subpkgRow->feature);
                        $count = 1;
                        if ($saveRec != null) {
                            $feature_list ='';
                            $feature_list_1 ='';

                            foreach($saveRec as $key => $val ){
                                $featureList = $saveRec[$key][1];

                                if (!empty($featureList)) {

                                    $icoRec = '';
                                    $i=0;


                                    foreach ($featureList as $fetRow) {
                                        $icoRec = Features::get_by_id($fetRow);

                                        if($i%2==0){
                                            $feature_list .= '<li>' . $icoRec->title . '</li>';  
                                        }else{
                                            $feature_list_1 .= '<li>' . $icoRec->title . '</li>';  
                                        }
                                        $i++;

        
                                    }

                                }
                            }
                            
                            $roomlist .= '
                                <h3 class="animated-text animated-text-right">Amenities</h3>
                                <div class="row room-facilities animated-text animated-text-right">
                                    <div class="col-md-6">
                                        <ul>
                                            '. $feature_list .'
                                        </ul>
                                    </div>
                                    
                                    <div class="col-md-6">
                                        <ul>
                                            '. $feature_list_1 .'
                                        </ul>
                                    </div>
                                </div>';
                        }
                    

                    $roomlist .='
                                </div>
                            </div>

                            <div class="col-lg-7 col-md-12 order-1 order-lg-2">
                                <div class="room-slider-one">
                                    '.$img_bund.'
                                </div>
                            </div>
                        </div>
                    </div>
                    ';
                    $roomlist .= $subpkgRow->below_content;
                }else{
                    $roomlist .='
                            <div class="rooms2 mb-90 left animate-box fadeInUp animated hall-below" data-animate-effect="fadeInUp">
                                <div class="row">

                                    <div class="col-lg-7 col-md-12">
                                        <div class="room-slider-one">
                                            '.$img_bund.'
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-md-12">
                                        <div class="caption dine-caption">
                                            <h4 class="animated-text animated-text-right">'. $subpkgRow->title .'</h4><p class="hall-text7 animated-text animated-text-right">Hall Size: '. $subpkgRow->room_size .'</p>
                                            <p class="hall-txt animated-text animated-text-right">'. $subpkgRow->content .'</p>';
                                            
                                        
                                            
                    $saveRec = unserialize($subpkgRow->feature);
                    $count = 1;
                    if ($saveRec != null) {
                        // pr($saveRec);

                        $feature_list ='';
                        $feature_list_1 ='';
                        foreach($saveRec as $key => $val ){
                            $featureList = $saveRec[$key][1];

                            if (!empty($featureList)) {
                                $icoRec = '';
                                $i=0;


                                foreach ($featureList as $fetRow) {
                                    $icoRec = Features::get_by_id($fetRow);
                                    
                                    if($i%2==0){
                                        $feature_list .= '<li>' . $icoRec->title . '</li>';  
                                    }else{
                                        $feature_list_1 .= '<li>' . $icoRec->title . '</li>';  
                                    }
                                    $i++;


                                }
                            }
                        }
                        $roomlist .= '
                            <h3 class="animated-text animated-text-right">Amenities</h3>
                            <div class="row room-facilities animated-text animated-text-right">
                                <div class="col-md-6">
                                    <ul>
                                        '. $feature_list .'
                                    </ul>
                                </div>
                                
                                <div class="col-md-6">
                                    <ul>
                                        '. $feature_list_1 .'
                                    </ul>
                                </div>
                            </div>';
                    }
                

                    $roomlist .='
                                </div>
                            </div>
                            
                        </div>
                    </div>
                    ';
                    $roomlist .= $subpkgRow->below_content;

                }

            $c++;
                }
                $final_roomlist .='

                        <section class="about hall-mobile" style="padding-bottom:0px;">
                            <div class="container">
                                <div class="section-title">
                                    <h2>CONFERENCES <span style="color:#B59410;font-weight: 400;"> AND EVENTS</span></h2>
                                    <p>
                                        '.$room_desc.'
                                    </p>
                                </div>
                                <div class="row dine-home">
                                    <div class="col-md-12">
                                        '.$roomlist.'
                                    </div>
                                </div>
                            </div>
                        </section>
                            ';
        }
    }
}

$jVars['module:list-package-room'] = $final_roomlist;
$jVars['module:list-package-room-bred'] = $roombread;
// $jVars['module:list-package-room-cunt'] = $room_desc;


/**
 *      Package Record
 */
$resubpkgDetail = $resubpkgbann = $bcont = '';

if (defined('SUBPACKAGE_PAGE') and isset($_REQUEST['slug'])) {

    $id = !empty($_REQUEST['id']) ? addslashes($_REQUEST['id']) : '';
    $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
    $subpkgRec = Subpackage::find_by_slug($slug);
    $pkgRec = Package::find_by_id($subpkgRec->type);
    //echo "<pre>";print_r($slug);die();
    $gallRec = SubPackageImage::getImagelist_by($subpkgRec->id);
    $otherPacs = Subpackage::get_relatedpkg($subpkgRec->type, $subpkgRec->id, 12);


    $pgkRow = Package::find_by_id(3);
    if (!empty($subpkgRec)) {
        //$resubpkgbann.='';
        foreach ($gallRec as $row) {
            $file_path = SITE_ROOT . 'images/package/galleryimages/' . $row->image;
            if (file_exists($file_path) and !empty($row->image)):

                $resubpkgbann .= ' <div><img src="' . IMAGE_PATH . 'package/galleryimages/' . $row->image . '" alt="' . $row->title . '"><div class="caption cpation_room">
     <h3>
     <ul>
     <li><a href="' . BASE_URL . 'home">Home</a></li>
     <li><a href="' . BASE_URL . $pkgRec->slug . '">' . $pkgRec->title . '</a></li>
     <li>' . $subpkgRec->title . '</li>
     </ul>
     </h3>
     </div></div>';
            endif;

        }


        $pkgType = Package::field_by_id($subpkgRec->type, 'type');
        /* if(!empty($pkgType)) {
                         */
        $subpkgImg = $subpkgRec->image;

        if ($pkgType == 1) {
            $resubpkgDetail .= '<h1 class="main_title_in">' . $subpkgRec->short_title . '</h1>
          <div class="container add_bottom_60">
          
          <div class="row">
          <div class="col-md-8" id="room_detail_desc">';

            $resubpkgDetail .= ' <div id="single_room_feat">
          <ul>';
            $saveRec = unserialize($subpkgRec->feature);
            $count = 1;
            // if ($saveRec != null) {
            //     $featureList = $saveRec[47][1];
            //     if ($featureList) {


            //         foreach ($featureList as $fetRow) {

            //             $icoRec = Features::get_by_id($fetRow);

            //             if (!empty($icoRec->icon)) {
            //                 $resubpkgDetail .= ' <li><i class="' . $icoRec->icon . '"></i>' . $icoRec->title . '</li>';


            //             } else {
            //                 $resubpkgDetail .= ' <li><img src="' . IMAGE_PATH . 'features/' . $icoRec->image . '" style=" width: 25px; height: 25px;margin-right:7px;" alt="' . $icoRec->title . '">' . $icoRec->title . '</li>';
            //             }

            //         }

            //     }
            // }


            $resubpkgDetail .= '
       
       </ul>
       </div>  <div class="row">
       <div class="col-md-3">
       <h3>Description</h3>
       </div>
       <div class="col-md-9">
       
       ' . $subpkgRec->content . '
       
       </div><!-- End col-md-9  -->
       </div><!-- End row  -->

       <div class="row">
       <div class="col-md-3">
       <h3>Occupancy | Tariff</h3>
       </div>
       <div class="col-md-9">
       <table class="table table-striped">
       <tbody>
       <tr>
       <td>Single Occupancy</td>
       <td>' . $subpkgRec->currency . ' ' . $subpkgRec->onep_price . '</td>
       </tr>
       <tr>
       <td>Double Occupancy</td>
       <td>' . $subpkgRec->currency . ' ' . $subpkgRec->twop_price . '</td>
       </tr>
       <tr>
       <td>Extra Bed Charge</td>
       <td> ' . $subpkgRec->currency . ' ' . $subpkgRec->threep_price . '</td>
       </tr>
       </tbody>
       </table>
       </div>
       </div> </div>
       <div class="col-md-4" id="sidebar">
       <div class="theiaStickySidebar">
       <div class="box_style_1">
       <div id="message-booking"></div>
      <form action="" target="_blank" rel = "noopener noreferror" autocomplete="off" id="hotel_booking" data-url="' . BASE_URL . 'result.php">
       
         <input type="hidden" name="hotel_code" value="2AXhJ6">
       <div class="row">
       <div class="col-md-12 col-sm-12">
       <div class="form-group">
       <label>Arrival date</label>
       <input class="startDate1 form-control datepick" type="text" data-field="date" data-startend="start" data-startendelem=".endDate1" readonly placeholder="Arrival" id="checkin" name="hotel_check_in">
       <span class="input-icon"><i class="icon-calendar-7"></i></span>
       </div>
       </div>
       <div class="col-md-12 col-sm-12">
       <div class="form-group">
       <label>Departure date</label>
       <input class="endDate1 form-control datepick" type="text" data-field="date" data-startend="end" data-startendelem=".startDate1" readonly placeholder="Departure" id="checkout" name="hotel_check_out">
       <span class="input-icon"><i class="icon-calendar-7"></i></span>
       </div>
       </div>
       </div><!-- End row -->

       <div class="row">
       <div class="col-md-12 col-sm-12">
       <div class="form-group">
       <input type="submit" value="Book now" class="btn_full" id="submit-booking">
       </div>
       </div>
       </div>
       </form>
       ' . $jVars['module:room-location'] . '
       </div><!-- End box_style -->
       </div><!-- End theiaStickySidebar -->
       </div><!-- End col -->
       
       </div><!-- End row -->
       
       </div><!-- End container -->';
        }


    }
}
$jVars['module:form-controll'] = $bcont;
$jVars['module:sub-package-banner'] = $resubpkgbann;
// $jVars['module:sub-package-detail'] = $resubpkgDetail;








/*
* Sub package 
*/
$resubpkgDetail = '';
$subimg = '';
$imageList = '';
$features_list='';
$resubpkgbread = '';
$features_list_2 = '';
if (defined('SUBPACKAGE_PAGE') and isset($_REQUEST['slug'])) {
    $slug = !empty($_REQUEST['slug']) ? addslashes($_REQUEST['slug']) : '';
    $subpkgRec = Subpackage::find_by_slug($slug);
     $gallRec = SubPackageImage::getImagelist_by($subpkgRec->id);
     $booking_code = Config::getField('hotel_code', true);


     $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;
     if (!empty($subpkgRec->image2)) {
         $pkgRowList = $subpkgRec->image2;
         $file_path = SITE_ROOT . 'images/subpackage/image/' . $pkgRowList;
         if (file_exists($file_path) and !empty($pkgRowList)) {
             $imglink = IMAGE_PATH . 'subpackage/image/' . $pkgRowList;
         }else {
             $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;
         }
     }else {
         $imglink = IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload;
     }
    //  pr($subpkgRec);

     $resubpkgbread .= '
            <section class="breadcrumb-outer superior-outer" style="background: url(' . $imglink . ') no-repeat !important;    background-size: cover !important;
            background-position: center !important;">
                <div class="container">
                    <div class="breadcrumb-content">
                        <h2>'. $subpkgRec->title.'</h2>
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item">'. $subpkgRec->short_title.'</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </section>';
    //  pr($imglink);
    if (!empty($subpkgRec)) {
        /*******        FOR ROOM DETAIL             ******************** */
        if ($subpkgRec->type == 1) {
            $relPacs = Subpackage::get_relatedpkg(1, $subpkgRec->id, 12);
            
            $pkgRec = Package::find_by_id($subpkgRec->type);

            $subpkg_carousel = '';
            if(!empty($gallRec)){

                $subpkg_carousel .= '                
                            <div class="features">
                                <h5>Features</h5>
                                <div class="row">';

                foreach ($gallRec as $row) {
                    $file_path = SITE_ROOT.'images/package/galleryimages/'.$row->image;
                    if(file_exists($file_path) and !empty($row->image)):
    
                                   // $active=($count==0)?'active':'';
                        $subpkg_carousel .= '
                        <div class="col-md-6">
                            <img src="'.IMAGE_PATH.'package/galleryimages/'.$row->image.'">
                            <p class="text2"></p>
                        </div>';
                    endif;            
                }
                $subpkg_carousel .= ' </div>
                </div>';
            }
            

            if (!empty($subpkgRec->feature)) {
                $ftRec = unserialize($subpkgRec->feature);
                if (!empty($ftRec)) {

                    foreach ($ftRec as $k => $v) {
                        $features_list='';
                        $features_list_2 ='';
                        $counter = 1;
                        $features_title='';
                        empty($v[0][0])?$features_title='Amenities':$features_title=$v[0][0];
                        // $resubpkgDetail .= '<h3 class="room_d_title">' . $v[0][0] . '</h3>';
                        if (!empty($v[1])) {
                            $resubpkgDetail .= '';
                            foreach ($v[1] as $kk => $vv) {
                                $sfetname = Features::find_by_id($vv);

                                if($counter%2 == 0){
                                    $features_list .= '
                                        <div class="col-md-3">
                                            <img src="' . $sfetname->icon . '">
                                        </div>
                                        <div class="col-md-9">
                                            <p>' . $sfetname->title . '</p>
                                        </div>';
                                }else{
                                    $features_list_2 .= '
                                        <div class="col-md-3">
                                            <img src="' . $sfetname->icon . '">
                                        </div>
                                        <div class="col-md-9">
                                            <p>' . $sfetname->title . '</p>
                                        </div>';
                                }
                                
                            }
                            $resubpkgDetail .= '';
                        }

                    }
                }
                $resubpkgDetail .= '';
            }


            // pr($subpkgRec);
            $resubpkgDetail .= '

            <section class="details">
                <div class="container">
                    <div class="room-inner1">
                    <div class="row">
                        <div class="col-md-8">
                            <h5>Overview</h5>
                            '. $subpkgRec->content .'
                        </div>

                        <div class="col-md-4">
                            <h5>DETAILS</h5>
                                <div class="row">
                                    <div class="col-md-6">
                                        <p><b>Starting Price<br>(BB Plan)</b></p>
                                    </div>
                                    <div class="col-md-6">
                                        <p>'. $subpkgRec->view .'  Single<br>'. $subpkgRec->size .'  </p>
                                    </div>
                                    <div class="col-md-6">
                                        <p><b>Room Size</b></p>
                                    </div>
                                    <div class="col-md-6">
                                        <p>'. $subpkgRec->room_size .'</p>
                                    </div>
                                    <div class="col-md-6">
                                        <p><b>Bed Type</b></p>
                                    </div>
                                    <div class="col-md-6">
                                        <p>'. $subpkgRec->extra_bed .'</p>
                                    </div>
                                    <div class="col-md-6">
                                        <p><b>Occupancy</b></p>
                                    </div>
                                    <div class="col-md-6">
                                        <p>'. $subpkgRec->occupancy .'</p>
                                    </div>
                                    <!--<div class="col-md-6">-->
                                    <!--    <p><b>Check-in</b></p>-->
                                    <!--</div>-->
                                    <!--<div class="col-md-6">-->
                                    <!--    <p>02:00 PM</p>-->
                                    <!--</div>-->
                                    <div class="col-md-6">
                                        <p><b>Check-out</b></p>
                                    </div>
                                    <div class="col-md-6">
                                        <p>'. $subpkgRec->checkinout .'</p>
                                    </div>
                                </div>
                            <div class="title-price">
                                <h3><img src="'. BASE_URL.'template/web/images/icons/phone-black.png"><a href="tel:+977 '. $siteRegulars->contact_info .'">'. $siteRegulars->contact_info .'</a></h3>
                            </div>
                        </div>
                    </div>

                    '. $subpkg_carousel .'
                        </div>
                    ';

                    if (!empty($subpkgRec->feature)) {
                        $ftRec = unserialize($subpkgRec->feature);
                        if (!empty($ftRec)) {
        
                            foreach ($ftRec as $k => $v) {
                                $features_list='';
                                $features_list_2 ='';
                                $counter = 1;
                                $features_title='';
                                empty($v[0][0])?$features_title='Amenities':$features_title=$v[0][0];
                                // $resubpkgDetail .= '<h3 class="room_d_title">' . $v[0][0] . '</h3>';
                                if (!empty($v[1])) {
                                    $resubpkgDetail .= '';
                                    foreach ($v[1] as $kk => $vv) {
                                        $sfetname = Features::find_by_id($vv);
                                        if($counter%2 == 0){
                                            $features_list .= '
                                                <div class="col-md-3">
                                                    <img src="' .IMAGE_PATH .'features/'. $sfetname->image . '">
                                                </div>
                                                <div class="col-md-9">
                                                    <p>' . $sfetname->title . '</p>
                                                </div>';
                                        }else{
                                            $features_list_2 .= '
                                                <div class="col-md-3">
                                                    <img src="'.IMAGE_PATH .'features/' . $sfetname->image . '">
                                                </div>
                                                <div class="col-md-9">
                                                    <p>' . $sfetname->title . '</p>
                                                </div>';
                                        }
                                        $counter++;
                                    }
                                    $resubpkgDetail .= '';
                                }
        
                            }
                        }
                        $resubpkgDetail .= '
                            
                                <div class="benefits room-inner1">
                                    <h5>FACILITIES</h5>
                                    <h3>To provide the ultimate comfort we provide an exceptional array of facilities for our guests</h3>
                                    <div class="row">
                                        <div class="col-md-2"></div>
                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-md-6 bg34">
                                                    <div class="row">
                                                        '. $features_list .'
                                                        
                                                        
                                                    </div>
                                                </div>

                                                <div class="col-md-6 bg34">
                                                    <div class="row">
                                                    '. $features_list_2 .'
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="benifits-img">
                                                <img src="'.BASE_URL.'template/web/images/room-list/pic1.jpg" class="img1a">
                                                <img src="'.BASE_URL.'template/web/images/room-list/pic2.jpg" class="img2a">
                                            </div>
                                        </div>
                                    </div>
                                </div>';                    
                            }
                    


                        $resubpkgDetail .= '
                                </div>
                            </div>';

                        $resubpkgDetail .='
                        <div class="book2">
                            <div class="parallax">
                                <div class="parallax-inner">
                                    <div class="parallax-text">
                                        <div class="container">
                                            <h2>OUR ROOMS</h2>
                                            <h3>Generous space, comfort and luxury framed by atmospheric jungle and cityscape views</h3>
                                            <div class="button results_button">
                                                <a href="'. BASE_URL.'rooms">VIEW ALL ROOMS</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>';
                        
                        // if (!empty($relPacs)) {

                        // $resubpkgDetail .= '';
                        // $imglink = '';

                        // $resubpkgDetail .=  '';     
                        // $other_room_carousel = '';
                        // foreach ($relPacs as $relpac) {

                        //     $img = unserialize($relpac->image);
                        //     //added from above
                        //     if (!empty($img[0])) {
                        //         $file_path = SITE_ROOT . 'images/subpackage/' . $img[0];

                        //         if (file_exists($file_path)) {
                        //             $imglink = IMAGE_PATH . 'subpackage/' . $img[0];
                        //         } else {
                        //             $imglink = BASE_URL . 'template/web/img/rooms/1.jpg';
                        //         }
                        //     } else {
                        //         $imglink = BASE_URL . 'template/web/img/rooms/1.jpg';
                        //     }
                            // pr($imglink);


                            if (file_exists($file_path) and !empty($relpac->image)) {
                                $imageList = '';

                                $other_room_carousel .= '
                                    <div class="item">
                                        <div class="position-re o-hidden"> <img src="' . $imglink . '" alt=""> </div> <span class="category"><a href="#">Book</a></span>
                                        <div class="con">
                                            <h6><a href="' . BASE_URL . $relpac->slug . '">'. $relpac->onep_price . $relpac->currency .' / Night</a></h6>
                                            <h5><a href="' . BASE_URL . $relpac->slug . '">' . $relpac->title . '</a> </h5>
                                            <div class="line"></div>
                                            <div class="row facilities">
                                                <div class="col col-md-7">
                                                    <ul>
                                                        <li><i class="flaticon-bed"></i></li>
                                                        <li><i class="flaticon-bath"></i></li>
                                                        <li><i class="flaticon-breakfast"></i></li>
                                                        <li><i class="flaticon-towel"></i></li>
                                                    </ul>
                                                </div>
                                                <div class="col col-md-5 text-end">
                                                    <div class="permalink"><a href="' . BASE_URL . $relpac->slug . '">Details <i class="ti-arrow-right"></i></a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    ';
                            }

                }
                
        



        /********For service inner page ***************/
        if ($subpkgRec->type == 2) {
            $relPacs = Subpackage::get_relatedpkg(1, $subpkgRec->id, 12);
            
            $pkgRec = Package::find_by_id($subpkgRec->type);

            $subpkg_carousel = '';
            foreach ($gallRec as $row) {
                $file_path = SITE_ROOT.'images/package/galleryimages/'.$row->image;
                if(file_exists($file_path) and !empty($row->image)):

                               // $active=($count==0)?'active':'';
                    $subpkg_carousel .= '<div class="text-center item bg-img" data-overlay-dark="3" data-background="'.IMAGE_PATH.'package/galleryimages/'.$row->image.'"></div>';
                    

                endif;

            
            }

            // pr($subpkgRec);
            $resubpkgDetail .= '
            <header class="header slider rooms2">
                <div class="owl-carousel owl-theme">
                    <!-- The opacity on the image is made with "data-overlay-dark="number". You can change it using the numbers 0-9. -->
                    '. $subpkg_carousel .'
                </div>
                <!-- arrow down -->
                <div class="arrow bounce text-center">
                    <a href="#" data-scroll-nav="1" class=""> <i class="ti-arrow-down"></i> </a>
                </div>
            </header>





            <section class="rooms-page section-padding" data-scroll-index="1">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-left"> 
                            <div class="section-subtitle">'. $subpkgRec->short_title .'</div>
                            <div class="section-title">'. $subpkgRec->title .'</div>
                        </div>
                        '. $subpkgRec->content .'
                    </div>
                </div>
            </section>' . $subpkgRec->below_content;
            if($subpkgRec->id == 40){
                $resubpkgDetail.='    
                    <section class="section-padding bg-cream">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8 offset-md-2">
                                    <div class="booking-box hall-bokng">
                                        <div class="head-box">
                                            <h4>Events Booking Form</h4>
                                        </div>
                                        <div class="booking-inner clearfix">
                                            <form action="#" class="form1 clearfix" id="frm_contact">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="input1_wrapper">
                                                            <label>Full Name</label>
                                                            <div class="input1_inner_name">
                                                                <input type="text" class="form-control" placeholder="Full Name" name="name">
                                                            </div>
                                                        </div>
                                                    </div>
                
                                                    <div class="col-md-6">
                                                        <div class="input1_wrapper">
                                                            <label>Email</label>
                                                            <div class="input1_inner_name">
                                                                <input type="text" class="form-control" placeholder="Email Address" name="email">
                                                            </div>
                                                        </div>
                                                    </div>
                
                                                    <div class="col-md-6">
                                                        <div class="input1_wrapper">
                                                            <label>Contact</label>
                                                            <div class="input1_inner_name">
                                                                <input type="text" class="form-control" placeholder="Contact No." name="phone">
                                                            </div>
                                                        </div>
                                                    </div>
                        
                                                    <div class="col-md-12">
                                                        <button type="submit" class="btn-form1-submit mt-15">Submit</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>';
            }
        }
        /**FOR DEFAULT SUBPACKAGES */
        

        if (($subpkgRec->type != 2) && ($subpkgRec->type != 1)) {
            $relPacs = Subpackage::get_relatedpkg(1, $subpkgRec->id, 12);
            
            $pkgRec = Package::find_by_id($subpkgRec->type);

            $subpkg_carousel = '';
            foreach ($gallRec as $row) {
                $file_path = SITE_ROOT.'images/package/galleryimages/'.$row->image;
                if(file_exists($file_path) and !empty($row->image)):

                               // $active=($count==0)?'active':'';
                    $subpkg_carousel .= '<div class="text-center item bg-img" data-overlay-dark="3" data-background="'.IMAGE_PATH.'package/galleryimages/'.$row->image.'"></div>';
                    

                endif;

            
            }

            // pr($subpkgRec);
            $resubpkgDetail .= '
            <header class="header slider rooms2">
                <div class="owl-carousel owl-theme">
                    <!-- The opacity on the image is made with "data-overlay-dark="number". You can change it using the numbers 0-9. -->
                    '. $subpkg_carousel .'
                </div>
                <!-- arrow down -->
                <div class="arrow bounce text-center">
                    <a href="#" data-scroll-nav="1" class=""> <i class="ti-arrow-down"></i> </a>
                </div>
            </header>





            <section class="rooms-page section-padding" data-scroll-index="1">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-left"> 
                            <div class="section-subtitle">'. $subpkgRec->short_title .'</div>
                            <div class="section-title">'. $subpkgRec->title .'</div>
                        </div>
                        '. $subpkgRec->content .'
                    </div>
                </div>
            </section>' . $subpkgRec->below_content;
            if($subpkgRec->id == 40){
                $resubpkgDetail.='    
                    <section class="section-padding bg-cream">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8 offset-md-2">
                                    <div class="booking-box hall-bokng">
                                        <div class="head-box">
                                            <h4>Events Booking Form</h4>
                                        </div>
                                        <div class="booking-inner clearfix">
                                            <form action="#" class="form1 clearfix" id="frm_contact">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="input1_wrapper">
                                                            <label>Full Name</label>
                                                            <div class="input1_inner_name">
                                                                <input type="text" class="form-control" placeholder="Full Name" name="name">
                                                            </div>
                                                        </div>
                                                    </div>
                
                                                    <div class="col-md-6">
                                                        <div class="input1_wrapper">
                                                            <label>Email</label>
                                                            <div class="input1_inner_name">
                                                                <input type="text" class="form-control" placeholder="Email Address" name="email">
                                                            </div>
                                                        </div>
                                                    </div>
                
                                                    <div class="col-md-6">
                                                        <div class="input1_wrapper">
                                                            <label>Contact</label>
                                                            <div class="input1_inner_name">
                                                                <input type="text" class="form-control" placeholder="Contact No." name="phone">
                                                            </div>
                                                        </div>
                                                    </div>
                        
                                                    <div class="col-md-12">
                                                        <button type="submit" class="btn-form1-submit mt-15">Submit</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>';
            }
        }

    }

}

    


     

            $jVars['module:sub-package-bread'] = $resubpkgbread;

            $jVars['module:sub-package-detail'] = $resubpkgDetail;






/*-------------------- FOR HOMEPAGE INFO --------------*/

$result = $imageList = '';
if (defined('HOME_PAGE')) {
    $result = '';
    $subpkgRec = Subpackage::get_relatedpkg(2);
    if (!empty($subpkgRec)) {
        $c=1;

        foreach($subpkgRec as $subpkgRow){
            if ($subpkgRow->image != "a:0:{}") {
                $imageList = unserialize($subpkgRow->image);
            }

            if (!empty($imageList)) {
                $file_path = SITE_ROOT . 'images/subpackage/' . $imageList[0];
                if (file_exists($file_path)) {
                    $imglink = IMAGE_PATH . 'subpackage/' . $imageList[0];
                } else {
                    $imglink = IMAGE_PATH . 'template/web/img/slider/2.jpg';
                }
            } else {
                $imglink = IMAGE_PATH . 'template/web/img/slider/2.jpg';
            }

            if(!empty($imglink[0])){
                //  pr($subpkgRow);
                if($c%2 == 0){
                    $result .= '
                            <div class="row">
                                <div class="col-md-6 p-l0 animate-box" data-animate-effect="fadeInLeft">
                                    <div class="img left">
                                        <a href="'. BASE_URL . $subpkgRow->slug .'"><img src="' . $imglink . '" alt="'. $subpkgRow->title .'"></a>
                                    </div>
                                </div>
                                <div class="col-md-6 p-0 bg-cream valign animate-box" data-animate-effect="fadeInRight">
                                    <div class="content">
                                        <div class="cont text-left">
                                            <div class="info">
                                                <h6>'. $subpkgRow->short_title .'</h6>
                                            </div>
                                            <h4>'. $subpkgRow->title .'</h4>
                                            <p>'. $subpkgRow->detail .'</p>
                                            <div class="butn-dark"><a href="'. BASE_URL . $subpkgRow->slug .'"><span>Learn More</span></a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>';
                }else{
                    $result .= '
                        <div class="row">
                        <div class="col-md-6 bg-cream p-0 order2 valign animate-box" data-animate-effect="fadeInLeft" style="padding-left: 0px;">
                            <div class="content">
                                    <div class="cont text-left">
                                        <div class="info">
                                            <h6>'. $subpkgRow->short_title .'</h6>
                                        </div>
                                        <h4>'. $subpkgRow->title .'</h4>
                                        <p>'. $subpkgRow->detail .'</p>
                                        <div class="butn-dark"><a href="'. BASE_URL . $subpkgRow->slug .'"><span>Learn More</span></a></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 p-r0 order1 animate-box" data-animate-effect="fadeInRight">
                                <div class="img left">
                                    <a href="'. BASE_URL . $subpkgRow->slug .'"><img src="' . $imglink . '" alt="'. $subpkgRow->title .'"></a>
                                </div>
                            </div>
                        </div>';
                }
                $c++;
            }

            }
        }
    }


$jVars['module:homepage-info'] = $result;

?>