package net.crawling;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class CrawlingTest {
	public static void main(String[] args) {
		
		// 게시판 크롤링 테스트
		
		try {
			
			String url="http://choongang.co.kr/html/sub07_01.php";
			
			// org.jsoup.* pakage import
			Document doc=Jsoup.connect(url).get();
			
			//System.out.println(doc.toString());
			
			//System.out.println(doc.title());
			//System.out.println(doc.body());
			
			// getElecemtsByClass("클래스명") : 클래스명으로 가져오기
			Object arr[]=doc.getElementsByClass("default_title").toArray();
			for(int i=0;i<10;i++) {
				System.out.println(arr[i]);
			}
			
			System.out.println();

			// .text() : 태그 안의 텍스트만 가져오기
			
			Elements elements=doc.select(".default_title");
			for(Element element: elements) {
				//System.out.println(element.toString());
				System.out.println(element.text());
			}
			System.out.println();
			
			System.out.println("**********************");
			System.out.println("페이지 전체 불러오기");
			System.out.println("**********************");
			
			for(int i=1;i<=5;i++) {
				// 페이지 설정
				String params="?page="+i+"&mod=&idx=";
				doc=Jsoup.connect(url+params).get();
				elements=doc.select(".default_title");	// 글제목
				Elements nos=doc.select(".default_no");	// 글번호
				// 해당페이지 내용 출력
				System.out.println("["+i+"page] ");
				for(Element element: elements) {
					// 글번호 출력
					Element no=nos.get(elements.indexOf(element));	// Elements.get(index)
					// indexOf() = (elements에 해당하는 element의 index)
					System.out.print("["+no.text()+"] ");
					// 글제목 출력
					System.out.println(element.text());
				}
			}
			
			
			
			
		}catch(Exception e) {
			System.out.println("[ Crawling Failed ] "+e);
		}
		
		
	}
}
