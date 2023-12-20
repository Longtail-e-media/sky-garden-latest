<?php
$siteRegulars = Config::find_by_id(1);
$booking_code = Config::getField('hotel_code', true);

$telno = explode(",", $siteRegulars->contact_info);
// $jVars['module:res-menu'] 
// pr($siteRegulars);
$jVars['module:logo-light']=IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload;
$jVars['module:logo-dark']=IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload_dark;


            
$header = ' 
            <div class="topheader init">
                <nav class="navbar navbar-expand-lg">
                    <div class="container-xxl">
                        <a class="navbar-brand" href="'. BASE_URL .'"><img alt="logo1" src="'. IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload .'" class="logo-black" /></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent1" aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
        
                        <div class="collapse navbar-collapse" id="navbarSupportedContent1">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                '. $jVars['module:res-menu'] .'
                                
                                <li class="nav-item">
                                    <a class="nav-link" href="result.php?hotel_code='.$booking_code.'" target="_blank" rel = "noopener noreferror">BOOK NOW</a>
                                </li>
        
                                <!-- <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Dropdown
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <li><a class="dropdown-item" href="#">Action</a></li>
                                        <li><a class="dropdown-item" href="#">Another action</a></li>
                                        <li><hr class="dropdown-divider"></li>
                                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                                    </ul>
                                </li> -->
                            </ul>
                            
                            <div class="d-flex d-md-none d-lg-none d-xl-flex">
                                <ul class="header-social">
                                    <li>
                                        <a href="mailto:'.$siteRegulars->email_address.'" class="white"><img src="'.BASE_URL.'template/web/images/icons/mail.png" class="logo-black" alt="Logo"></a>
                                    </li>
                                    <li>
                                        <a href="tel:'. $siteRegulars->contact_info .'" class="white"><img src="'.BASE_URL.'template/web/images/icons/phone.png" class="logo-black" alt="Logo"></a>
                                    </li>
                                    <li>
                                        <a href="https://api.whatsapp.com/send?phone=9779808086949" target="_blank" rel = "noopener noreferror" class="white"><img src="'.BASE_URL.'template/web/images/icons/whatsapp.png" class="logo-black" alt="Logo"></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                    <div class="call-mob">
                        <a href="tel:+977 '. $siteRegulars->contact_info .'" class="white"><img src="'.BASE_URL.'template/web/images/icons/phone.png" class="logo-black" alt="Logo"></a>
                    </div>
                </nav>
            </div>
            <div class="topheader fixed">
                <nav class="navbar navbar-expand-lg">
                    <div class="container-xxl">
                        <a class="navbar-brand" href="'. BASE_URL .'"><img alt="logo1" src="'. IMAGE_PATH . 'preference/' . $siteRegulars->logo_upload_dark .'" class="logo-colour" /></a>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                        </button>
        
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                '. $jVars['module:res-menu'] .'

                                
                                <li class="nav-item">
                                    <a class="nav-link" href="result.php?hotel_code='.$booking_code.'" target="_blank" rel = "noopener noreferror">BOOK NOW</a>
                                </li>
        
                                <!-- <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                        Dropdown
                                    </a>
                                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <li><a class="dropdown-item" href="#">Action</a></li>
                                        <li><a class="dropdown-item" href="#">Another action</a></li>
                                        <li><hr class="dropdown-divider"></li>
                                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                                    </ul>
                                </li> -->
                            </ul>
                            
                            <div class="d-flex d-md-none d-lg-none d-xl-flex">
                                <ul class="header-social">
                                    <li>
                                        <a href="mailto:'.$siteRegulars->email_address.'" class="white"><img src="'.BASE_URL.'template/web/images/icons/mail-black.png" class="logo-colour" alt="Logo"></a>
                                    </li>
                                    <li>
                                        <a href="tel:'. $siteRegulars->contact_info .'" class="white"><img src="'.BASE_URL.'template/web/images/icons/phone-black.png" class="logo-colour" alt="Logo"></a>
                                    </li>
                                    <li>
                                        <a href="https://api.whatsapp.com/send?phone=9779808086949" target="_blank" rel = "noopener noreferror" class="white"><img src="'.BASE_URL.'template/web/images/icons/whatsapp-black.png" class="logo-colour" alt="Logo"></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    
                    <div class="call-mob">
                        <a href="tel:9823488155" class="white"><img src="'.BASE_URL.'template/web/images/icons/phone-black.png" class="logo-colour" alt="Logo"></a>
                    </div>
                </nav>
            </div>
            ';
$jVars['module:header'] = $header;