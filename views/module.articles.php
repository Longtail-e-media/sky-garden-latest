<?php
$resinndetail = $imageList = $innerbred = $t = '';
$homearticle = Article::find_by_id(22);
$configRec = Config::find_by_id(1);
if (!empty($homearticle)) {
    if ($homearticle->image != "a:0:{}") {
        $imageList = unserialize($homearticle->image);
        $imgno = array_rand($imageList);
        $file_path = SITE_ROOT . 'images/articles/' . $imageList[$imgno];
        if (file_exists($file_path)) {
            $imglink = IMAGE_PATH . 'articles/' . $imageList[$imgno];
        } else {
            $imglink = BASE_URL . 'template/web/img/mosaic_2.jpg';
        }
    } else {
        $imglink = BASE_URL . 'template/cms/img/mosaic_2.jpg';
    }
    $t .= ' <div class="col-xs-12">
                     <a href="' . BASE_URL . 'page/' . $homearticle->slug . '">
                    <div class="mosaic_container">
                        <img src="' . $imglink . '" alt="' . $homearticle->title . '" class="img-responsive add_bottom_30"><span class="caption_2"> ' . $homearticle->title . '</span>
                    </div>
                    </a>
                </div>';


}

$jVars['module:aboutarticle'] = $t;

/**
 *      Home page
 */
$resinnh = '';

if (defined('HOME_PAGE')) {
    $recInn = Article::homepageArticle(1);
    if (!empty($recInn)) {
        foreach ($recInn as $innRow) {
        $rescontent = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($innRow->content));
        $content = $rescontent[0];
        $resinnh .= '
        <section class="about-us">
            <div class="container">
                '.$content.'
            </div>
            <img src="'. BASE_URL.'template/web/images/about/leaf1.png" class="leaf_2" alt="Leaf">
        </section>';
            
        }
        
    }

}

$jVars['module:home-article'] = $resinnh;

/**
 *      Inner page detail
 */

$aboutdetail = $imageList = $aboutbred = '';

if (defined('INNER_PAGE') and isset($_REQUEST['slug'])) {
    $slug = addslashes($_REQUEST['slug']);
    $recRow = Article::find_by_slug($slug);

    if (!empty($recRow)) {
        $imglink = IMAGE_PATH . 'preference/banner/' . $configRec->default_banner_upload;
        if ($recRow->image != "a:0:{}") {
            $imageList = unserialize($recRow->image);
            $imgno = array_rand($imageList);
            $file_path = SITE_ROOT . 'images/articles/' . $imageList[$imgno];
            if (file_exists($file_path)) {
                $imglink = IMAGE_PATH . 'articles/' .  $imageList[$imgno];
            }else{
                $imglink = IMAGE_PATH . 'preference/banner/' . $configRec->default_banner_upload;

            }
        }

        $innerbred .= '
            <section class="breadcrumb-outer" style="background: url(' . $imglink . ') no-repeat !important;">
                <div class="container">
                    <div class="breadcrumb-content">
                        <h1>' . $recRow->title . '</h1>
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item">' . $recRow->sub_title . '</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </section>
            ';

        $rescontent = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($recRow->content));
        $content = !empty($rescontent[1]) ? $rescontent[1] : $rescontent[0];

        $aboutdetail .= '    
        <section class="about">
            <div class="container">
                '.$content.'
            </div>
        </section>';
        if($recRow->id == 10){

            $aboutdetail .= '
                    <section class="about-team">
                        <div class="container">
                            <div class="section-title">
                                <h2>OUR<span style="color:#85B3A9;font-weight: 400;"> FACILITIES</span></h2>
                                <p>We offer a range of facilities on site, including multi-floor restaurants, rooftop<br/> restaurant, bar and jacuzzi, as well as music events and cultural nights</p>
                            </div>
                
                            <div class="amenities-content">
                                <div class="row">
                                    '.$jVars['module:facility-list-home'].'
                                </div>
                            </div>
                        </div>
                    </section>';
        }
    } else {
        redirect_to(BASE_URL);
    }
}

$jVars['module:inner-about-detail'] = $aboutdetail;
$jVars['module:inner-about-bread'] = $innerbred;


$restyp = '';

$typRow = Article::get_by_type();
if (!empty($typRow)) {
    $content = explode('<hr id="system_readmore" style="border-style: dashed; border-color: orange;" />', trim($typRow->content));
    $readmore = '';
    if (!empty($typRow->linksrc)) {
        $linkTarget = ($typRow->linktype == 1) ? ' target="_blank" rel = "noopener noreferror" ' : '';
        $linksrc = ($typRow->linktype == 1) ? $typRow->linksrc : BASE_URL . $typRow->linksrc;
        $readmore = '<a class="text-link link-direct" href="' . $linksrc . '">see more</a>';
    } else {
        $readmore = (count($content) > 1) ? '<a href="' . BASE_URL . $typRow->slug . '">Read more...</a>' : '';
    }
    $restyp .= '<h3 class="h3 header-sidebar">' . $typRow->title . '</h3>
	<div class="home-content">
		' . $content[0] . ' ' . $readmore . '
	</div>';

}

$jVars['module:article_by_type'] = $restyp;



/*
    Why Choose Us
*/
$resinnh1 = '';

if (defined('HOME_PAGE')) {

    $resinnh1 .= '';

// pr($resinnh1);
    $recInn1 = Article::find_by_id(2);
    if (!empty($recInn1)) {
            $resinnh1 .= '
            <div class="title-area wow fadeIn">

                <h2>'. $recInn1->title .'</h2>
                <div class="small-border"><span></span></div>
                <p class="sub-heading mt20">'. $recInn1->sub_title .'</p>
            </div>

            <p align=" justify" class="mt30">
                '. strip_tags($recInn1->content) .'
            </p>';

        
    }

}

$jVars['module:home_article'] = $resinnh1;


/*
    HomePage Facilities
*/
$resinnh1 = '';

if (defined('HOME_PAGE')) {

    $resinnh1 .= '';


    $recInn1 = Article::find_by_id(3);

    if (!empty($recInn1)) {

            $resinnh1 .= $recInn1->content;

        
    }

}

$jVars['module:home_facilities'] = $resinnh1;

?>