import 'ColorError.dart';

void catchError() {
  print('starting...');

  try {
    print('trying...');
    test a;
    print('test: $test');
  }
  catch(e) {
    print('Error: ' + e.toString());
  }
  finally {
    print('done!');
  }
}

void raiseError(int a, int b) {
  try {
    //throw an error
    if(a != b) throw 'not the same!!!';
  }
  catch(e) {
    //do something
    print('something went boom: ' + e.toString());
    a = b;
  }
  finally {
    print('complete');
  }
}

void internal() {
  throw 'nope';
}
void outter() {
  try {
    internal();
  }
  catch(e) {
    print('program failed!!!');
  }
}

enum Color {black, white, brown}
void cats(Color color) {
  try {
    if(color != Color.black) throw new ColorError('must be black!');
    print('pet the cat');

    cat a;
    print('testing $cat');
  }
  on ColorError catch(e) {
    print('you selected the wrong color');
  }
  catch(e) {
    print('Unknown Error: ' + e.toString());
  }
  finally {
    print('Done');
  }
}


main(List<String> arguments) {
  //catchError();
  //raiseError(1,2);
  //outter();

  cats(Color.black);
}
