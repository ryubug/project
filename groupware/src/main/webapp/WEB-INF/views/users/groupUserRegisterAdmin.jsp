<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../css/group/groupwareUserDetail.css" />
<script src="../js/groupwareUserDetail.js"></script>

<body>
    <!-- 중복 부분-------------------------------------------------------------------------------------- -->

    <div class="tbl-wrap">
        <div class="btn-grp">
            <form method="post" id="" class="" action="">

                <!-- ----------------------------------------------------------- -->
<%--                 <input type="text" name="detail_id" value="${sessionScope.uid}" /> --%>
 				<input type="text" name="uid" value="${sessionScope.uid}" />
                <!-- ----------------------------------------------------------- -->
                <span class="float-l">
                    <button type="button" class="btn-active margin-l1" id=""
                        onClick="location.href='/groupware/groupwareUserList'">전체목록</button>
                    <button type="button" class="btn-off margin-l-2" id=""
                        onClick="location.href='insa_register.html'">사원등록</button>
                </span>
                <span class="float-r">
                    <a href="#personalIdentity" class="btn-off display-style margin-l-3 active" id="">개인신상</a>
                    <a href="#work" class="btn-off display-style margin-l-3" id="">근무사항</a>
                    <a href="#qualification" class="btn-off display-style margin-l-3" id="">자격사항</a>
                    <!-- <a href="#languageStudy" class="btn-off display-style margin-l-3" id="">어학사항</a> -->
                    <a href="#militaryService" class="btn-off display-style margin-l-3" id="">병역사항</a>
                </span>
                <div class="clearfix"></div>
            </form>
        </div>
        <div class="">
            <h3 class="noto font-14 tomato margin-t20 margin-b5"><i class="fas fa-circle"></i> 신상정보</h3>
            <%--         <input type="hidden" name="audit_id" value="${auditId}" /> --%>
        </div>
        <!-- 개인 신상 -->
        <form method="post" action="/groupware/setUserNewInfo">
            <div id="personalIdentity" class="info show">
                <table>
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="10"></td>
                    </tr>
                    <tr class="tr-35 font-size6">
                        <td class="td-7 center underline td-color-01 noto bold">회사 사번</td>
                        <td colspan="3" class="td-13 padding-lr5">
                            <input type="text" name="companyNumber" id="companyNumber" class="width-100 noto" required
                                autofocus />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">권한 부여</td>
                        <td colspan="5" class="td-13 padding-lr5">
                            <select name="auth" id="auth" class="width-100 height-30">
                                <option value="권한을 선택하세요">권한을 선택하세요 </option>
                                <option value="일반">일반 </option>
                                <option value="퇴직">퇴직</option>
                                <option value="관리자">관리자</option>
                            </select>
                        </td>
                    </tr>
                    <tr class="tr-35 font-size6">
                        <td class="td-7 center underline td-color-01 noto bold">사원아이디</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="userID" id="userID" class="width-100 noto" userID
                                autofocus />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">사원 비밀번호</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="passwd" id="passwd" class="width-100 noto" required
                                autofocus />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">부서</td>
                        <td class="td-13 padding-lr5">
                            <select name="department" id="department" class="width-100 height-30">
                                <option value="부서를 선택하세요">부서를 선택하세요 </option>
                                <option value="인사팀">인사팀 </option>
                                <option value="기획팀">기획팀</option>
                                <option value="관리팀">관리팀</option>
                            </select>
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">직급</td>
                        <td class="td-13 padding-lr5">
                            <select name="userRank" id="userRank" class="width-100 height-30">
                                <option value="0">직급을 선택하세요</option>
                                <option value="사원">사원</option>
                                <option value="부장">부장</option>
                                <option value="사장">사장</option>
                                <option value="관리자">관리자</option>
                            </select>
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">이메일</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="userEmail" id="userEmail" class="width-100 noto" required
                                autofocus />
                        </td>

                    </tr>
                    <tr class="tr-35 font-size6">
                        <td class="td-7 center underline td-color-01 noto bold">사원명/성별</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="userName" id="userName" class="width-50 noto" required autofocus />
                            <select name="grp_userGender" id="grp_userGender" class="width-50 height-30">
                                <option value="남자">남자</option>
                                <option value="여자">여자</option>
                            </select>
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">생년월일</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="grp_userBirth" id="grp_userBirth" class="width-50 noto" />
                            <select name="grp_lunarCalendar" id="grp_lunarCalendar" class="width-50 height-30">
                                <option value="양력">양력</option>
                                <option value="음력">음력</option>
                            </select>
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">C.P</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="userPhone" id="userPhone" class="width-100 noto" required />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">내선번호</td>
                        <td class="td-13 padding-lr5">
                            <select name="grp_extension" id="grp_extension" class="width-30 height-30">
                                <option value="051">051</option>
                            </select>
                            <input type="text" name="grp_extensionNumber" id="grp_extensionNumber" class="width-70 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">Tel</td>
                        <td class="td-13 padding-lr5">
                            <select name="grp_tele" id="grp_tele" class="width-30 height-30">
                                <option value="051">051</option>
                            </select>
                            <input type="text" name="grp_telephone" id="grp_telephone" class="width-70 noto" />
                        </td>
                    </tr>
                    <!-- -->
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="10"></td>
                    </tr>
                    <tr class="tr-35 font-size6">
                        <td class="td-7 center underline td-color-01 noto bold">채용형태</td>
                        <td class="td-13 padding-lr5">
                            <select name="grp_recruitment" id="grp_recruitment" class="width-100 height-30">
                                <option value="인턴채용">인턴채용</option>
                                <option value="공개채용">공개채용</option>
                                <option value="특별채용">특별채용</option>
                                <option value="수시채용">수시채용</option>
                            </select>
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">희망직무</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="grp_hopeJob" id="grp_hopeJob" class="width-100 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">키/몸무게</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="grp_userHeight" id="grp_userHeight" class="width-50 noto"
                                placeholder="cm" />
                            <input type="text" name="grp_userWeight" id="grp_userWeight" class="width-50 noto"
                                placeholder="kg" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">병역구분</td>
                        <td class="td-13 padding-lr5">
                            <select name="grp_militaryService" id="grp_militaryService" class="width-100 height-30">
                                <option value="병역필">병역필</option>
                                <option value="병역미필">병역미필</option>
                                <option value="공익">공익</option>
                            </select>
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">종교</td>
                        <td class="td-13 padding-lr5">
                            <select name="grp_religion" id="grp_religion" class="width-100 height-30">
                                <option value="무교">무교</option>
                                <option value="불교">불교</option>
                                <option value="기독교">기독교</option>
                            </select>
                        </td>
                    </tr>
                    <!---->
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="10"></td>
                    </tr>
                    <tr class="tr-35 font-size6">
                        <td class="td-7 center underline td-color-01 noto bold">취미</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="grp_userHobby" id="grp_userHobby" class="width-100 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">특기</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="grp_userSpecialty" id="grp_userSpecialty" class="width-100 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">장애인여부</td>
                        <td class="td-13 padding-lr5">
                            <select name="grp_disabledCk" id="grp_disabledCk" class="width-100 height-30">
                                <option value="비장애">비장애</option>
                                <option value="장애">장애</option>
                            </select>
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">보훈대상자여부</td>
                        <td class="td-13 padding-lr5">
                            <select name="grp_veteransCk" id="grp_veteransCk" class="width-100 height-30">
                                <option value="비대상">비대상</option>
                                <option value="대상">대상</option>
                            </select>
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">결혼여부</td>
                        <td class="td-13 padding-lr5">
                            <select name="grp_marriageCk" id="grp_marriageCk" class="width-100 height-30">
                                <option value="미혼">미혼</option>
                                <option value="기혼">기혼</option>
                            </select>
                        </td>
                    </tr>
                    <tr class="tr-35 font-size6">
                        <td class="td-7 center underline td-color-01 noto bold">최종학력</td>
                        <td class="td-13 padding-lr5">
                            <select name="grp_finalEducation" id="grp_finalEducation" class="width-100 height-30">
                                <option value="졸업">졸업</option>
                                <option value="퇴학">퇴학</option>
                                <option value="휴학">휴학</option>
                                <option value="중퇴">중퇴</option>
                            </select>
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">졸업년도</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="grp_graduationYear" id="grp_graduationYear" class="width-100 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">졸업학과</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="grp_graduate" id="grp_graduate" class="width-100 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">대학교</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="grp_university" id="grp_university" class="width-100 noto" />
                        </td>
                        <td class="td-7 center underline td-color-01 noto bold">학점</td>
                        <td class="td-13 padding-lr5">
                            <input type="text" name="grp_grades" id="grp_grades" class="width-100 noto" />
                        </td>
                      
                    </tr>
                    <tr class="tr-35 font-size6">
                        <td class="td-7 center underline td-color-01 noto bold">가족관계</td>
                        <td class="td-13 padding-lr5 padding-tb2" colspan="9">
                            <textarea name="grp_graduation" id="grp_graduation" class="width-100 height-100 noto padding-a5"
                                placeholder="가족 관계를 입력하세요. ex) 가족관계 / 성함 / 직업"></textarea>
                        </td>
                    </tr>
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="10"></td>
                    </tr>
                    <!---->
                    <tr class="tr-35 font-size6">
                        <td class="td-7 center underline td-color-01 noto bold">내용</td>
                        <td class="td-13 padding-lr5 padding-tb2" colspan="9">
                            <textarea name="grp_aboutMe" id="grp_aboutMe" class="width-100 height-100 noto padding-a5"
                                placeholder="하고 싶은 말을 적으세요."></textarea>
                        </td>
                    </tr>
                    <tr style="width:100%;height:1px;background-color:#eee;">
                        <td colspan="10"></td>
                    </tr>
                </table>
                <div class="btn-grp center margin-t10">
                    <button type="submit" class="btn-active margin-l1" id="">내용저장</button>
                    <button type="reset" class="btn-off margin-l-2" id="">새로고침</button>
                </div>
             </form>
            </div>

            <!-- 가족사항 -->

            <!-- 학력사항 -->


            <!-- 근무사항 // -->
            <div id="work"" class=" info">
                <form method="post" action="">
                    <table>
                        <tr class="tr-35 font-size6">
                            <td class="td-7 center underline td-color-01 noto bold">근무날짜</td>
                            <td class="td-13 padding-lr5">
                                <input type="text" name="" id="" class="width-100 noto" />
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">근무부서</td>
                            <td class="td-13 padding-lr5">
                                <input type="text" name="" id="" class="width-100 noto" />
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">직위</td>

                            <td class="td-13 padding-lr5">
                                <input type="text" name="" id="" class="width-100 noto" />
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">담당업무</td>
                            <td class="td-13 padding-lr5">
                                <input type="text" name="" id="" class="width-100 noto" />
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">내용</td>
                            <td class="td-13 padding-lr5">
                                <input type="text" name="" id="" class="width-100 noto" />
                            </td>
                        </tr>
                    </table>
                    <div class="btn-grp center margin-t10">
                        <button type="submit" class="btn-active margin-l1" id="">내용저장</button>
                        <button type="reset" class="btn-off margin-l-2" id="">새로고침</button>
                    </div>
                </form>
            </div>

            <!-- 자격사항 //-->
            <div id="qualification" class="info">
                <form method="post" action="">
                    <table>
                        <tr class="tr-35 font-size6">
                            <td class="td-7 center underline td-color-01 noto bold">자격</td>
                            <td class="td-13 padding-lr5">
                                <input type="text" name="" id="" class="width-100 noto" />
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">면허명</td>
                            <td class="td-13 padding-lr5">
                                <input type="text" name="" id="" class="width-100 noto" />
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">취득일자</td>

                            <td class="td-13 padding-lr5">
                                <input type="text" name="" id="" class="width-100 noto" />
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">발급기관명</td>
                            <td class="td-13 padding-lr5">
                                <input type="text" name="" id="" class="width-100 noto" />
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">내용</td>
                            <td class="td-13 padding-lr5">
                                <input type="text" name="" id="" class="width-100 noto" />
                            </td>
                        </tr>
                    </table>
                    <div class="btn-grp center margin-t10">
                        <button type="submit" class="btn-active margin-l1" id="">내용저장</button>
                        <button type="reset" class="btn-off margin-l-2" id="">새로고침</button>
                    </div>
                </form>
            </div>

                    <!-- 어학사항 // 기입하기 -->
                    <!-- <div id="languageStudy" class="info"> 
                        <form method="post" action="">
                            <table> 
                                <tr class="tr-35 font-size6"> 
                                    <td class="td-7 center underline td-color-01 noto bold">자격</td> 
                                    <td class="td-13 padding-lr5"> 
                                        <input type="text" name="" id="" class="width-100 noto" /> 
                                    </td> 
                                    <td class="td-7 center underline td-color-01 noto bold">면허명</td> 
                                    <td class="td-13 padding-lr5">
                                        <input type="text" name="" id="" class="width-100 noto" /> 
                                    </td> 
                                    <td class="td-7 center underline td-color-01 noto bold">취득일자</td> 

                                    <td class="td-13 padding-lr5"> 
                                        <input type="text" name="" id="" class="width-100 noto" /> 
                                    </td> 
                                    <td class="td-7 center underline td-color-01 noto bold">발급기관명</td> 
                                    <td class="td-13 padding-lr5"> 
                                        <input type="text" name="" id="" class="width-100 noto" /> 
                                    </td>
                                    <td class="td-7 center underline td-color-01 noto bold">내용</td> 
                                    <td class="td-13 padding-lr5"> 
                                        <input type="text" name="" id="" class="width-100 noto" /> 
                                    </td> 
                                </tr> 
                            </table> 
                            <div class="btn-grp center margin-t10"> 
                                <button type="submit" class="btn-active margin-l1" id="">내용저장</button> 
                                <button type="reset" class="btn-off margin-l-2" id="">새로고침</button> 
                            </div> 
                        </form> 
                    </div>  -->
            <!-- 병력사항 // 확인해서 기제 하기-->
            <div id="militaryService" class="info">
                <form method="post" action="">
                    <table>
                        <tr class="tr-35 font-size6">
                            <td class="td-7 center underline td-color-01 noto bold">군별</td>
                            <td class="td-13 padding-lr5">
                                <input type="text" name="mp_militaryGroup" id="mp_militaryGroup"
                                    class="width-100 noto" />
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">계급</td>
                            <td class="td-13 padding-lr5">
                                <input type="text" name="mp_militaryRank" id="mp_militaryRank" class="width-100 noto" />
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">입영일자</td>
                            <td class="td-13 padding-lr5">
                                <input type="text" name="mp_enlistmentDate" id="mp_enlistmentDate"
                                    class="width-100 noto" />
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">전역일자</td>
                            <td class="td-13 padding-lr5">
                                <input type="text" name="mp_dischargeDate" id="mp_dischargeDate"
                                    class="width-100 noto" />
                            </td>
                            <td class="td-7 center underline td-color-01 noto bold">전역사요</td>
                            <td class="td-13 padding-lr5">
                                <input type="text" name="mp_dischargeContents" id="mp_dischargeContents"
                                    class="width-100 noto" />
                            </td>
                        </tr>
                    </table>
                    <div class="btn-grp center margin-t10">
                        <button type="submit" class="btn-active margin-l1" id="">내용저장</button>
                        <button type="reset" class="btn-off margin-l-2" id="">새로고침</button>
                    </div>
                </form>
            </div>
    </div>
    
    <!-- 이 부분 중복으로 인해서 사용 하기 ---------------------------------------------------------------------------->
</body>