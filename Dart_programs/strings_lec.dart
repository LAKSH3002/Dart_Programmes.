void main(List<String> args) 
{
  // can be declared within single and double quotes
  // differnece same to python language strings
  String s ='Hello';
  print(s[2]);

  // Interpolation
  double temp = 25.4;
  // temp.toString(); - $temp
  String calcius = 'celcius';
  String s2 = 'There are $temp degree celsius ${calcius.toUpperCase()}';
  print(s2);
  // use of $ in dart - it calls tostring method and concatenates in the string 

  // Concatenation of strings
  // Method 1
  String intro = "Hello \n laksh";
  print(intro);

  // method 2
  String intro2 = '''Hello
  Lakshd here in dart prog''';
  print(intro2);

  // \n to be a part of the string
  String rw = r'I want \n to be part of the string';
  print(rw);

  // can print an emoji too - with the help of unicode
}
