package com.tgs.tgh.stepDefinition;

import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class WebDriver {
	
	public static ChromeDriver inicializarWebDriver() {
		System.setProperty("webdriver.chrome.driver", "/usr/local/share/chromedriver");
		final ChromeOptions options = new ChromeOptions();
		options.addArguments("--disable-extensions");
		options.addArguments("--headless");
		options.addArguments("--disable-gpu");
		options.addArguments("--no-sandbox");
		return new ChromeDriver(options);
	}

}
