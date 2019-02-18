package net.crawling;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class CrawlingTest3 {
	public static void main(String[] args) {
		
		// 게시판 크롤링 테스트3 (잡코리아)
		
		try {
			
			String url="http://www.jobkorea.co.kr/Search/AjaxSearchList?";
			
			// org.jsoup.* pakage import
			Document doc=Jsoup.connect(url).get();
			String params="";

			
			String searchtxt="프론트엔드";
			// order 순서정렬 : [1]정확도순 [2]등록일순 [3]수정일순 [4]마감임박순 [5]인기순 [6]조회수순 [7]지원자순
			int order=1;
			int pagesize=10;	// 한페이지당 게시글수
			
			params="pageType=GI&stext="+searchtxt+"&pageSize="+pagesize+"&ord="+order+"&IsCoInfoSC=false&IsRecruit=false&page=1&Order=1";
			doc=Jsoup.connect(url+params).get();
			
			int totalcnt=Integer.parseInt(doc.select(".titleNum .devTotalCount").text());
			//String totalcnt=doc.select(".titleNum .devTotalCount").text();

			System.out.println(doc.title());
			System.out.println("총 "+totalcnt+"건\n");
			
			int i=1;
			while(true) {
				// 페이지 설정
				params="pageType=GI&stext="+searchtxt+"&pageSize="+pagesize+"&ord="+order+"&IsCoInfoSC=false&IsRecruit=false&page="+i+"&Order=1";
				doc=Jsoup.connect(url+params).get();
				Elements elements=doc.select(".jobInfo a");	// 글제목 (Elements)
				Elements corparation=doc.select(".corpName a");	// 기업명 (Elements)
				
				if(!elements.hasText()) break;	// ★★ 글이 더이상 없으면 종료
				
				// 해당페이지 내용 출력
				System.out.println("\n[*"+i+"page*] ");
				for(Element element: elements) {
					//int no=(pagesize*(i-1))+elements.indexOf(element)+1;	// 오름차순
					int no=totalcnt-(pagesize*(i-1)+elements.indexOf(element));	// 내림차순
					Element corp=corparation.get(elements.indexOf(element));	// 기업명
					// indexOf() = (elements에 해당하는 element의 index)
					System.out.print("["+no+"] ");
					System.out.print("["+corp.text()+"] ");
					System.out.println(element.text());
				}
				i++;	// 페이지 증감
			}
			
			
			
			
		}catch(Exception e) {
			System.out.println("[ Crawling Failed ] "+e);
		}
		
		
	}
}
