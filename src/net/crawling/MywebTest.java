package net.crawling;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class MywebTest {
	public static void main(String[] args) {
		
		// myweb 프로젝트 게시판 크롤링
		
		try {
			
			String url="http://172.16.10.9:9090/myweb/index.jsp";
			
			// org.jsoup.* pakage import
			Document doc=Jsoup.connect(url).get();
			
			//System.out.println(doc.toString());
			
			System.out.println(doc.title());
			System.out.println(doc.body());
			
			
		}catch(Exception e) {
			System.out.println("[ Crawling Failed ] "+e);
		}
		
		
	}
}
