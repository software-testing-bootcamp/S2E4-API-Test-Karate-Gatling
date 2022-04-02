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
