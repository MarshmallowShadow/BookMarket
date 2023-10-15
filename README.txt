인텔리제이 커뮤니티 에디션 사용자들을 위한 할것들:

pom.xml
-groupId, artifactId 이름 변경
-java-version 환경 맞게 변경
-org.springframework-version 버전 환경 맞춤 변경 (변경 시 나머지 디펜던시들도 맞춤 변경)

web.xml
-web-app 버전 환경 맞게 변경하기

Smart Tomcat 설치 (커뮤니티는 톰캣도 지원 없음...)
-Edit Configurations에 Smart Tomcat 추가
-톰캣 버전 선택
-Deployment Directory는 webapp폴더로 설정
-(Deployment Directory는 web.xml의 서블릿 컨텍스트 경로랑 servlet-context.xml의 뷰 리졸버 경로 기준으로 설정해주면 됨)