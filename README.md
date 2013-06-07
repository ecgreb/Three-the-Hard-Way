Three the Hard Way (HelloTDDiOS)
================================

![Three the Hard Way](three-the-hard-way.jpg)[1]

Sample test-driven iOS project. Showcases simple automated testing using:

* OCUnit
* [Kiwi][2]
* [KIF][3]

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
4. Select <code>HelloTDDiOS</code> scheme to run the sample app.

AppCode
-------

1. Open project using <code>HelloTDDiOS.xcworkspace</code>.
2. Select <b>Run > Edit Configurations...</b>
3. Add new OCUnit run configuration named <code>Unit Tests</code> and hit OK.
4. Select <code>Unit Tests</code> run configuration to run OCUnit and Kiwi tests.
5. Select <code>Integration Tests</code> run configuration to run KIF tests.
6. Select <code>HelloTDDiOS</code> run configuration to run the sample app.

[1]: http://www.youtube.com/watch?v=25RdRdiw2Uo
[2]: https://github.com/allending/Kiwi
[3]: https://github.com/square/KIF
