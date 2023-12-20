<?php
$reslgall = '';
$siteRegulars 				= Config::find_by_id(1);

$gallRec = Gallery::getParentgallery(2);
if (!empty($gallRec)) {
foreach ($gallRec as $gallRow) {
$childRec = GalleryImage::getGalleryImages($gallRow->id);
if (!empty($childRec)) {
$reslgall .= '';
foreach ($childRec as $childRow) {
$file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $childRow->image;
if (file_exists($file_path) and !empty($childRow->image)) {
    $reslgall .= '
                <div class="gallery-item">
                    <div class="gallery-image">
                        <a href="' . IMAGE_PATH . 'gallery/galleryimages/' . $childRow->image . '" data-lightbox="gallery" data-title="' . $childRow->title . '"><img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $childRow->image . '" alt="' . $childRow->title . '" /></a>
                    </div>
                </div>
                    ';
}
}
$reslgall .= '';
}
}
}

$jVars['module:galleryHome'] = $reslgall;



$dininggallery = '';
$galldining = GalleryImage::getImagelist_by(19, 3);
if (!empty($galldining)) {
    $dininggallery .= '<div class="row about">
                     <div class="demo-gallery">
    		     <div id="lightgallery" class="list-unstyled">';
    foreach ($galldining as $row) {
        $dininggallery .= '<div class="item col-sm-4 col-xs-12" data-responsive="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '" data-src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '" data-sub-html="<h4>' . $row->title . '</h4>">
                        <a href="">
                            <img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row->image . '"/>
                        </a>
                    </div>';
    }
    $dininggallery .= '</div>
    </div>
    </div>';
}
$jVars['module:dining-gallery'] = $dininggallery;


/**
 *      Main Gallery
 */
$thegal = $gallerylistbread = '';
$gallRectit = Gallery::getParentgallery();
// pr($gallRectit);
shuffle($gallRectit);
if ($gallRectit) {
    // pr(IMAGE_PATH . 'preference/banner/' . $siteRegulars->default_banner_upload);
    $gallerylistbread .= '
    
    <section class="breadcrumb-outer gallery-outer">
        <div class="container">
            <div class="breadcrumb-content">
                <h2>GALLERY</h2>
                <nav aria-label="breadcrumb">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item">Capturing moments, crafting memories</li>
                    </ul>
                </nav>
            </div>
        </div>
    </section>';

    $thegal .= '
    <section class="content gallery" data-ref="container-1">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="mt_filter">
                        <ul class="d-flex justify-content-center filters-button-group">
                            <li><button class="is-checked" data-class="all">All</button></li>
        ';
    foreach ($gallRectit as $row) {
        $thegal .= '<li><button data-class=".gall' . $row->id . '">' . $row->title . '</button></li>';
    }
    $thegal .= '  
                        </ul>
                    </div>
                </div>
            </div>';

    $thegal .= '            
            <div class="mar-top-50 mar-bottom-50">
                <div class="row grid main">';
    foreach ($gallRectit as $row) {
        $gallRec = GalleryImage::getGalleryImages($row->id);
        // pr($gallRec);
        foreach ($gallRec as $row1) {
            $file_path = SITE_ROOT . 'images/gallery/galleryimages/' . $row1->image;
            if (file_exists($file_path) and !empty($row1->image)):
                $thegal .= ' 
                    <div class="element-item images gall' . $row->id . ' col-lg-4 col-md-6" data-class=".gall' . $row->id . '">
                        <div class="gallery-item">
                            <div class="gallery-image">
                                <a href="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '" data-lightbox="gallery" data-title="' . $row1->title . '"><img src="' . IMAGE_PATH . 'gallery/galleryimages/' . $row1->image . '" alt="image" class="" /></a>
                            </div>
                        </div>
                    </div>
                    
                ';
            endif;
        }
    }
    $thegal .= '
                    </div>
                </div>
            </div>
        </section> ';

}
$jVars['module:gallery-list'] = $thegal;
$jVars['module:gallery-list-bred'] = $gallerylistbread;
