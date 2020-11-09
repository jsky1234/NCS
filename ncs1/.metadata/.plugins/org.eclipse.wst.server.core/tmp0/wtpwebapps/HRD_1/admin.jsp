<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 모드로 로그인 중</title>
<style>
* { margin: 0; padding: 0; }
body, html { width: 100%; height: 100%; }
ul { list-style : none; }
a { text-decoration: none; }
button, label, input { outline: 0; border: 0; user-select: none; }
img { border: 0; }
ol { padding: 30px; }

.hd { clear: both; min-height: 180px; background-color: #333; }
.tit { font-size: 48px; text-align: center; line-height: 140px; color: #fff; padding-top: 15px;}
.gnb { clear: both; height: 40px; background-color: #cccccc; }
.gnb li { float: left; min-width: 120px; width: auto; }
.gnb a { display:block; text-align: center; line-height: 40px; width: 200px; height: 40px; color: #000000; font-weight: 700; border-left: 1px solid #666666; }
.gnb li:last-child { border-right: 1px solid #666666; }

.page { clear: both; padding: 30px 0 30px 0; }
.page_tit { text-align: center; font-size: 40px; }
.item_tit1 { font-size: 24px; margin-top: 30px; }
.item_tit2 { font-size: 18px; margin-top: 40px;}

.ft { clear: both; position: absolute;  width: 100%; bottom: 0; min-height:80px; height: 140px; background-color: #333; }
.copyright { color: #fff; font-size: 20px; text-align: center; margin-top: 20px; line-height: 100px;}

</style>
</head>
<body>
<header class="hd">
	<h2 class="tit">쇼핑몰 회원관리 ver 1.0</h2>
</header>
<nav class="gnb">
	<ul>
		<li><a href="">회원등록</a></li>
		<li><a href="">회원목록조회/수정</a></li>
		<li><a href="">회원매출조회</a></li>
		<li><a href="">홈으로</a></li>
	</ul>
</nav>
<main class="content">
	<section class="page" id="page1">
		<h2 class="page_tit">쇼핑몰회원관리프로그램</h2>
		<div class="main_help">
			<h3 class="item_tit1">쇼핑몰 회원정보와 회원매출정보 데이터베이스를 구축하고 회원을 관리하는 프로그램</h3>
			<h3 class="item_tit2">프로그램 작성 순서</h3>
			<ol>
				<li>회원정보 테이블을 생성한다.</li>
				<li>매출정보 테이블을 생성한다.</li>
				<li>회원정보, 매출정보 테이블에 제시된 문제지의 참조 데이터를 추가 생성한다.</li>
				<li>회원정보 입력 화면프로그램을 작성한다.</li>
				<li>회원정보 조회 프로그램을 작성한다.</li>
				<li>회원매출정보 조회 프로그램을 작성한다.</li>
			</ol>
		</div>
	</section>
</main>
<footer class="ft">
	<div class="ft_wrap">
		<div class="admin_copy">
			<p class="copyright">HRDKOREA Copyright@2016 All rights reserved Human Resource Development Service of Korea</p>
		</div>
	</div>
</footer>
</body>
</html>