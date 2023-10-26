<section class="hero_section" style="width: 100% !important">
    <div id="heroSectionSlider" class="owl-carousel owl-theme" style="width: 100% !important">

        @foreach($slids as $value)
            <!-- START:: SINGLE ITEM -->
            @if($div == $value->kind)
            @endif
            <div class="item" style="width: 100% !important;">
                <div class="">
                    <div class="row justify-content-between align-items-center" dir="ltr">

                        {{-- <div class="col-lg-6"> --}}
                        <div class="">
                            <div class="right_part">
                                <img src="{{asset('uploads/panners/'.$value->image)}}" alt="" 
                                     style="width: 100% !important; height: 350px">
                            </div>
                        </div>

                        {{--                    <div class="col-lg-6">--}}
                        {{--                        <div class="left_part">--}}
                        {{--                            <h1>--}}
                        {{--                            @if(session()->get('locale') == "en")--}}
                        {{--                                    --}}
                        {{--                                    {{$value->name_en}}--}}
                        {{--                                    @else--}}
                        {{--                                    {{$value->name_ar}}--}}
                        {{--                                    @endif--}}

                        {{--                            </h1>--}}
                        {{--                            <p>--}}
                        {{--                            @if(session()->get('locale') == "en")--}}


                        {{--                                    {!!$value->desc_en!!}--}}
                        {{--                                    @else--}}
                        {{--                                    {!!$value->desc_ar!!}--}}
                        {{--                                    @endif--}}
                        {{--                            </p>--}}
                        {{--                            <a href="{{ route('front_show_more', ['div'=>$div,'id'=>'panner','panner'=>$value->name_ar]) }}" class="btn-animation-1">--}}
                        {{--                                {{ __('messages.Shop_now') }}--}}
                        {{--                                <i class="fas fa-angle-double-left"></i>--}}
                        {{--                            </a>--}}
                        {{--                        </div>--}}
                        {{--                    </div>--}}


                    </div>
                </div>
            </div>
            <!-- END:: SINGLE ITEM -->
        @endforeach
        <!-- END:: SINGLE ITEM -->
    </div>
</section>