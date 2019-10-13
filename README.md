# cuberact-release

prepare release your project for Windows, iOS and Linux
1. clone this project to your harddrive
   
   ```$bash
   git clone git@github.com:cuberact/cuberact-release.git
   ```

2. setup parent for your project pom.xml:

    ```$xml
    <parent>
        <groupId>org.cuberact</groupId>
        <artifactId>cuberact-release</artifactId>
        <version>1.0.0</version>
    </parent>
    ```
   
3. override properties from cuberact-proxy parent pom.xml in your project pom.xml

    ```$xml
     <properties>
         <release-data.path>/home/nkd/projects/cuberact/cuberact-release/release-data</release-data.path>
         <release.path.windows.project.exe>${project.basedir}/release-data/windows</release.path.windows.project.exe>
         <release.path.mac.icon>${project.basedir}/release-data/mac</release.path.mac.icon>
         <release.path.linux.icon>${project.basedir}/release-data/linux</release.path.linux.icon>
         <release.class>org.cuberact.proxy.Launcher</release.class>
         <release.package>org.cuberact.proxy</release.package>
     </properties>
    ```

4. run maven in your project
    ```$bash
      mvn clean install -Prelease
    ```