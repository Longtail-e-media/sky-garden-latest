<?php
/*
* Contact form
*/
$rescont = $innerbred = '';

if (defined('CONTACT_PAGE')) {
    $innerbred .= '   
            <section class="breadcrumb-outer contact-outer">
                <div class="container">
                    <div class="breadcrumb-content">
                        <h2>HOW CAN WE HELP YOU?</h2>
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item">Contact us</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </section>
                    ';

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
    // pr($siteRegulars);
    $rescont .= '
    <section class="contact pad-top-0 contact1 bg-white">
        <div class="container">
            <div class="contact-info">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="contact-info">
                            <h3 style="color: #2aa9dc;">SKY GARDEN RESORT</h3>
                            <h4>FOR ALL ENQUIRIES PLEASE CONTACT</h4>
                            <div class="info-item ">
                                <div class="info-content">
                                    <p><img src="'. BASE_URL .'template/web/images/icons/pin-black.png"><a href="'. $siteRegulars->contact_info2 .'" target="_blank" rel = "noopener noreferror">'. $siteRegulars->address .'</a></p>
                                </div>
                            </div>

                            <div class="info-item info-item-or">
                                <div class="info-content">
                                    <p><img src="'. BASE_URL .'template/web/images/icons/phone-black.png"><a href="tel:+977 '. $siteRegulars->contact_info .'">+977 '. $siteRegulars->contact_info .'</a></p>
                                </div>
                            </div>

                            <div class="info-item info-item-or">
                                <div class="info-content">
                                    <p><img src="'. BASE_URL .'template/web/images/icons/phone-black.png">'. $tellinked .'</p>
                                </div>
                            </div>

                            <div class="info-item">
                                <div class="info-content">
                                    <p style="letter-spacing: 1px;"><img src="'. BASE_URL .'template/web/images/icons/mail-black.png"><a href="mailto:'. $siteRegulars->email_address .'"> '. $siteRegulars->email_address .'</a></p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="contact-img">
                            <img src="'. BASE_URL .'template/web/images/contact-img.jpg">
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-8 offset-md-2">
                        <div id="contact-form" class="contact-form">
                            <h4>ENQUIRY FORM</h4>
                            
                            <div id="contactform-error-msg"></div>

                            <form id="frm_contact" method="post" action="'.BASE_URL.'enquery_mail.php">
                                <div class="form-group mb-3">
                                    <input type="text" name="name" class="form-control" id="fname" placeholder="Full Name" />
                                </div>
                                <div class="form-group mb-3">
                                    <input type="email" name="email" class="form-control" id="email" placeholder="Email" />
                                </div>
                                <div class="form-group mb-3">
                                    <input type="text" name="contact" class="form-control" id="phnumber" placeholder="Phone" />
                                </div>
                                <div class="textarea">
                                    <textarea name="message" placeholder="Enter a message"></textarea>
                                </div>
                                <div class="comment-btn text-right">
                                    <input type="submit" class="btn btn-orange" id="submit" value="Submit" />
                                    <div class="alert alert-success" id="result_msg" style="display:none;"></div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <div class="map">
        <iframe src="'. $siteRegulars->location_map.'" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </div>
    ';
}

$jVars['module:contact-us'] = $rescont;
$jVars['module:contact-bread'] = $innerbred;