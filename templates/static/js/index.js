// 加载动画
$(window).on('load', function handlePreloader() {
    if ($('.xf_load').length) {
        $('.xf_load').delay(2000).fadeOut(1800)
    }
})

// 显示时间
setInterval(function () {
    $(function () {
        // 当前时间
        var xf_time = new Date
        var xf_hour = xf_time.getHours() + ':' // 时
        var xf_branch = xf_time.getMinutes() // 分
        // 年月日
        var myDate = new Date
        var xf_year = myDate.getFullYear() // 获取当前年
        var xf_mon = myDate.getMonth() + 1; // 获取当前月
        var xf_date = myDate.getDate() // 获取当前日
        // 星期
        var xf_week = new Date
        var week = xf_week.getDay()
        var weeks = ['星期天', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六']
        $(".xf_time_1").html(xf_hour + xf_branch)
        $(".xf_time_2").html(xf_year + "年" + xfppp(xf_mon) + "月" + xfppp(xf_date) + "日 ")
        $(".xf_time_3").html(weeks[week])
    })
}, 6000)

$(function () {
        // 当前时间
        var xf_time = new Date
        var xf_hour = xf_time.getHours() + ':' // 时
        var xf_branch = xf_time.getMinutes() // 分
        // 年月日
        var myDate = new Date
        var xf_year = myDate.getFullYear() // 获取当前年
        var xf_mon = myDate.getMonth() + 1; // 获取当前月
        var xf_date = myDate.getDate() // 获取当前日
        // 星期
        var xf_week = new Date
        var week = xf_week.getDay()
        var weeks = ['星期天', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六']
        $(".xf_time_1").html(xf_hour + xf_branch)
        $(".xf_time_2").html(xf_year + "年" + xfppp(xf_mon) + "月" + xfppp(xf_date) + "日 ")
        $(".xf_time_3").html(weeks[week])
})
function xfppp(s) {
    return s < 10 ? '0' + s : s;
}

// Initialize Swiper
var swiper = new Swiper(".xf_ico_banner", {
    navigation: {
        nextEl: ".swiper-button-next-ico",
        prevEl: ".swiper-button-prev-ico",
    },
})

// 获取弹窗
var modal = document.getElementById('myModal')

// 获取图片插入到弹窗 - 使用 "alt" 属性作为文本部分的内容
var img = document.getElementById('xf_wxImg')
var modalImg = document.getElementById("img01")
var captionText = document.getElementById("caption")
img.onclick = function () {
    modal.style.display = "block"
    modalImg.src = this.src
    captionText.innerHTML = this.alt
}
// 获取 <span> 元素，设置关闭按钮
var span = document.getElementsByClassName("close")[0]
// 当点击 (x), 关闭弹窗
span.onclick = function () {
    modal.style.display = 'none'
}

// 时钟
const hours = document.querySelector(".hours")
const minutes = document.querySelector(".minutes")
const seconds = document.querySelector(".seconds")

clock = () => {
    let today = new Date()
    let h = (today.getHours() % 12) + today.getMinutes() / 59; // 22 % 12 = 10pm
    let m = today.getMinutes() // 0 - 59
    let s = today.getSeconds() // 0 - 59

    h *= 30 // 12 * 30 = 360deg
    m *= 6
    s *= 6 // 60 * 6 = 360deg

    rotation(hours, h)
    rotation(minutes, m)
    rotation(seconds, s)

    // 每秒呼叫一次
    setTimeout(clock, 500)
}

rotation = (target, val) => {
    target.style.transform = `rotate(${val}deg)`
}
window.onload = clock()

// 禁止右键
function getClick(event) {
    if (event.button == 2) {
        swal('为了不影响页面美观, 这边禁用您了您的右键！')
        document.oncontextmenu = new Function('event.returnValue=false;')
    }
}

// 点击复制
$('.xf_zhuanfa').click(function () {
    let transfer = document.createElement('input') // 创建控件
    document.body.appendChild(transfer)
    transfer.style.cssText = 'position: absolute; right: 45%; top: 80%;'
    transfer.value = document.domain // 这里表示想要复制的内容
    transfer.focus()
    transfer.select()
    if (document.execCommand('copy')) {
        document.execCommand('copy')
    }
    transfer.blur()
    swal('复制本站域名成功!')
    document.body.removeChild(transfer) // 删除控件
})

// 旗下站点，今日运势
let qixiazhandian = document.querySelector('.but_site')
let jinriyunshi = document.querySelector('.but_fortune')
let xf_fortune = document.querySelector('.xf_fortune')
let xf_site = document.querySelector('.xf_site')
qixiazhandian.addEventListener('click', function () {
    xf_fortune.style.display = 'none'
    xf_site.style.display = 'block'
})
jinriyunshi.addEventListener('click', function () {
    xf_fortune.style.display = 'block'
    xf_site.style.display = 'none'
})

// 点击弹窗
$('.xf_liuyan').on('click', function () {
    $.confirm({
        animationBounce: 1.5,
        draggable: true,
        title: '在线留言',
        content: '' +
            '<form action="" class="xfmessage">' +
            '<div class="form-group">' +
            '<input type="email" placeholder="填写您的QQ邮箱" class="QQMail form-control" required />' +
            '</div>' +
            '<div class="form-group">' +
            '<textarea type="text" rows="4" cols="50" maxlength="50" autocomplete="off" placeholder="善眼结善缘，恶言伤人心~" class="YouLiuyan form-control" required></textarea>' +
            '</div>' +
            '</form>',
        buttons: {
            formSubmit: {
                text: '提交',
                btnClass: 'btn-blue',
                action: function () {
                    let QQMail = this.$content.find('.QQMail').val();
                    let YouLiuyan = this.$content.find('.YouLiuyan').val();
                    let xf_QQMail = new RegExp(/[1-9]\d{4,10}@qq\.com/)
                    // console.log(QQMail);
                    if (!QQMail || !xf_QQMail.test(QQMail)) {
                        $.alert('请您输入正确的QQ邮箱');
                        return false;
                    }
                    if (!YouLiuyan) {
                        $.alert('请输入您的留言');
                        return false;
                    }
                    $.ajax({url:`/message?mail=${QQMail}&message=${YouLiuyan}`,success:(data)=>{
                            alert(data)
                        }})
                }
            },
            cancel: {
                text: '取消'
            },
        },
        onContentReady: function () {
            var jc = this;
            this.$content.find('form').on('submit', function (e) {
                e.preventDefault();
                jc.$$formSubmit.trigger('click');
            });
        }
    });
});




// 和风天气插件
WIDGET = {
    "CONFIG": {
        "layout": "1",
        "width": "450",
        "height": "150",
        "background": "5",
        "dataColor": "FFFFFF",
        "language": "zh",
        "modules": "01",
        "key": ""
    }
}
WIDGET.CONFIG['key'] = $('#he-plugin-standard').attr("key")

// 3d旋转
$('#icon-rotate').click(() => {
    $('.xf_right_box ').css('transform', 'rotateY(180deg)')
    $('.xf_music_box').css('display', 'none')
    $('.xf_friends').css('display', 'block')
})
$('#xf-friend-rotate').click(() => {
    $('.xf_right_box ').css('transform', 'rotateY(0deg)')
    $('.xf_music_box').css('display', 'block')
    $('.xf_friends').css('display', 'none')
})

// 当屏幕大于992px的时删除类
let xf_now_width1 = document.body.clientWidth
let xf_now_width2 = window.screen.width
if (xf_now_width1 < 992 || xf_now_width2 < 992) {
    $('.big_box').addClass('swiper mySwiper')
    $('.main_content').addClass('swiper-wrapper')
    $('.slidebox').addClass('swiper-slide')

    // 移动端3d旋转
    $('#icon-rotate').click(() => {
        $('.xf_right_box ').css('transform', 'rotateY(360deg)')
        $('.xf_music_box').css('display', 'none')
        $('.xf_friends').css('display', 'block')
    })
    $('#xf-friend-rotate').click(() => {
        $('.xf_right_box ').css('transform', 'rotateY(0deg)')
        $('.xf_music_box').css('display', 'block')
        $('.xf_friends').css('display', 'none')
    })
}

// 轮播
var swiper = new Swiper(".mySwiper", {
    pagination: '.home-slide .swiper-pagination',
    // 0,1,2
    initialSlide: 1, // 默认第二个
    observer: true, // 修改swiper自己或子元素时，自动初始化swiper
    observeParents: true, // 修改swiper的父元素时，自动初始化swiper
    paginationClickable: true,
    pagination: {
        el: ".xf-swiper-pagination",
        clickable: true,
    },
    watchSlidesProgress: true,
    slidesPerView: 1,
});

// 判断屏幕是否横屏
function orient() {
    if (window.orientation == 0 || window.orientation == 180) {
        $("body").attr("class", "portrait");
        orientation = 'portrait';
        return false;
    }
    else if (window.orientation == 90 || window.orientation == -90) {
        $("body").attr("class", "landscape");
        orientation = 'landscape';
        return false;
    }
}

$(function () {
    orient();
});

$(window).bind('orientationchange', function (e) {
    orient();
})