#CBLProject
Example of using couchbase-lite-ios framework in iOS project. Check the results in Xcode console.

##To Use this project
1. Clone the project.
2. Put CouchbaseLite.framework in root directory.
3. Run the project.


## How this project is setup
1. Create new project
2. Under project's **Build Settings**, search **Other Linker Flags** and put in **-ObjC**. *(Case Sensitive)*
3. Next, under project's **Build Phases**, add following frameworks:
 - CFNetwork.framework
 - Security.framework
 - SystemConfiguration.framework
 - libsqlite3.dylib
 - libz.dylib
4. Copy **CouchbaseLite.framework** to Frameworks folder inside Xcode file navigation bar. Remember to check the **Copy Items if needed** box.
5. Create a Objective-c bridge header file and name anything you want. **BridgeHeader.h** in my case.
6. Under project's **Build Settings**, search **Objective-C Bridge** and put in **$SRCROOT/CBLProject/BridgeHeader.h**.

