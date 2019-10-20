# cuberact-release

prepare release your project for Windows, iOS and Linux
1. Clone cuberact-release project to your drive (for example to /home/user/cuberact-release)
   
   ```$bash
   git clone git@github.com:cuberact/cuberact-release.git
   ```

2. In your project pom.xml use cuberact-release as parent pom

    ```$xml
    <parent>
        <groupId>org.cuberact</groupId>
        <artifactId>cuberact-release</artifactId>
        <version>1.2.0</version>
    </parent>
    ```
   
3. override properties in your project pom.xml

    ```$xml
     <properties>
          <folder.release-data.main>/home/user/cuberact-release/release-data</folder.release-data.main>
          <release.package>org.yourpackage</release.package>
          <release.main-class>org.yourpackage.Launcher</release.main-class>
     </properties>
    ```

4. run maven in your project
    ```$bash
      mvn clean package -Prelease
    ```