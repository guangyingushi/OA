<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
<!--   <meta http-equiv="X-UA-Compatible" content="IE=edge" > -->
  <!-- ===============更改标题=============== -->
  <title>第二组OA 2 | Dashboard</title>
  <jsp:include page="head.jsp"></jsp:include>
</head>

<body class="hold-transition skin-blue sidebar-mini">
<div class="content-wrapper">
  
<!-- /.col --><!-- 功能显示开始 -->
        <div id="content">
          <h2>部门管理</h2>
           <h5><strong>操作说明</strong></h5>
             <div class="accordion">

                <h3>模块说明</h3>
                <div>
                  <p>人事管理模块-部门管理-该页面用来添加新的部门</p>
                </div>
                
                <h3>操作介绍</h3>
                <div>
                  <p>[我要提交] -该方案用来提交用户的表单信息</p>
                    <p>[重置] -该方案用来重置用户的表单信息</p>
                    <p>[修改] -该方案用来修改部门信息</p>
                    <p>[删除] -该方案用来删除部门信息</p>
                </div>                           

      </div>
             <div class="cleaner"></div>
         <br/> <br/> <br/>
        
  
        
        <h5><strong>部门操作</strong></h5>
        <div id="contact_form">
               <form method="post" name="contact" action="#">
            
                    <label for="email">我的部门名  ?</label> 
                    <input type="text" id="email" name="email" class="validate-email required input_field" /><em style="color:#F00">&nbsp;*</em>
                    <div class="cleaner h10"></div>
                        
                    <label for="subject">所属机构 ?</label> 
                    <select class="input_field">
                      <option>-这还是默认的(旭阳科技)</option>
                      <option>北大青鸟集团</option>
                        <option>中国科学院声学研究所</option>
                    </select>
                    <div class="cleaner h10"></div>
                    <label for="email">部门负责人  ?</label> 
                    <select class="input_field">
                      <option>-这还是默认的(未指定)</option>
                      <option>张三</option>
                        <option>李四</option>
                    </select>
                    <div class="cleaner h10"></div>
                    <label for="email">我的联系电话  ?</label> 
                    <input type="text" id="email" name="email" class="validate-email required input_field" /><em style="color:#F00">&nbsp;*</em>
                    <div class="cleaner h10"></div>
                    <label for="email">我的移动电话  ?</label>
                     <input type="text" id="email" name="email" class="validate-email required input_field" /><em style="color:#F00">&nbsp;*</em>
                    <div class="cleaner h10"></div>
                    <label for="email">我的传真  ?</label>
                     <input type="text" id="email" name="email" class="validate-email required input_field" /><em style="color:#F00">&nbsp;*</em>
                    <div class="cleaner h10"></div>
                    
                      
          <input type="submit" value="我要提交" id="submit" name="submit" class="submit_btn float_l" />
          <input type="reset" value="重置" id="reset" name="reset" class="submit_btn float_r" />
          
                </form>
                </div>
                <div class="cleaner"></div>
            <br/> <br/> <br/>
        
        <h5><strong>部门列表</strong></h5>
        <table width="700px" cellspacing="0" cellpadding="5">
                      <tr bgcolor="#CCCCCC">
                        <th width="60" align="left"><input id="chk_SelectALL" type="checkbox"  />全选</th> 
                            <th width="30" align="left">编号</th> 
                          <th width="100" align="left">部门名称</th> 
                          <th width="137" align="left">机构</th> 
                            <th width="115" align="left">负责人</th>
                            <th width="150" align="left">操作</th>
                      </tr>
                      <tr>
                          <td><input name="selectSub"   type="checkbox" /></td> 
                          <td><a href="#">1</a></td> 
                            <td>财务部</td>
                            <td>北大青鸟集团</td>
                            <td>系统管理员</td>
                            <td><a href="#" class="more">编辑</a>&nbsp;<a href="#" class="more">删除</a></td>
            </tr>
                        <tr>
                          <td><input name="selectSub"   type="checkbox" /></td> 
                          <td><a href="#">2</a></td> 
                            <td>财务部</td>
                            <td>北大青鸟集团</td>
                            <td>系统管理员</td>
                            <td><a href="#" class="more">编辑</a>&nbsp;<a href="#" class="more">删除</a></td>
            </tr>
                        <tr>
                          <td><input name="selectSub"   type="checkbox" /></td> 
                          <td><a href="#">3</a></td> 
                            <td>财务部</td>
                            <td>北大青鸟集团</td>
                            <td>系统管理员</td>
                            <td><a href="#" class="more">编辑</a>&nbsp;<a href="#" class="more">删除</a></td>
            </tr>
                        <tr>
                          <td><input name="selectSub"   type="checkbox" /></td> 
                          <td><a href="#">4</a></td> 
                            <td>财务部</td>
                            <td>北大青鸟集团</td>
                            <td>系统管理员</td>
                            <td><a href="#" class="more">编辑</a>&nbsp;<a href="#" class="more">删除</a></td>
            </tr>
                        <tr>
                          <td><input name="selectSub"   type="checkbox" /></td> 
                          <td><a href="#">5</a></td> 
                            <td>财务部</td>
                            <td>北大青鸟集团</td>
                            <td>系统管理员</td>
                            <td><a href="#" class="more">编辑</a>&nbsp;<a href="#" class="more">删除</a></td>
            </tr>

                        <tr>
                          <td colspan="6" align="right"  height="40px">
                              &nbsp;<a href="#" class="more float_l">删除选中</a>
                              <a href="#" class="more">首页</a>&nbsp;<a href="#" class="more">上一页</a>&nbsp;【1/15】&nbsp;<a href="#" class="more">下一页</a>&nbsp;<a href="#" class="more">末页</a>
                            </td>
    
            </tr>
          </table>
    </div>
    <jsp:include page="foot.jsp"></jsp:include>
</body>
</html>