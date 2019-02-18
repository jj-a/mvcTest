package net.crawling;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class CrawlingTest2 {
	public static void main(String[] args) {
		
		// 게시판 크롤링 테스트2
		
		try {
			
			String url="http://soldesk.com/board/board_bagic/board_list.asp?scrID=0000000173";
			
			// org.jsoup.* pakage import
			Document doc=Jsoup.connect(url).get();
			
			System.out.println(doc.title());
			
			for(int i=1;i<=2;i++) {
				// 페이지 설정
				String params="&pageNum=1&subNum=1&ssubNum=1&page="+i+"&bd_num=&act=list&s_string=";
				doc=Jsoup.connect(url+params).get();
				Elements elements=doc.select(".td_left a:chilnot(span)");	// 글제목
				Elements nos=doc.select("tr td:first-child");	// 글번호
				// 해당페이지 내용 출력
				System.out.println("["+i+"page] ");
				for(Element element: elements) {
					// 글번호 출력
					Element no=nos.get(elements.indexOf(element));	// Elements.get(index)
					// indexOf() = (elements에 해당하는 element의 index)
					System.out.print("["+no.text()+"] ");
					//System.out.println(element);
					// 글제목 출력
					System.out.println(element.text());
				}
			}
			
			
			
			
		}catch(Exception e) {
			System.out.println("[ Crawling Failed ] "+e);
		}
		
		
	}
}
