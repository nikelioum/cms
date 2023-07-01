<div class="custom-page-wrapper pt-5 pb-1">
    <div class="spacer py-4 my-5"></div>

    <div class="container container-xl-custom">
        <div class="row">
            <div class="col">
                <p class="custom-font-tertiary text-5 line-height-4 mb-4 appear-animation animated fadeInUpShorter appear-animation-visible"
                    data-appear-animation="fadeInUpShorter" data-appear-animation-delay="1500"
                    style="animation-delay: 1500ms;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed
                    imperdiet libero id nisi euismod, sed porta est consectetur.</p>
                <p class="text-3-5 mb-5 appear-animation animated fadeInUpShorter appear-animation-visible"
                    data-appear-animation="fadeInUpShorter" data-appear-animation-delay="1700"
                    style="animation-delay: 1700ms;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                    eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                    exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            </div>
        </div>
        <div class="row row-gutter-sm justify-content-center">

            @foreach ($services as $service)
                <div class="col-md-6 col-lg-4 mb-4 appear-animation animated fadeInUpShorter appear-animation-visible"
                    data-appear-animation="fadeInUpShorter" data-appear-animation-delay="1900"
                    style="animation-delay: 1900ms;">
                    <a href="demo-architecture-2-services-detail.html" class="text-decoration-none">
                        <div class="card custom-card-style-1 border-radius-0">
                            <div class="card-body text-center p-5 mb-4">
                                <div class="animated-icon animated fadeIn svg-fill-color-primary mt-3 mb-4 pb-3">
                                    <!--?xml version="1.0" encoding="utf-8"?-->
                                    <svg version="1.1" id="icon_91688226385766" xmlns="http://www.w3.org/2000/svg"
                                        xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                        viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;"
                                        xml:space="preserve" data-filename="house-plant.svg" width="75"
                                        height="75">
                                        <path
                                            d="M480,42.7H74.7V64H480c5.9,0,10.7,4.8,10.7,10.7v320c0,5.9-4.8,10.7-10.7,10.7v21.3c17.7,0,32-14.3,32-32v-320
		C512,57,497.7,42.7,480,42.7z">
                                        </path>
                                        <path
                                            d="M42.7,405.3c-11.8,0-21.3-9.6-21.3-21.3s9.6-21.3,21.3-21.3S64,372.2,64,384h21.3c0-23.6-19.1-42.7-42.7-42.7S0,360.4,0,384
		s19.1,42.7,42.7,42.7h330.7v-21.3L42.7,405.3L42.7,405.3z">
                                        </path>
                                        <path
                                            d="M42.7,0C19.1,0,0,19.1,0,42.7V384h21.3V42.7c0-11.8,9.6-21.3,21.3-21.3c11.8,0,21.3,9.6,21.3,21.3V384h21.3V42.7
		C85.3,19.1,66.2,0,42.7,0z">
                                        </path>
                                        <path
                                            d="M330.7,96H181.3c-17.7,0-32,14.3-32,32v149.3c0,17.7,14.3,32,32,32h149.3c17.7,0,32-14.3,32-32V128
		C362.7,110.3,348.3,96,330.7,96z M341.3,277.3c0,5.9-4.8,10.7-10.7,10.7H181.3c-5.9,0-10.7-4.8-10.7-10.7V128
		c0-5.9,4.8-10.7,10.7-10.7h149.3c5.9,0,10.7,4.8,10.7,10.7L341.3,277.3L341.3,277.3z">
                                        </path>
                                        <rect x="213.3" y="106.7" width="21.3" height="106.7"></rect>
                                        <rect x="213.3" y="245.3" width="21.3" height="53.3"></rect>
                                        <rect x="224" y="160" width="64" height="21.3"></rect>
                                        <rect x="320" y="160" width="32" height="21.3"></rect>
                                        <path
                                            d="M448,266.7h-42.7c-5.9,0-10.7,4.8-10.7,10.7v224c0,5.9,4.8,10.7,10.7,10.7H448c5.9,0,10.7-4.8,10.7-10.7v-224
		C458.7,271.4,453.9,266.7,448,266.7z M437.3,490.7H416V288h21.3V490.7z">
                                        </path>
                                        <path
                                            d="M434.2,248.5c-4.2-4.2-10.9-4.2-15.1,0l-21.3,21.3l15.1,15.1l13.8-13.8l13.8,13.8l15.1-15.1L434.2,248.5z">
                                        </path>
                                        <rect x="416" y="106.7" width="21.3" height="117.3"></rect>
                                        <rect x="405.3" y="96" width="42.7" height="21.3"></rect>
                                        <rect x="160" y="341.3" width="192" height="21.3"></rect>
                                        <rect x="341.3" y="330.7" width="21.3" height="42.7"></rect>
                                        <rect x="149.3" y="330.7" width="21.3" height="42.7"></rect>
                                    </svg>
                                </div>
                                <h2 class="text-color-dark font-weight-bold line-height-1 text-6-5 mb-3">{{$service->name}}</h2>
                                <p class="mb-0">{{$service->descrition}}</p>
                            </div>
                        </div>
                    </a>
                </div>
            @endforeach

        </div>
    </div>



</div>
