(function($) {
    var bigAutocomplete = new function() {
        this.currentInputText = null; //鐩墠鑾峰緱鍏夋爣鐨勮緭鍏ユ锛堣В鍐充竴涓〉闈㈠涓緭鍏ユ缁戝畾鑷姩琛ュ叏鍔熻兘锛�
        this.functionalKeyArray = [9, 20, 13, 16, 17, 18, 91, 92, 93, 45, 36, 33, 34, 35, 37, 39, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 144, 19, 145, 40, 38, 27]; //閿洏涓婂姛鑳介敭閿€兼暟缁�
        this.holdText = null; //杈撳叆妗嗕腑鍘熷杈撳叆鐨勫唴瀹�

        //鍒濆鍖栨彃鍏ヨ嚜鍔ㄨˉ鍏╠iv锛屽苟鍦╠ocument娉ㄥ唽mousedown锛岀偣鍑婚潪div鍖哄煙闅愯棌div
        this.init = function() {
            $("body").append("<div id='bigAutocompleteContent' class='bigautocomplete-layout'></div>");
            $(document).bind('mousedown', function(event) {
                var $target = $(event.target);
                if ((!($target.parents().andSelf().is('#bigAutocompleteContent'))) && (!$target.is(bigAutocomplete.currentInputText))) {
                    bigAutocomplete.hideAutocomplete();
                }
            })

            //榧犳爣鎮仠鏃堕€変腑褰撳墠琛�
            $("#bigAutocompleteContent").delegate("tr", "mouseover", function() {
                $("#bigAutocompleteContent tr").removeClass("ct");
                $(this).addClass("ct");
            }).delegate("tr", "mouseout", function() {
                $("#bigAutocompleteContent tr").removeClass("ct");
            });


            //鍗曞嚮閫変腑琛屽悗锛岄€変腑琛屽唴瀹硅缃埌杈撳叆妗嗕腑锛屽苟鎵цcallback鍑芥暟
            $("#bigAutocompleteContent").delegate("tr", "click", function() {
                bigAutocomplete.currentInputText.val($(this).find("div:last").html());
                var callback_ = bigAutocomplete.currentInputText.data("config").callback;
                if ($("#bigAutocompleteContent").css("display") != "none" && callback_ && $.isFunction(callback_)) {
                    callback_($(this).data("jsonData"));

                }
                bigAutocomplete.hideAutocomplete();
            })

        }

        this.autocomplete = function(param) {

            if ($("body").length > 0 && $("#bigAutocompleteContent").length <= 0) {
                bigAutocomplete.init(); //鍒濆鍖栦俊鎭�
            }

            var $this = $(this); //涓虹粦瀹氳嚜鍔ㄨˉ鍏ㄥ姛鑳界殑杈撳叆妗唈query瀵硅薄

            var $bigAutocompleteContent = $("#bigAutocompleteContent");

            this.config = {
                //width:涓嬫媺妗嗙殑瀹藉害锛岄粯璁や娇鐢ㄨ緭鍏ユ瀹藉害
                width: $this.outerWidth() - 2,
                //url锛氭牸寮弖rl:""鐢ㄦ潵ajax鍚庡彴鑾峰彇鏁版嵁锛岃繑鍥炵殑鏁版嵁鏍煎紡涓篸ata鍙傛暟涓€鏍�
                url: null,
                /*data锛氭牸寮弡data:[{title:null,result:{}},{title:null,result:{}}]}
                url鍜宒ata鍙傛暟鍙湁涓€涓敓鏁堬紝data浼樺厛*/
                data: null,
                //callback锛氶€変腑琛屽悗鎸夊洖杞︽垨鍗曞嚮鏃跺洖璋冪殑鍑芥暟
                callback: null
            };
            $.extend(this.config, param);

            $this.data("config", this.config);

            //杈撳叆妗唊eydown浜嬩欢
            $this.keydown(function(event) {
                switch (event.keyCode) {
                    case 40: //鍚戜笅閿�

                        if ($bigAutocompleteContent.css("display") == "none") return;

                        var $nextSiblingTr = $bigAutocompleteContent.find(".ct");
                        if ($nextSiblingTr.length <= 0) { //娌℃湁閫変腑琛屾椂锛岄€変腑绗竴琛�
                            $nextSiblingTr = $bigAutocompleteContent.find("tr:first");
                        } else {
                            $nextSiblingTr = $nextSiblingTr.next();
                        }
                        $bigAutocompleteContent.find("tr").removeClass("ct");

                        if ($nextSiblingTr.length > 0) { //鏈変笅涓€琛屾椂锛堜笉鏄渶鍚庝竴琛岋級
                            $nextSiblingTr.addClass("ct"); //閫変腑鐨勮鍔犺儗鏅�
                            $this.val($nextSiblingTr.find("div:last").html()); //閫変腑琛屽唴瀹硅缃埌杈撳叆妗嗕腑

                            //div婊氬姩鍒伴€変腑鐨勮,jquery-1.6.1 $nextSiblingTr.offset().top 鏈塨ug锛屾暟鍊兼湁闂
                            $bigAutocompleteContent.scrollTop($nextSiblingTr[0].offsetTop - $bigAutocompleteContent.height() + $nextSiblingTr.height());

                        } else {
                            $this.val(bigAutocomplete.holdText); //杈撳叆妗嗘樉绀虹敤鎴峰師濮嬭緭鍏ョ殑鍊�
                        }


                        break;
                    case 38: //鍚戜笂閿�
                        if ($bigAutocompleteContent.css("display") == "none") return;

                        var $previousSiblingTr = $bigAutocompleteContent.find(".ct");
                        if ($previousSiblingTr.length <= 0) { //娌℃湁閫変腑琛屾椂锛岄€変腑鏈€鍚庝竴琛岃
                            $previousSiblingTr = $bigAutocompleteContent.find("tr:last");
                        } else {
                            $previousSiblingTr = $previousSiblingTr.prev();
                        }
                        $bigAutocompleteContent.find("tr").removeClass("ct");

                        if ($previousSiblingTr.length > 0) { //鏈変笂涓€琛屾椂锛堜笉鏄涓€琛岋級
                            $previousSiblingTr.addClass("ct"); //閫変腑鐨勮鍔犺儗鏅�
                            $this.val($previousSiblingTr.find("div:last").html()); //閫変腑琛屽唴瀹硅缃埌杈撳叆妗嗕腑

                            //div婊氬姩鍒伴€変腑鐨勮,jquery-1.6.1 $$previousSiblingTr.offset().top 鏈塨ug锛屾暟鍊兼湁闂
                            $bigAutocompleteContent.scrollTop($previousSiblingTr[0].offsetTop - $bigAutocompleteContent.height() + $previousSiblingTr.height());
                        } else {
                            $this.val(bigAutocomplete.holdText); //杈撳叆妗嗘樉绀虹敤鎴峰師濮嬭緭鍏ョ殑鍊�
                        }

                        break;
                    case 27: //ESC閿殣钘忎笅鎷夋

                        bigAutocomplete.hideAutocomplete();
                        break;
                }
            });

            //杈撳叆妗唊eyup浜嬩欢
            $this.keyup(function(event) {
                var k = event.keyCode;
                var ctrl = event.ctrlKey;
                var isFunctionalKey = false; //鎸変笅鐨勯敭鏄惁鏄姛鑳介敭
                for (var i = 0; i < bigAutocomplete.functionalKeyArray.length; i++) {
                    if (k == bigAutocomplete.functionalKeyArray[i]) {
                        isFunctionalKey = true;
                        break;
                    }
                }
                //k閿€间笉鏄姛鑳介敭鎴栨槸ctrl+c銆乧trl+x鏃舵墠瑙﹀彂鑷姩琛ュ叏鍔熻兘
                if (!isFunctionalKey && (!ctrl || (ctrl && k == 67) || (ctrl && k == 88))) {
                    var config = $this.data("config");

                    var offset = $this.offset();
                    $bigAutocompleteContent.width(config.width);
                    var h = $this.outerHeight() - 1;
                    $bigAutocompleteContent.css({
                        "top": offset.top + h,
                        "left": offset.left
                    });

                    var data = config.data;
                    var url = config.url;
                    var keyword_ = $.trim($this.val());
                    if (keyword_ == null || keyword_ == "") {
                        bigAutocomplete.hideAutocomplete();
                        return;
                    }
                    if (data != null && $.isArray(data)) {
                        var data_ = new Array();
                        for (var i = 0; i < data.length; i++) {
                            if (data[i].title.indexOf(keyword_) > -1) {
                                data_.push(data[i]);
                            }
                        }

                        makeContAndShow(data_);
                    } else if (url != null && url != "") { //ajax璇锋眰鏁版嵁
                        $.post(url, {
                            keyword: keyword_
                        }, function(result) {
                            makeContAndShow(result.data)
                        }, "json")
                    }


                    bigAutocomplete.holdText = $this.val();
                }
                //鍥炶溅閿�
                if (k == 13) {
                    var callback_ = $this.data("config").callback;
                    if ($bigAutocompleteContent.css("display") != "none") {
                        if (callback_ && $.isFunction(callback_)) {
                            callback_($bigAutocompleteContent.find(".ct").data("jsonData"));
                        }
                        $bigAutocompleteContent.hide();
                    }
                }

            });


            //缁勮涓嬫媺妗唄tml鍐呭骞舵樉绀�
            function makeContAndShow(data_) {
                if (data_ == null || data_.length <= 0) {
                    return;
                }

                var cont = "<table><tbody>";
                for (var i = 0; i < data_.length; i++) {
                    cont += "<tr><td><div>" + data_[i].title + "</div></td></tr>"
                }
                cont += "</tbody></table>";
                $bigAutocompleteContent.html(cont);
                $bigAutocompleteContent.show();

                //姣忚tr缁戝畾鏁版嵁锛岃繑鍥炵粰鍥炶皟鍑芥暟
                $bigAutocompleteContent.find("tr").each(function(index) {
                    $(this).data("jsonData", data_[index]);
                })
            }


            //杈撳叆妗唂ocus浜嬩欢
            $this.focus(function() {
                bigAutocomplete.currentInputText = $this;
            });

        }
        //闅愯棌涓嬫媺妗�
        this.hideAutocomplete = function() {
            var $bigAutocompleteContent = $("#bigAutocompleteContent");
            if ($bigAutocompleteContent.css("display") != "none") {
                $bigAutocompleteContent.find("tr").removeClass("ct");
                $bigAutocompleteContent.hide();
            }
        }

    };


    $.fn.bigAutocomplete = bigAutocomplete.autocomplete;

})(jQuery);

function search(keyword) {
    if (keyword == '') {
        return;
    }
    var keyword = encodeURIComponent(keyword);
    window.location.href = '/search/' + keyword + '.html';
}

$(function() {
    $("#keyword").bigAutocomplete({
        width: 408,
        url: '/index/hotsearch/',
        callback: function(data) {
            search(data.title)
        }
    });

    $("#submit").click(function() {
        var keyword = $('#keyword').val();
        search(keyword);
    })
    $(".op > .more").click(function() {
        $(this).parent().toggleClass('all');
        var height = $(this).parent().height();
        $("#dogcategory").css({
            'height': height + 'px',
            'line-height': height + 'px'
        });
    })
    $(".images dl dd img").click(function() {
        $(".images dl dt img").attr('src', $(this).attr('src'));
    })

    $(".wechat_qr").hover(function() {
        $(".taogoumall_qr").toggle();
    })

    $.getScript('/Public/js/zzsc.js', function() {
        console.log('鏂囦欢鍔犺浇鎴愬姛');
    });
})