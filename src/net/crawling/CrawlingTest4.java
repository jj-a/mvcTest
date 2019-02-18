package net.crawling;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class CrawlingTest4 {
	public static void main(String[] args) {
		
		// 게시판 크롤링 테스트4 (네이버 영화 평점)
		
		try {

			long moviecode=151151;	// 메리포핀스 리턴즈
			// sympathyScore 호감순 / newest 최신순 / highest 평점높은순 / lowest 평점낮은순
			String order="sympathyScore";
			String url="https://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code="+moviecode+"&type=after";
			
			// org.jsoup.* pakage import
			Document doc=Jsoup.connect(url).get();
			String params="";

			
			params="&isActualPointWriteExecute=false&isMileageSubscriptionAlready=false&isMileageSubscriptionReject=false&order="+order+"&page=1";
			doc=Jsoup.connect(url+params).get();
			
			int totalcnt=Integer.parseInt(doc.select(".total>em").text());	// 총 평점수
			int pagesize=10;
			
			System.out.println(doc.title());
			System.out.println("총 "+totalcnt+"건\n");
			
			int i=1;
			while(true) {
				// 페이지 설정
				params="&isActualPointWriteExecute=false&isMileageSubscriptionAlready=false&isMileageSubscriptionReject=false&order="+order+"&page="+i;
				doc=Jsoup.connect(url+params).get();
				
				doc.select(".score_reple p>span").remove();	// 내용 중 실관람객 아이콘 표기 삭제
				Elements elements=doc.select(".score_reple p");	// 평점내용 (Elements)
				Elements users=doc.select(".score_reple dl>dt a>span");	// 작성자 (Elements)
				Elements starscores=doc.select(".star_score>em");	// 평점 (Elements)
				
				
				// 해당페이지 내용 출력
				System.out.println("\n[*"+i+"page*] ");
				for(Element element: elements) {
					//int no=(pagesize*(i-1))+elements.indexOf(element)+1;	// 오름차순
					int no=totalcnt-(pagesize*(i-1)+elements.indexOf(element));	// 내림차순
					Element user=users.get(elements.indexOf(element));	// 작성자
					int nickidx=user.text().indexOf("(");
					Element score=starscores.get(elements.indexOf(element));	// 평점
					// indexOf() = (elements에 해당하는 element의 index)
					
					System.out.print("["+no+"] [");
					for(int j=0;j<Integer.parseInt(score.text());j++) System.out.print("★");
					System.out.print("]["+score.text()+"] ");
					if(nickidx<0)	System.out.print("["+user.text()+"] ");
					else System.out.print("["+user.text().substring(0,user.text().indexOf("("))+"] ");
					System.out.println(element.text());
				}

				if(!doc.select(".pg_next").hasText()) break;	// ★★ 글이 더이상 없으면 종료
				
				i++;	// 페이지 증감
			} // while() end
			
		}catch(Exception e) {
			System.out.println("[ Crawling Failed ] "+e);
		}
		
		
	}
}
