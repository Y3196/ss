$(function(){
    //给更改密码添加submit事件
    $("form").submit(function(){
        return forget();
    });
});
//更改密码方法
function forget(){
    var loginName=$("#inputName").val();
    var phone=$("#inputPhone").val();
    var qq=$("#inputQq").val();
    var password=$("#inputPassword").val();
    var password1=$("#inputPassword1").val();
    $.ajax({
        url:basePath+"user/forget",
        type:"post",
        data:{
            "loginName":loginName,
            "phone":phone,
            "qq":qq,
            "password":password,
            "password1":password1
        },
        dataType:"json",
        success:function(result){
            if(result.status==1){
                //更改成功
                window.location.href="login.html";
            }else if(result.status==0){
                alert(result.message);
            }
        },
        error:function(){
            alert("请求失败!!");
        }
    });
    return false;
}