/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

(function () {
    "use strict";

    var $  = function (sel) { return document.querySelector(sel); };
    var $$ = function (sel) { return Array.prototype.slice.call(document.querySelectorAll(sel)); };


    function loiChaoTheoGio() {
        var el = $("#greeting");
        if (!el) { return; }

        var gio  = new Date().getHours();
        var chao;

        if (gio >= 5  && gio < 11) { chao = "☀️ Chào buổi sáng!"; }
        else if (gio >= 11 && gio < 13) { chao = "🍚 Chào buổi trưa!"; }
        else if (gio >= 13 && gio < 18) { chao = "⛅ Chào buổi chiều!"; }
        else if (gio >= 18 && gio < 22) { chao = "🌆 Chào buổi tối!"; }
        else { chao = "🌙 Khuya rồi, bạn nhớ nghỉ ngơi nhé!"; }

        el.textContent = chao;
    }


    function dongHo() {
        var el = $("#liveClock");
        if (!el) { return; }

        function hai(n) { return n < 10 ? "0" + n : "" + n; }

        function capNhat() {
            var t = new Date();
            el.textContent = hai(t.getHours()) + ":" + hai(t.getMinutes()) + ":" + hai(t.getSeconds());
        }

        capNhat();
        setInterval(capNhat, 1000);
    }


    function menuDienThoai() {
        var nut  = $("#navToggle");
        var menu = $("#mainNav");
        if (!nut || !menu) { return; }

        nut.addEventListener("click", function () {
            var dangMo = menu.classList.toggle("open");
            nut.classList.toggle("open", dangMo);
            nut.setAttribute("aria-expanded", dangMo ? "true" : "false");
        });

        $$("#mainNav a").forEach(function (a) {
            a.addEventListener("click", function () {
                menu.classList.remove("open");
                nut.classList.remove("open");
                nut.setAttribute("aria-expanded", "false");
            });
        });
    }


    function nutBietThem() {
        var nut  = $("#btnMore");
        var khoi = $("#aboutMore");
        if (!nut || !khoi) { return; }

        nut.addEventListener("click", function () {
            var dangMo = khoi.classList.toggle("show");
            nut.textContent = dangMo ? nut.dataset.open : nut.dataset.close;
        });
    }


    function moDanhSachSoThich() {
        var nut  = $("#hobbyToggle");
        var khoi = $("#hobbyList");
        if (!nut || !khoi) { return; }

        nut.addEventListener("click", function () {
            var dangMo = khoi.classList.toggle("show");
            nut.classList.toggle("open", dangMo);
            nut.setAttribute("aria-expanded", dangMo ? "true" : "false");
        });
    }


    function moTheSoThich() {
        var the = $$(".hobby-card");
        if (the.length === 0) { return; }

        the.forEach(function (card) {
            var nut = card.querySelector(".hobby-btn");

            function doiTrangThai() {
                var dangMo = card.classList.toggle("open");
                if (nut) { nut.innerHTML = dangMo ? "Thu gọn ↑" : "Chi tiết ↓"; }
            }

            if (nut) {
                nut.addEventListener("click", function (e) { e.stopPropagation(); doiTrangThai(); });
            }
            card.addEventListener("click", doiTrangThai);
        });
    }


    function timKiemSoThich() {
        var o      = $("#hobbySearch");
        var dem    = $("#hobbyCount");
        var trong  = $("#hobbyEmpty");
        var the    = $$(".hobby-card");
        if (!o || the.length === 0) { return; }

        function khongDau(s) {
            return s.normalize("NFD").replace(/[̀-ͯ]/g, "").replace(/đ/g, "d").toLowerCase();
        }

        function loc() {
            var tuKhoa = khongDau(o.value.trim());
            var hienThi = 0;

            the.forEach(function (card) {
                var ten = khongDau(card.dataset.name || "");
                var hop = ten.indexOf(tuKhoa) !== -1;
                card.style.display = hop ? "" : "none";
                if (hop) { hienThi++; }
            });

            if (dem)   { dem.textContent = "Hiển thị " + hienThi + "/" + the.length + " sở thích"; }
            if (trong) { trong.hidden = hienThi !== 0; }
        }

        o.addEventListener("input", loc);
        loc();
    }


    function chayThanhKyNang() {
        var thanh = $$(".skill-fill");
        if (thanh.length === 0) { return; }

        function chay() {
            thanh.forEach(function (t, i) {
                setTimeout(function () { t.style.width = (t.dataset.pct || 0) + "%"; }, i * 140);
            });
        }

        if ("IntersectionObserver" in window) {
            var io = new IntersectionObserver(function (items, obs) {
                items.forEach(function (it) {
                    if (it.isIntersecting) { chay(); obs.disconnect(); }
                });
            }, { threshold: 0.25 });
            io.observe(thanh[0].closest(".skills") || thanh[0]);
        } else {
            chay();
        }
    }


    function hienDanKhiCuon() {
        var items = $$(".reveal");
        if (items.length === 0) { return; }

        if (!("IntersectionObserver" in window)) {
            items.forEach(function (el) { el.classList.add("visible"); });
            return;
        }

        var io = new IntersectionObserver(function (list, obs) {
            list.forEach(function (it) {
                if (it.isIntersecting) {
                    it.target.classList.add("visible");
                    obs.unobserve(it.target);
                }
            });
        }, { threshold: 0.12, rootMargin: "0px 0px -40px 0px" });

        items.forEach(function (el) { io.observe(el); });
    }


    function xuLyCuonTrang() {
        var header = $("#siteHeader");
        var nutLen = $("#backToTop");

        function theoDoi() {
            var y = window.pageYOffset || document.documentElement.scrollTop;
            if (header) { header.classList.toggle("scrolled", y > 8); }
            if (nutLen) { nutLen.classList.toggle("show", y > 320); }
        }

        window.addEventListener("scroll", theoDoi, { passive: true });
        theoDoi();

        if (nutLen) {
            nutLen.addEventListener("click", function () {
                window.scrollTo({ top: 0, behavior: "smooth" });
            });
        }
    }


    function kiemTraForm() {
        var form = $("#contactForm");
        if (!form) { return; }

        var ten   = $("#cfName");
        var mail  = $("#cfEmail");
        var noiDung = $("#cfMsg");
        var ok    = $("#formOk");

        function baoLoi(o, idLoi, thongBao) {
            var loi = $(idLoi);
            if (loi) { loi.textContent = thongBao || ""; }
            if (o && o.parentElement) { o.parentElement.classList.toggle("invalid", !!thongBao); }
            return !thongBao;
        }

        function hopLe() {
            var t = true;

            t = baoLoi(ten, "#errName",
                    ten.value.trim().length < 2 ? "Vui lòng nhập họ tên (ít nhất 2 ký tự)." : "") && t;

            t = baoLoi(mail, "#errEmail",
                    !/^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/.test(mail.value.trim()) ? "Email chưa đúng định dạng." : "") && t;

            t = baoLoi(noiDung, "#errMsg",
                    noiDung.value.trim().length < 10 ? "Nội dung cần ít nhất 10 ký tự." : "") && t;

            return t;
        }

        form.addEventListener("submit", function (e) {
            e.preventDefault();
            if (ok) { ok.hidden = true; }

            if (hopLe()) {
                if (ok) { ok.hidden = false; }
                form.reset();
                setTimeout(function () { if (ok) { ok.hidden = true; } }, 5000);
            }
        });

        [ten, mail, noiDung].forEach(function (o) {
            if (!o) { return; }
            o.addEventListener("input", function () {
                if (o.parentElement.classList.contains("invalid")) { hopLe(); }
            });
        });
    }


    function khoiChay() {
        loiChaoTheoGio();
        dongHo();
        menuDienThoai();
        nutBietThem();
        moDanhSachSoThich();
        moTheSoThich();
        timKiemSoThich();
        chayThanhKyNang();
        hienDanKhiCuon();
        xuLyCuonTrang();
        kiemTraForm();

        console.log("%c Trang web ca nhan da san sang! ",
                    "background:#16325c;color:#f0a500;padding:4px 8px;border-radius:4px;");
    }

    if (document.readyState === "loading") {
        document.addEventListener("DOMContentLoaded", khoiChay);
    } else {
        khoiChay();
    }

}());

