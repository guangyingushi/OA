<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>[OA] 办公自动化 - 系统管理 - 守则页</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="../css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../css/ddsmoothmenu.css" />

<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/ddsmoothmenu.js"></script>
<script type="text/javascript" src="../scripts/function.js"></script>
<script type="text/javascript" src="../js/select.js"></script>
<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "templatemo_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>
<script language="javascript" type="text/javascript">
function clearText(field)
{
	if (field.defaultValue == field.value) field.value = '';
	else if (field.value == '') field.value = field.defaultValue;
}
</script>

<link href="../css/stylesheets.css" rel="stylesheet" type="text/css" />
	<script type='text/javascript' src='../js/plugins/jquery/jquery-1.9.1.min.js'></script>
    <script type='text/javascript' src='../js/plugins/jquery/jquery-ui-1.10.1.custom.min.js'></script>
    <script type='text/javascript' src='../js/plugins/jquery/jquery-migrate-1.1.1.min.js'></script>

    <script type='text/javascript' src='../js/plugins/bootstrap/bootstrap.min.js'></script>   
    
     <script type='text/javascript' src="../js/plugins/uniform/jquery.uniform.min.js"></script>         
	<script type='text/javascript' src='../js/plugins/other/faq.js'></script>
    
    <script type='text/javascript' src='../js/plugins.js'></script>
</head>

