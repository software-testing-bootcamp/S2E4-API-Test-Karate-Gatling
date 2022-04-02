# S2E4-Karate-Gatling

In this video, we will do 3 API Testing examples with Open Source technologies:

* Functional API Testing with Karate
* API Performance Testing with Gatling using Karate Scenarios
* Web API Security Testing with Owasp ZAP using Local Proxy

Before starting, You can check this webinar doc on https://testingbootcamp.com
* "API Testing and Test Automation with Rest Assured"

![image](https://user-images.githubusercontent.com/89974862/161396107-cd54809e-c588-470e-9a8b-5fc7189b7af6.png)

**Youtube Webinar Video**
https://www.youtube.com/watch?v=wCpu70VYq7Q

***********

**Requirements:**

- Java JDK 8 or later
- IntelliJ IDEA
- IntelliJ Plugin - Gherkin
- IntelliJ Plugin - Cucumber for Java
- IntelliJ Plugin - Scala
- Here Maps Developer Account with API Key

**Functional API Testing with Karate**
- Run "src/test/java/karateFunctional/HereMapsAPITest.feature" file on IntelliJ.
- Open "target/karate-reports/karate-summary.html" file.

![image](https://user-images.githubusercontent.com/89974862/161396361-665c1337-7daf-491a-bd0c-754713833f11.png)

**API Performance Testing with Gatling using Karate Scenarios**
- Check "src/test/java/karateGatling/TestSimulation.scala" file on IntelliJ to review your performance test scenarios.
- Open Terminal or Command Prompt and go to your project's pom.xml root folder.
- Run This Command "mvn clean test-compile gatling:test"
- Open "target/gatling/testsimulation-xxxxxxxx/index.html"

![image](https://user-images.githubusercontent.com/89974862/161396536-a8995122-9f9c-4d7e-9417-6c7a607c4a6c.png)

**Web API Security Testing with Owasp ZAP using Local Proxy**
- Un-comment 2 lines on your "src/test/java/karate-config.js" file. (ssl & proxy)
- Open Owasp ZAP and Run your Functional Tests on IntelliJ.
- Check your requests are on the Owasp ZAP screen and you are able to start active scanning using Owasp Zap

![image](https://user-images.githubusercontent.com/89974862/161396762-bc8e4a1e-8982-4d34-9852-4f6cd57c255d.png)

![image](https://user-images.githubusercontent.com/89974862/161396938-21349835-46c4-48fc-8eac-e83b2c0158e9.png)


**Resources:**
- https://mvnrepository.com
- https://www.jetbrains.com/idea/download
- https://plugins.jetbrains.com/plugin/7212-cucumber-for-java
- https://plugins.jetbrains.com/plugin/9164-gherkin
- https://github.com/karatelabs/karate
- https://github.com/karatelabs/karate/tree/master/karate-gatling
- https://developer.here.com/develop/rest-apis
- https://developer.here.com/documentation/geocoding-search-api/dev_guide/topics/quick-start.html
- https://www.postman.com/
- https://gatling.io/open-source/
- https://www.zaproxy.org/
