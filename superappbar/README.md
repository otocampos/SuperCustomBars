<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->



A Flutter Package for  help you to customize AppBars or BottomNavigationBar 
## Features
Under, you can see the many shape types available in library.
Shapes in AppBar can be used in BottomBar as well and vice-versa.

<a href="https://drive.google.com/uc?id=1LxtbYkZsIR9gMMEv3f6IcaxwWTcszARF"><img src="https://drive.google.com/uc?id=1LxtbYkZsIR9gMMEv3f6IcaxwWTcszARF" style="width: 200px; max-width: 100%; height: auto" title="Click to enlarge picture" /></a>
<a href="https://drive.google.com/uc?id=193sDbrYajP9u6jqJPptF45SJF3DgWOa-"><img src="https://drive.google.com/uc?id=193sDbrYajP9u6jqJPptF45SJF3DgWOa-" style="width: 200px; max-width: 100%; height: auto" title="Click to enlarge picture" /></a>
<a href="https://drive.google.com/uc?id=1Fp2Wq49lvmnrGi5YMEu9J_b6rXVghv4R"><img src="https://drive.google.com/uc?id=1Fp2Wq49lvmnrGi5YMEu9J_b6rXVghv4R" style="width: 200px; max-width: 100%; height: auto" title="Click to enlarge picture" /></a>
<a href="https://drive.google.com/uc?id=1bYaGJROfyRg3logU9rjacOGJ_4uRPm-a"><img src="https://drive.google.com/uc?id=1bYaGJROfyRg3logU9rjacOGJ_4uRPm-a" style="width: 200px; max-width: 100%; height: auto" title="Click to enlarge picture" /></a>
<a href="https://drive.google.com/uc?id=1ppwEHgkQ2J-p2Mt-CdcWM71YIEIiCOz7"><img src="https://drive.google.com/uc?id=1ppwEHgkQ2J-p2Mt-CdcWM71YIEIiCOz7" style="width: 200px; max-width: 100%; height: auto" title="Click to enlarge picture" /></a>
<a href="https://drive.google.com/uc?id=1_cbQVxLufzGLTnv_-PB_XCEQBR_jrJxn"><img src="https://drive.google.com/uc?id=1_cbQVxLufzGLTnv_-PB_XCEQBR_jrJxn" style="width: 200px; max-width: 100%; height: auto" title="Click to enlarge picture" /></a>
<a href="https://drive.google.com/uc?id=1WutcdvbXYGRmf1TPLDUUJrHXord3Kcsh"><img src="https://drive.google.com/uc?id=1WutcdvbXYGRmf1TPLDUUJrHXord3Kcsh" style="width: 200px; max-width: 100%; height: auto" title="Click to enlarge picture" /></a>
<a href="https://drive.google.com/uc?id=1tD1_k_vhcq4YbODl1EKZ2BE-KJVG6gUE"><img src="https://drive.google.com/uc?id=1tD1_k_vhcq4YbODl1EKZ2BE-KJVG6gUE" style="width: 200px; max-width: 100%; height: auto" title="Click to enlarge picture" /></a>
<a href="https://drive.google.com/uc?id=1pp9wy1INVtkV1FD_dIUalw2vHfwQWiSy"><img src="https://drive.google.com/uc?id=1pp9wy1INVtkV1FD_dIUalw2vHfwQWiSy" style="width: 200px; max-width: 100%; height: auto" title="Click to enlarge picture" /></a>
<a href="https://drive.google.com/uc?id=1Yzx4Bm1EqCsgKeGYoVKNFjbkDXpStwpb"><img src="https://drive.google.com/uc?id=1Yzx4Bm1EqCsgKeGYoVKNFjbkDXpStwpb" style="width: 200px; max-width: 100%; height: auto" title="Click to enlarge picture" /></a>
<a href="https://drive.google.com/uc?id=1zCpWLgh_VMhFafiDOcS2SKKIQmwtl9-P"><img src="https://drive.google.com/uc?id=1zCpWLgh_VMhFafiDOcS2SKKIQmwtl9-P" style="width: 200px; max-width: 100%; height: auto" title="Click to enlarge picture"/></a>



## Getting started
```yaml
dependencies:
super_custom_bar: ^1.0.0
```

## Usage

```dart
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: SuperCustomBar(
        flutterAppBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.amber[800],
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.blue,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.grade),
                label: 'Level',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notification',
              ),

            ]),
        customPaint: Paint()
          ..color = Colors.black,
        shapeType: SuperCustomBarTypes.shapeTopMultipleFringe,
        customHeight: 125,
      ),
      appBar: SuperCustomBar(
        customHeight: 75,
        customPaint:

        Paint()
          ..shader = ui.Gradient.linear(
              Offset(MediaQuery.of(context).size.width / 6,
                  MediaQuery.of(context).size.height / 8),
              Offset(MediaQuery.of(context).size.width,
                  MediaQuery.of(context).size.height / 55),
              [Colors.green, Colors.red]),
        shapeType: SuperCustomBarTypes.shapeBottomMultipleFringe,
        flutterAppBar: AppBar(
          leading: const BackButton(
            color: Colors.white, // <-- SEE HERE
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Container(
              alignment: Alignment.center, // Center align
              child: Text('your title here ',
                  style: TextStyle(fontSize: 24))),
          centerTitle: true,

          actions: [
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
              },
            ),
          ],
        ),
      ),
      body: const TabBarView(
        children: [
          Icon(Icons.directions_car),
          Icon(Icons.directions_transit),
          Icon(Icons.directions_bike),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(

        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }


```

## Additional information
Temporally in this version, for that library works, is needed to set default appbar with background = TRANSPARENT
and elevation = 0  <br />
To contribute access : https://github.com/otocampos/SuperCustomBar