<body id="subpage">
<div id="templatemo_wrapper">
	<div id="templatemo_header">
    	<div id="site_title"><h1></h1></div>
        
        <div id="header_right">
           <div id="templatemo_search">
                <form action="#" method="get">
                  <input type="text" value="搜索关键字" name="keyword" id="keyword" title="请输入搜索的关键字" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
                  <input type="submit" name="Search" value="" alt="Search" id="searchbutton" title="Search" class="sub_btn"  />
                </form>
            </div>
         </div> <!-- END -->
    </div> <!-- END of header -->
    
    <div id="templatemo_menu" class="ddsmoothmenu">
    <script type="text/javascript">
            function toolbar(el){
                el = typeof el == 'string' ? document.getElementById(el) : el;
                var elTop = el.offsetTop;
                var sTop = 0;
                window.onscroll = function(){
                    sTop = document.body.scrollTop || document.documentElement.scrollTop;
                    if( sTop > elTop ){
                        el.style.top = sTop + 'px';
                    }else{
                        el.style.top = elTop + 'px';
                    }
                }
            }
            toolbar('templatemo_menu');
        </script>
          <ul>
            <li><a href="../main.html"  >首页</a></li>
            
            <li><a>人事管理</a>
                <ul>
                    <li><a href="../rsmgr/pers_company.html">机构管理</a></li>
                    <li><a href="../rsmgr/pers_department.html">部门管理</a></li>
                    <li><a href="../rsmgr/pers_staff.html">员工管理</a></li>
                    <li><a href="../rsmgr/pers_post.html">调动管理</a></li>
                    <li><a href="../rsmgr/pers_address.html">通讯录管理</a></li>
              </ul>
            </li>
            <li><a>日程管理</a>
                <ul>
                    <li><a href="../rcmgr/sch_personal.html">我的日程</a></li>
                    <li><a href="../rcmgr/sch_section.html">部门日程</a></li>
                    <li><a href="../rcmgr/sch_node.html">我的便签</a></li>
              </ul>
            </li>
             <li><a>申报管理</a>
                <ul>
               		 <li><a href="../sbmgr/sb_apply.html">我的申请</a></li>
                     <li><a href="../sbmgr/sb_apply_list.html">申请管理</a></li>
              </ul>
             <li><a>文档管理</a>
                <ul> 
                    <li><a href="../wdmgr/doc_settle.html">文档整理</a></li>
                    <li><a href="../wdmgr/doc_recover.html">回收站</a></li>
                    <li><a href="../wdmgr/doc_search.html">文件搜索</a></li>
              </ul>
            </li>
             <li><a>考勤管理</a>
                <ul>
                	<li><a href="../kqmgr/cw_add.">我要请假</a></li>
                	<li><a href="../kqmgr/cw_info.html">假期管理</a></li>
                    <li><a href="../kqmgr/cw_count.html">考勤统计</a></li>
                    <li><a href="../kqmgr/cw_personal.html">出勤记录</a></li>
              </ul>
            </li>
            <li><a>邮件传递</a>
                <ul>
               		 <li><a href="../xxmgr/message_mail.html">我的信箱</a></li>
                    <li><a href="../xxmgr/message_mgr.html">邮件管理</a></li>
              </ul>
            </li>  
            
            <li><a>授权管理</a>
                <ul>
                	<li><a href="../sqmgr/power_look.html">我的权限</a></li>
                    <li><a href="../sqmgr/power_mgr.html">权限设定</a></li>
                    <li><a href="../sqmgr/power_give.html">权限分配</a></li>
              </ul>
            </li>
            <li><a class="selected">系统管理</a>
                <ul>
                	<li><a href="adver_mgr.html">公告管理</a></li>
                    <li><a href="log_login.html">登录日志</a></li>
                    <li><a href="log_operate.html">操作日志</a></li>
                    <li><a href="rules_mgr.html">守则管理</a></li>
              </ul>
            </li>
            <li><a href="../about.html">关于</a> </li>
           
        </ul>
        <br style="clear: left" />
    </div> <!-- end of templatemo_menu -->
    <div class="cleaner h20"></div>
    <div id="templatemo_main_top"></div>
    <div id="templatemo_main">
    	
        <div id="sidebar">
        	<br/>
         	<h3><strong>公司公告</strong></h3>
             <div id="dome" onMouseOver="over()" onMouseOut="may()">
            <div id="dome1">
             <ul class="sidebar_menu">
			    <li><a href="#">1.为什么</a></li>
                <li><a href="#">2.怎么做</a></li>
                <li><a href="#">3.</a></li>
                <li><a href="#">4.</a></li>
                <li><a href="#">5.</a></li>
                <li><a href="#">6.</a></li>
			</ul>
            </div>
            <div id="dome2"></div>
            </div>
            <br/><br/>
            
        	<h3><strong>个人信息</strong></h3>
            <div>
            	<img src="../../../资源文件/页面模板/images/default.png" style="float:left; border:#666 solid 2px; margin-right:10px;" />
                <p>-<strong>工号</strong>： 20130001</p>
                <p>-<strong>用户名</strong>：张三</p>
                <p>-<strong>角色</strong>：管理员</p>
                
                <p>-<strong>部门职位</strong>：项目部 | 项目经理</p>
                <p>-<strong>收信箱</strong>: <a href="#">20</a> , 未读信息: <a href="#">10</a></p>
                <p>-<strong>个人资料信息</strong>： [<a href="#">查看</a>]  [<a href="#">修改</a>]</p>
                <p>-<strong>状态</strong>： [<a href="#">已签到</a>]  [<a href="#">未签退</a>]</p>
                 <div id="newsletter" style=" float:left">
                  <input type="submit" name="subscribe" value="注销" alt="Subscribe" id="subscribebtn" title="Subscribe" class="subscribebtn" style="border-right:#FFF solid 2px;" />
                  <input type="submit" name="subscribe" value="安全" alt="Subscribe" id="subscribebtn" title="Subscribe" class="subscribebtn" style="border-right:#FFF solid 2px;" />
                   <input type="submit" name="subscribe" value="签退" alt="Subscribe" id="subscribebtn" title="Subscribe" class="subscribebtn"  style="border-right:#FFF solid 2px;"/>
                <input type="submit" name="subscribe" value="签到" alt="Subscribe" id="subscribebtn" title="Subscribe" class="subscribebtn more" style="border-right:#FFF solid 2px;" />
                        
                </div>
    			<div class="cleaner"></div>
            </div>
            
            <h3><strong>技术支持</strong></h3>
            <p>技术支持 QQ:</p>
            <p>--435433902</p>
            <p>--2263163423</p>
            <p>*现在有问题,联系我..</p>
            <div id="newsletter">
                <form action="#" method="get">
                  <input type="text" value="客服QQ" name="email_newsletter" id="email_newsletter" title="请输入客服的QQ" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
                  <input type="submit" name="subscribe" value="开始交谈" alt="Subscribe" id="subscribebtn" title="Subscribe" class="subscribebtn"  />
                </form>
                <div class="cleaner"></div>
            </div>
            
           	<h3>管理规定</h3>
            <p>--非管理员请勿对数据删除操作</p>
            <p>--按照公司规定对数据操作</p>
            <p>--不得随意更改敏感数据</p>
            
        </div> <!-- END of sidebar -->
       
        <div id="content">
        
        <h2>员工守则</h2>
        <h5><strong>操作说明</strong></h5>
        <div class="accordion">

                <h3>模块说明</h3>
                <div>
                	<p>系统管理模块-员工守则-该页面显示员工守则信息</p>
                </div>
                
                <h3>操作介绍</h3>
                <div>
                	<p>[<button class="btn tip" ><span class="icon-chevron-down icon-white"></span></button>] -该方案用来展示所有分组中的员工守则</p>
                    <p>[<button class="btn tip"><span class="icon-chevron-up icon-white"></span></button>] -该方案用来关闭所有分组中的员工守则</p>
                </div>                           

 			</div>
         <div class="cleaner"></div>
         <br/> <br/> <br/>
         <h5><strong>员工守则</strong></h5>
         <div class="block">
                            <div class="toolbar">
                                <div class="right tar">
                                    <div class="btn-group">
                                        <button class="btn tip" id="faqOpenAll" data-original-title="展开所有"><span class="icon-chevron-down icon-white"></span></button>
                                        <button class="btn tip" id="faqCloseAll" data-original-title="关闭所有"><span class="icon-chevron-up icon-white"></span></button>
                                    </div>
                                </div>                        
                            </div>

                            <div class="data-fluid faq">
                                <div class="item" id="faq-1">
                                    <div class="title">员工日常行为规范守则</div>
                                    <div class="text">
                                    	（一）准时上下班，对所担负的工作争取时效，不拖延不积压。<br />
                                        （二）服从上级指挥，如有不同意见，应婉转相告或以书面陈述，一经上级主管决定，应立即遵照执行。<br />
                                        （三）尽忠职守，保守业务上的秘密。<br />
                                        （四）爱护本公司财物，不浪费，不化公为私。　<br />
                                        （五）遵守公司一切规章及工作守则。　<br />
                                        （六）保持公司信誉，不作任何有损公司信誉的行为。　<br />
                                        （七）注意本身品德修养，切戒不良嗜好。<br />
                                        （八）不私自经营与公司业务有关的商业或兼任公司以外的职业。<br />
                                        （九）待人接物要态度谦和，以争取同仁及顾客的合作。<br />
                                        （十）严谨操守，不得收受与公司业务有关人士或行号的馈赠、贿赂或向其挪借款项。<br />
                                    </div>
                                </div>

                                <div class="item" id="faq-2">
                                    <div class="title">员工请假规定守则</div>
                                    <div class="text">
                                    	（一）病假──因病须治疗或休养者可请病假，每年累计不得超过３０天，可以未请事假及特别休假抵充逾期仍未痊愈的天数，即予停薪留职，但以１年为限。<br />
                                        （二）事假──因私事待理者，可请事假，每年累计不得超过１４天，可以特别休假抵充。<br />
                                        （三）婚假──本人结婚，可请婚假3天，晚婚者加10天，子女结婚可请2天。<br />
                                        （四）丧假──祖父母、父母或配偶丧亡者，可请丧假８天；外祖父母或配偶之承重祖父母、父母或子女丧亡者，可请丧假。<br />
                                        （五）产假──女性从业人员分娩，可请产假９０天（假期中之星期例假均并入计算）。　<br />
                                        （六）公假──因参加政府举办之资格考试（不以就业为前提者）、征兵及参加选举者，可请公假，假期依实际需要情况决定。<br />
                                        （七）公伤假──因公受伤可请公伤假，假期依实际需要情况决定。　
                                    </div>
                                </div>

                                <div class="item" id="faq-3">
                                    <div class="title">特别休假规定守则</div>
                                    <div class="text">
                                    	（一）工作满１年以上未满３年者，每年７日。　<br />
                                        （二）工作满３年以上未满５年者，每年１０日。<br />
                                        （三）工作满５年以上未满１０年者，每年１４日。<br />
                                        （四）工作满１０年以上者,每满１年加给１日,但休假总数不得超过３0日。第十六条特别休假，应在不妨碍工作之范围内，由各部门就业务情况排定每人轮流休假日期后施行。如因工作需要，得随时令其销假工作，等工作完毕公务较闲时，补足其应休假期。但如确因工作需要，至年终无法休假者，可按未休日数，计发其与薪水相同的奖金。
                                    </div>
                                </div>
                                                         
                            </div>                    

                        </div>
        <div class="cleaner"></div>
		</div>
        <div class="cleaner"></div>
    </div> <!-- END of main -->
    
   <div id="templatemo_footer">
        <div class="col col_13 no_margin_right">
        	<p>- [<strong>OneMax</strong>]</p>
            <p>- [<strong>细节</strong>]决定成败 | 个人小胜,[<strong>团队</strong>]大胜</p>
            <p>- 无[<strong>规范</strong>],不成方圆 | 成功的合作在于[<strong>沟通</strong>]</p>
        </div>
        
        <div class="cleaner h40"></div>
		<center>
			Copyright © 2048 OneMax | <a href="#" target="_parent">OfficeAuto [OA] </a> by <a href="#" target="_parent">旭阳科技</a>
		</center>
    </div> <!-- END of footer -->   
    </div>
    
    <div class="data" style="position:fixed; bottom:10px; right:20px; z-index:10;" >
         <button class="btn tip" title="该方案用于返回该页面顶部">顶部</button> 
         <button class="btn tip" title="该方案用于快速查看公告">公告</button> 
         <button class="btn tip" title="该方案用于快速查看信箱">邮箱</button> 

     </div>
     
     <div class="data " style="position:fixed; bottom:10px; left:20px; z-index:10;" >
         <button class="btn tip" title="当前时间: 2013-02-20 14:24 星期五">当前时间</button> 
         <button class="btn tip" title="该方案用于快速查看通讯录" id="jDialog_default_button">通讯录</button> 
     </div>
    
     <div class="dialog" id="jDialog_default" style="display: none; z-index:5;" title="公司通讯录">
     		<p><em>*&nbsp; [部门] 职位-姓名-联系电话</em></p>
            <ul class="sidebar_menu">
			    <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
                <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
                <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
                <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
                <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
                <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
                <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
                <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
                <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>
                <li><strong>[项目部]</strong> 部门经理-张三-13213052102</li>  
			</ul>
        </div>
    
    </body>
</html>