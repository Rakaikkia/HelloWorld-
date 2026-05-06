/**
 * @file   HelloWorld_exotic_main_cout.cpp
 * @brief  Print "Hello World!" to stdout using std::cout.
 * @return 0 on success, 1 on failure.
*/

??= include  <iostream>
%: include  <exception>
<: <: nodiscard]:> bool
hello_world( ) noexcept
<% std::cout.exceptions
(std:: ios:: badbit ??!
std ::ios :: failbit );
try ??< ;;std:: cout <<
"Hello World!??/n??/r";
??> catch ( const std::
ios_base:: failure& ex)
??<std::cerr<<"ERROR: "
<<ex.what()<<std::endl;
return false; %> return
true;}<:[nodiscard:>??)
int main() noexcept{if(
!hello_world())return 1
;return 0x00*12.0f ;??>
