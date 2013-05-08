Three the Hard Way (HelloTDDiOS)
================================

Sample test-driven iOS project. Showcases simple automatated testing using:

* OCUnit
* [Kiwi](https://github.com/allending/Kiwi)
* [KIF](https://github.com/square/KIF)

Uses [CocoaPods](http://cocoapods.org/) for library dependency management.

Set Up
------
```
$ git clone git@github.com:ecgreb/Three-the-Hard-Way.git
$ cd Three-the-Hard-Way/
$ pod install
```

Xcode
-----

1. Open project using <code>HelloTDDiOS.xcworkspace</code>.
2. Press <code>Cmd+U</code> keyboard shortcut to run OCUnit and Kiwi tests.
3. Select <code>Integration Tests</code> scheme to run KIF tests.
4. Select <code>HelloTDDiOS</code> scheme to run sample app.

AppCode
-------

1. Open project using <code>HelloTDDiOS.xcworkspace</code>.
2. Select <b>Run > Edit Configurations...</b>
3. Add new OCUnit run configuration named <code>Unit Tests</code> and hit OK.
4. Select <code>Unit Tests</code> run configuration to run OCUnit and Kiwi tests.
5. Select <code>Integration Tests</code> run configuration to run KIF tests.
6. Select <code>HelloTDDiOS</code> run configuration to run sample app.
