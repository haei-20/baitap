</main>

<footer class="site-footer">
    <div class="container footer-inner">

        <div class="footer-col">
            <h4>${hoTen}</h4>
            <p>${lop} &middot; ${truong}</p>
        </div>

        <div class="footer-col">
            <h4>Liên kết</h4>
            <ul class="footer-links">
                <li><a href="index.jsp">Trang chủ</a></li>
                <li><a href="sothich.jsp">Sở thích</a></li>
                <li><a href="dinhhuong.jsp">Định hướng</a></li>
                <li><a href="lienhe.jsp">Liên hệ</a></li>
            </ul>
        </div>

        <div class="footer-col">
            <h4>Thời gian truy cập</h4>
            <p id="serverTime">
                <%= new java.text.SimpleDateFormat("EEEE, dd/MM/yyyy HH:mm:ss", new java.util.Locale("vi", "VN")).format(new java.util.Date()) %>
            </p>
            <p class="clock" id="liveClock">--:--:--</p>
        </div>

    </div>

    <div class="footer-bottom">
        <p>
            &copy; <%= new java.text.SimpleDateFormat("yyyy").format(new java.util.Date()) %>
            ${hoTen} &ndash; ${maSV}. Bài tập thực hành môn Lập trình web (INT1434).
        </p>
    </div>
</footer>

<button class="back-to-top" id="backToTop" aria-label="Lên đầu trang">&#8593;</button>

<script src="js/script.js"></script>
</body>
</html>
