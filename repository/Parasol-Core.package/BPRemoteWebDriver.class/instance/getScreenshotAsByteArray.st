misc
getScreenshotAsByteArray
	"
		http://selenium.googlecode.com/svn/trunk/docs/api/java/org/openqa/selenium/TakesScreenshot.html#getScreenshotAs(org.openqa.selenium.OutputType)
	"

	^self httpGetHandleResponse: self baseSessionURL , 'screenshot'
		onSuccess: 
			[:result |
			BPSmalltalkPlatform current byteArrayFromBase64String: (result at: 'value')]