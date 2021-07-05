<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/companypost.css">
    <title>기업 구인글 페이지</title>
</head>
<body>
    <div class="full">
        <header>
            <h2><span><a href="loginmain.html" class="dreamer">Dreamer</a></h2>
            <div class="navi">
                <span><button id="selectnavi" type="button">탐색</button></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span><button id="resume" type="button">이력서</button><span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="mp">
                    <img id="search1" src="/resources/images/search.png" style="width: 30px; height: 30px;">
                    <img id="mypage1" src="/resources/images/avatar.png" style="width: 30px; height: 30px;">
                </div>
            </div>    
        </header>
        <div class="sec">
            <div class="mainFrame">
                <div class="company" style="width: 950px;">
                    <div style="height: 700px;">
                        <div><img src="/resources/images/movie.jpg" style="width: 900px; height: 500px;border:solid 2px #c8c8c8;"> </div>   
                        <div><p>기업 소개 내용/자격요건/우대사항 내용</p></div> 
                    </div>
                    <div style="height: 600px;">
                        <div id="map"></div>
                    </div>
                </div>
                <div class="sidebar">
                        <h2 style="text-align: center; margin-top: 70px;">기업 이름</h2>
                        <div id="bookmark" style="width: 300px; margin-top: 50px;">
                            <div id="bm" class="bm">
                                <input type="button" value="북마크" id="bookmarkbtn" class="bookmarkbtn" onclick="alert('북마크에 저장되었습니다.');return false;" >
                                <img id="bookmarkimg" class="bookmarkimg" name="bookmarkimg" src="/resources/images/bookmark.png" style="cursor: pointer;">    
                            </div>                          
                           
                            <div id="hi"><input type="button" value="채용하기" id="hirebtn"></div>
                        </div>
                </div>
            </div>
        </div>
        <!-- <div id="my_modal1">
            <div class="ModalHeader1" style="text-align: center;">
                <span style="text-align: center; margin-right: -25px; font-size: 20px;" >북마크에 저장되었습니다.</span>
                <button type="button" class="Modal_close_btn1">X</button>
            </div>
            <div class="ModalBody1">
                <input type="button" onclick="javascript:location.href='mydreamer.html'" value="북마크 확인하기" id="bmcheck">
            </div>
        </div> -->

        <div id="my_modal2">
            <div class="ModalHeader2" style="text-align: center;">
                <span style="text-align: center; font-size: 20px;" >지원하기</span>
                <button type="button" class="Modal_close_btn2">X</button>
            </div>
            <div class="ModalBody2">
                <div>
                    <h4 style="text-align: left; margin-left: 20px;">지원 정보</h4>
                    <form name="info" action="/resources/companypost" method="POST">
                        <label for="name" class="name">이름<input required id="name" type="text" autocomplete="off"></label>
                        <label for="email" class="email">이메일<input required id="email" type="email" autocomplete="off"></label>
                        <label for="phone" class="phone">연락처<input required id="phone" type="number" autocomplete="off"></label>
                    </form>
                    <div style="border-bottom: 1px solid #e1e2e3; height: 200px; width: 360px; margin-left: 20px;"></div>
                </div>
                <div>
                    <h4 style="text-align: left; margin-left: 20px; ">첨부파일</h4>
                    <div style="margin-bottom: 20px;">
                        <input type="button" id="re1" class="re1" value="이력서1                                        X">
                        <input type="button" id="re2" class="re2" value="이력서2                                        X">
                    </div>
                    <div>
                        <input type="button" id="upload-a" value="파일업로드"
                        onclick="javascript:location.href='CVpage.html'">
                        <input type="button" id="upload-b" value="새 이력서 작성"
                        onclick="javascript:location.href='CV-write.html'">
                    </div>
                </div>
                <footer class="foot">
                    <div style="width: 360px; margin-left: 20px; border-top: 1px solid #e1e2e3; margin-top: 15px; padding-top: 15px; height: 100px;">
                        <input type="submit" class="app" id="app" value="제출하기" >
                    </div>
                </footer>
            </div>
        </div>
    </div>    
    <script type="text/javascript" src="/resources/companypost.js"></script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAtJPJok-ic-162wUIyxN5AcctNP3cNKOk&callback=initMap&region=kr"></script>
    <script src='https://code.jquery.com/jquery-3.6.0.min.js'></script>
    <script>
    // $('#bm').on({ 
    //     'click': function() { 
    //         var src = ($(this).attr('src') === 'images/bookmark.png') 
    //             ? 'images/bookmark2.png'
    //             : 'images/bookmark.png'; 
    //         $(this).attr('src', src); 
    //     } 
    // });
    $('#bm').on({
        'click': function(){ 
            $('#bookmarkimg').attr('src','/resources/images/bookmark2.png'); 
        } 
    });
    </script>
</body>
</html>