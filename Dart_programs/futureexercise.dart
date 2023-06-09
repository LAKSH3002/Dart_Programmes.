import 'dart:io';
Future<void> reportUserRole() async // of no return type
{
  var username = await fetchRole();
  //return 'user role: $username';
  print(username);
}

Future<String> reportLogins() async // of return type string
{
  var Logins = await fetchLoginAmount();
  return 'Total number of logins: $Logins';
}

Future<String> fetchRole() 
{
String userRole = 'Developer';
return Future(() => 'User role is : $userRole');
}

Future<int> fetchLoginAmount()
{
int n = 10;
return Future(() => n);
}
void main(List<String> args) {
  reportUserRole();
  reportLogins();
}
