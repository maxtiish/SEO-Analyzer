plugins {
    id("java")
    id("checkstyle")
    id("application")
    id("io.freefair.lombok") version "8.6"
    jacoco
}

group = "hexlet.code"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

application {
    mainClass.set("hexlet.code.App")
}

dependencies {
    implementation("org.postgresql:postgresql:42.5.4")
    implementation("gg.jte:jte:3.1.9")
    implementation("com.h2database:h2:2.2.222")
    implementation("io.javalin:javalin:6.1.3")
    implementation("io.javalin:javalin-bundle:6.1.3")
    implementation("org.slf4j:slf4j-simple:2.0.7")
    implementation("io.javalin:javalin-rendering:6.1.3")
    implementation("com.zaxxer:HikariCP:5.0.1")
    implementation("com.konghq:unirest-java-core:4.2.4")
    implementation("com.konghq:unirest-java-bom:4.2.4")
    implementation("org.jsoup:jsoup:1.17.2")

    testImplementation("org.assertj:assertj-core:3.24.2")
    testImplementation(platform("org.junit:junit-bom:5.10.0"))
    testImplementation("org.junit.jupiter:junit-jupiter")
    testImplementation("com.squareup.okhttp3:mockwebserver:4.12.0")
}

tasks.test {
    useJUnitPlatform()
}

tasks.jacocoTestReport {
    reports {
        xml.required.set(true)
    }
}