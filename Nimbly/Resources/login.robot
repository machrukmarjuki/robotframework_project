*** Setting ***
Library                     Selenium2Library
Resource                    ../Resources/resource.robot

*** Keywords ***

Input Email
    Input text                              id:input_username_login                ${EMAIL}
Input Invalid Email
    Input Text                              id:input_username_login                ${INVALIDEMAIL}
Input Password
    Input text                              id:input_pwd_login                     ${PASSWORD}
Input Invalid Password
    Input Text                              id:input_pwd_login                     ${INVALIDPASSWORD}
Click Login Button
    Click element                           id:btn_login
Verify Invalid Email
    Wait Until Page Contains                Error: Email address was not found. Please try again.
    Page Should Contain                     Error: Email address was not found. Please try again.
Verify Invalid Password
    Wait Until Page Contains                Error: Incorrect password. Please try again
    Page Should Contain                     Error: Incorrect password. Please try again
Click Forgot Password Link
    Click Element                           ${Button_ForgotPassword}
Input Email Forgot Password
    Input Text                              id:input_email_forgot_pwd               ${EMAIL}
Click Submit Button
    Click Element                           id:btn_submit
Verify Password Request Successfully Sent
    Wait Until Page Contains                Password request successfully sent. Please check your email.
    Page Should Contain                     Password request successfully sent. Please check your email.
Click Return to Login
    Click Element                           id:link_forgot_return
    Wait Until Element is Visible           id:input_username_login



#Test Case Templates
Valid Login
   Input Email
   Input Password
   Click Login Button

Login with Invalid Password
   Input Email
   Input Invalid Password
   Click Login Button
   Verify Invalid Password

Login with Invalid Email
   Input Invalid Username
   Input Password
   Click Submit Button
   Verify Invalid Email

Forgot Password
   Click Forgot Password Link
   Input Email Address
   Click Submit Button
   Verify Password Request Successfully Sent
   Click Return to Login




