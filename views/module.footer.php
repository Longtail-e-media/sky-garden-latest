<?php
$siteRegulars = Config::find_by_id(1);

$telno = explode(",", $siteRegulars->mail_address);

$tellinked = '';
$count = 1;

foreach ($telno as $tel) {
    if($count>1){
        $tellinked .= ' / ';
        $tellinked .= '<a href="tel:+977 ' . $tel . '">' . substr($tel,-2) . '</a>';
    }else{
        $tellinked .= '<a href="tel:+977 ' . $tel . '">' . $tel . '</a>';

    }

    $count++;
}

                $footer='    
                        <footer>
                            <div class="footer-top">
                                <div class="container-xxl px-5">
                                    <div class="footer-content">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-6">
                                                <div class="footer-contact">
                                                    <img alt="logo1" src="'.IMAGE_PATH . 'preference/'. $siteRegulars->logo_upload . '" class="logo-black" alt="Sky Garden Resort">
                                                </div>
                                            </div>

                                            <div class="col-lg-4 col-md-6">
                                                <div class="footer-contact">
                                                    <h4>Contact info</h4>
                                                    <ul>
                                                        <li><img src="'.BASE_URL.'template/web/images/icons/pin.png" alt="Sky Garden Resort"><a href="'. $siteRegulars->contact_info2 .'" target="_blank"  rel = "noopener noreferror">'. $siteRegulars->fiscal_address .'</a></li>
                                                        <li><img src="'.BASE_URL.'template/web/images/icons/phone.png" alt="Sky Garden Resort"><a href="tel:+977 '. $siteRegulars->contact_info .'">+977 '. $siteRegulars->contact_info .'</a></li>
                                                        <li><img src="'.BASE_URL.'template/web/images/icons/phone.png" alt="Sky Garden Resort">'.$tellinked.'</li>
                                                        <li><img src="'.BASE_URL.'template/web/images/icons/mail.png" alt="Sky Garden Resort"><a href="mailto:'. $siteRegulars->email_address .'"> '. $siteRegulars->email_address .'</a></li>
                                                    </ul>
                                                </div>
                                            </div>

                                            <div class="col-lg-2 col-md-6">
                                                <div class="quick-links">
                                                    <h4>Quick Links</h4>
                                                    '.$jVars['module:footer-menu'].'
                                                </div>
                                            </div>

                                            <div class="col-lg-2 col-md-6 d-none">
                                                <div class="quick-links">
                                                    <h4>BOOK NOW</h4>
                                                    <ul>
                                                        <li><a href="https://www.booking.com/" target="_blank" rel = "noopener noreferror">Booking.com</a></li>
                                                        <li><a href="#">Agoda</a></li>
                                                        <li><a href="#">Expedia</a></li>
                                                        <!-- <li><a href="#">Testimonials</a></li>
                                                        <li><a href="#">Blog</a></li> -->
                                                    </ul>
                                                </div>
                                            </div>

                                            <div class="col-lg-3 col-md-6">
                                                <div class="quick-links">
                                                    <div class="footer-payment">
                                                        <h4>Follow Us</h4>
                                                        <ul>
                                                        
                                                        '.$jVars['module:socilaLinkbtm'].'
                                                           
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="footer-copyright">
                                <div class="container">
                                    <div class="copyright-content text-center">
                                        <p class="white">'.$jVars['site:copyright'].'</p>
                                    </div>
                                </div>
                            </div>
                        </footer>';

$jVars['module:footer'] = $footer;

$footer_booking = ob_start();
?>
    <div class="book-online"> Developed By: <a href="https://longtail.info/" target="_blank" rel = "noopener noreferror">Longtail e-media</a>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3>Book From anywhere</h3>
                </div>
                <div class="col-md-offset-1 col-md-2 col-xs-6">
                    <a href="#" target="_blank" rel = "noopener noreferror">
                        <img src="<?= BASE_URL ?>template/web/images/booking.png" alt="Expedia" class="img-responsive">
                    </a>
                </div>
                <div class="col-md-2 col-xs-6">
                    <a href="#" target="_blank" rel = "noopener noreferror">
                        <img src="<?= BASE_URL ?>template/web/images/expedia.png" alt="Expedia" class="img-responsive">
                    </a>
                </div>
                <div class="col-md-2 col-xs-6">
                    <a href="#" target="_blank" rel = "noopener noreferror">
                        <img src="<?= BASE_URL ?>template/web/images/trip.png" alt="tripadviser" class="img-responsive">
                    </a>
                </div>
                <div class="col-md-2 col-xs-6">
                    <a href="#" target="_blank" rel = "noopener noreferror">
                        <img src="<?= BASE_URL ?>template/web/images/agoda.png" alt="Agoda" class="img-responsive">
                    </a>
                </div>
                <div class="col-md-2 col-xs-6">
                    <a href="#" target="_blank" rel = "noopener noreferror">
                        <img src="<?= BASE_URL ?>template/web/images/tmake.png" alt="Make my trip" class="img-responsive">
                    </a>
                </div>
            </div>
        </div>
    </div>
<?php
$footer_booking = ob_get_clean();

$jVars['module:footer-booking'] = $footer_booking;
