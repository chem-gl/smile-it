plugins {
	id("org.springframework.boot") version "3.3.2"
	id("io.spring.dependency-management") version "1.1.6"
	id("org.openapi.generator") version "7.7.0"
	kotlin("plugin.jpa") version "1.9.24"
	kotlin("jvm") version "1.9.24"
	kotlin("plugin.spring") version "1.9.24"
	kotlin("kapt") version "1.8.22"
}

group = "chemgl"
version = "0.0.1-SNAPSHOT"

java {
	toolchain {
		languageVersion = JavaLanguageVersion.of(21)
	}
}

configurations {
	compileOnly {
		extendsFrom(configurations.annotationProcessor.get())
	}
}

repositories {
	mavenCentral()
}

val mapStructVersion = "1.5.5.Final"

dependencies {
    annotationProcessor("org.projectlombok:lombok")
    annotationProcessor("org.springframework.boot:spring-boot-configuration-processor")
    compileOnly("org.projectlombok:lombok")
    developmentOnly("org.springframework.boot:spring-boot-devtools")
    developmentOnly("org.springframework.boot:spring-boot-docker-compose")
    implementation("com.fasterxml.jackson.module:jackson-module-kotlin")
    implementation("jakarta.validation:jakarta.validation-api:2.0.2")
    implementation("javax.servlet:javax.servlet-api:3.1.0")
    implementation("org.jetbrains.kotlin:kotlin-reflect")
    implementation("org.mapstruct:mapstruct:$mapStructVersion")
    implementation("org.springdoc:springdoc-openapi-ui:1.6.14")
    implementation("org.springframework.boot:spring-boot-starter-data-jpa")
    implementation("org.springframework.boot:spring-boot-starter-jdbc")
    implementation("org.springframework.boot:spring-boot-starter-web")
    implementation("org.mariadb.jdbc:mariadb-java-client:3.1.0") // Asegúrate de que la versión sea la más reciente.
    kapt("org.mapstruct:mapstruct-processor:$mapStructVersion")
    runtimeOnly("com.h2database:h2")
    testImplementation("org.jetbrains.kotlin:kotlin-test-junit5")
    testImplementation("org.springframework.boot:spring-boot-starter-test")
    testRuntimeOnly("org.junit.platform:junit-platform-launcher")
}


kotlin {
	compilerOptions {
		freeCompilerArgs.addAll("-Xjsr305=strict")
	}
}

tasks.withType<Test> {
	useJUnitPlatform()
}

openApiGenerate {
	generatorName = "kotlin-spring"
	inputSpec = "$rootDir/openapi.yaml"
	outputDir = "$rootDir"
	groupId = "$group"
	modelNameSuffix = "Dto"

	packageName = "chemgl.smileit.generated"
	apiPackage = "chemgl.smileit.generated.api"
	modelPackage = "chemgl.smileit.generated.dto"

	additionalProperties.put("interfaceOnly", true)
	additionalProperties.put("skipDefaultInterface", true)
	additionalProperties.put("configPackage", "chemgl.smileit.generated.config")
	additionalProperties.put("useTags", true)
	additionalProperties.put("hideGenerationTimestamp", true)
}

