abstract class AuthStates
{

}
class InitAuthState extends AuthStates
{

}

//PhoneAuth
class PhoneAuthLoading extends AuthStates
{

}
class PhoneAuthSuccess extends AuthStates
{
String phone;
PhoneAuthSuccess(this.phone);
}
class PhoneAuthFailed extends AuthStates
{

}
//Otp
class OtpSuccess extends AuthStates
{

}
class OtpFailed extends AuthStates
{
final String error;
OtpFailed(this.error);
}
class OtpLoading extends AuthStates
{

}

