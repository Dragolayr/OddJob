package com.capstone.homelistings;
import java.util.concurrent.TimeUnit;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import io.github.bonigarcia.wdm.WebDriverManager;

public class WebDriverTests {

static WebDriver driver;

static String url="http://localhost:2000/capstone/";

    @BeforeClass
public static void openBrowser() {
   
    //System.setProperty("webdriver.ie.driver", "C:\\ws\\drivers\\IEDriverServer.exe");
        //driver=new InternetExplorerDriver();
   
WebDriverManager.chromedriver().setup();
driver = new ChromeDriver();  
        driver.manage().window().maximize();
        driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
        
    }
    

@Test
public void login() throws InterruptedException {
driver.get(url+ "/login");
driver.findElement(By.id("user")).sendKeys("jongreenwolf@gmail.com");
//Thread.sleep(3000);
driver.findElement(By.id("pwd")).sendKeys("password");
    //Thread.sleep(3000);
    driver.findElement(By.id("submitter")).click(); 
    Thread.sleep(3000);
    driver.getPageSource().contains("Profile");
    driver.findElement(By.id("logout")).click();
    driver.getPageSource().contains("You have been logged out");
    Thread.sleep(3000);
}

@Test
@Ignore
public void google() throws InterruptedException {
driver.get("https://www.google.com/");
Thread.sleep(300);
}

@Test
public void testheader() throws InterruptedException {

testlink("index");
Thread.sleep(30);
testlink("about");
Thread.sleep(30);
testlink("services");
Thread.sleep(30);
testlink("contact");
Thread.sleep(30);
testlink("login");
Thread.sleep(30);
testlink("register");
Thread.sleep(30);
}

public synchronized void testlink(String page) throws InterruptedException {
driver.get("http://localhost:2000/capstone/"+page+"");
driver.findElement(By.id("_about")).click();
driver.findElement(By.id("_services")).click();
driver.findElement(By.id("_contact")).click();
driver.findElement(By.id("_login")).click();
driver.findElement(By.id("_register")).click();

Thread.sleep(300);

}
@Test
public void testEmail() {
	driver.get(url+ "/contact");
	driver.findElement(By.id("name")).sendKeys("Jon Marsh");
	driver.findElement(By.id("email")).sendKeys("jongreenwolf@gmail.com");
	driver.findElement(By.id("subject")).sendKeys("Web Driver Test Email");
	driver.findElement(By.tagName("message")).sendKeys("This is a test for Web Driver");
	driver.findElement(By.id("send")).click();
	
}
@AfterClass
public static void closeBrowser() {
driver.quit();
}



}
