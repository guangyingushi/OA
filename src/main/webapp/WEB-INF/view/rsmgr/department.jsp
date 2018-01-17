
<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%String path=request.getContextPath(); %>
<!-- <embed type="text/html" src="../../index.html" /> -->
<!-- <Iframe src="/Users/Administrator/Desktop/AdminLTE-master/bower_components/bootstrap/dist/css/bootstrap.min.css"; width="1002" height="1002" scrolling="no" frameborder="0"></iframe> -->
<!DOCTYPE html>
<html>
<head>
	
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- ===============更改标题=============== -->
  <title>第二组OA 2 | Dashboard</title>
  <jsp:include page="../head.jsp"></jsp:include>
  



<!-- ==========================================主显示区=========================================== -->








  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
  <!-- ========导航栏模块======= -->
  <section class="content-header">
      <h1>
        Data Tables
        <small>advanced tables</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li> 
        <li class="active">Data tables</li>
      </ol>
    </section>
   <!-- ==========模块说明模板============ -->
    <div class="row" style="margin-left: 5px;  ">
      <h2 class="page-header" style="margin-left:50px; width:1500px">员工信息详情</h2>
        <div class="col-md-6" style="width:1500px">
          <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Collapsible Accordion</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="box-group" id="accordion">
                <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                <div class="panel box box-primary">
                  <div class="box-header with-border">
                    <h4 class="box-title">
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                        Collapsible Group Item #1
                      </a>
                    </h4>
                  </div>
                  <div id="collapseOne" class="panel-collapse collapse in">
                    <div class="box-body">
                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
                      wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                      eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
                      assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
                      nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                      farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus
                      labore sustainable VHS.
                    </div>
                  </div>
                </div>
                <div class="panel box box-danger">
                  <div class="box-header with-border">
                    <h4 class="box-title">
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                        Collapsible Group Danger
                      </a>
                    </h4>
                  </div>
                  <div id="collapseTwo" class="panel-collapse collapse">
                    <div class="box-body">
                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
                      wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                      eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
                      assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
                      nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                      farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus
                      labore sustainable VHS.
                    </div>
                  </div>
                </div>
                <div class="panel box box-success">
                  <div class="box-header with-border">
                    <h4 class="box-title">
                      <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                        Collapsible Group Success
                      </a>
                    </h4>
                  </div>
                  <div id="collapseThree" class="panel-collapse collapse">
                    <div class="box-body">
                      Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3
                      wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum
                      eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla
                      assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred
                      nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer
                      farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus
                      labore sustainable VHS.
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
  </div>











  <!-- =========列表模板=========== -->
    <!-- Content Header (Page header) -->
    

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">部门列表 Date</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
              <!-- 遍历循环传递数据 -->
              <!-- ============表头============= -->
                <thead>
                <tr>
                  <th>编号</th>
                  <th>姓名</th>
                  <th>性别</th>
                  <th>部门/职位</th>
                  <th>状态</th>
                  <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td>1001</td>
                  <td>潘长江</td>
                  <td>男</td>
                  <td> 火星情报全局/局长</td>
                  <td>在职</td>
                  <td>
                    <div class="btn-group">
                      <button type="button" class="btn btn-info"><a href="/Users/Administrator/Desktop/AdminLTE-master/pages/examples/register2.html" ><font color=FFFFFF>添加</a></button>
                      <button type="button" class="btn btn-info"><a href="#" ><font color=FFFFFF>修改</a></button>
                      <button type="button" class="btn btn-info"><a href="#" ><font color=FFFFFF>删除</a></button>
                    </div>                   
                  </td>
                </tr>
                
                </tfoot>

              </table>
            </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- ==========================分页====================== -->
  <!-- /.content-wrapper -->
  
<!-- ./wrapper -->
<!-- =============================分页的CSS=================================== -->
 <jsp:include page="../foot.jsp"></jsp:include>
<script>
  $(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script>

</body>
</html>
