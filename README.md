Three the Hard Way (HelloTDDiOS)
================================

Sample test-driven iOS project. Showcases simple automatated testing using:

* OCUnit
* Kiwi
* KIF

Uses CocoaPods for library dependency management.

Set Up
------

$ git clone git@github.com:ecgreb/Three-the-Hard-Way.git
$ cd Three-the-Hard-Way/
$ pod install

Xcode
-----

1. Open project using HelloTDDiOS.xcworkspace.
2. Press Cmd+U keyboard shortcut to run OCUnit and Kiwi tests.
3. Select Integration Tests scheme to run KIF tests.
4. Select HelloTDDiOS scheme to run sample app.

AppCode
-------

1. Open project using HelloTDDiOS.xcworkspace.
2. Select Run > Edit Configurations...
3. Add new OCUnit run configuration named "Unit Tests" and hit OK.
4. Select Unit Tests run configuration to run OCUnit and Kiwi tests.
5. Select Integration Tests run configuration to run KIF tests.
6. Select HelloTDDiOS run configuration to run sample app.
