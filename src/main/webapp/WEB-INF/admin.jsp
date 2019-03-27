<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ch">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="会议室管理系统管理员页面">
	<meta name="keywords" content="会议室 管理 ">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta name="format-detection" content="telephone=no">
	<link rel="shortcut icon" href="../../static/images/ai.jpg" media="screen">
	<title>后台-超级管理员</title>
	<script src="../../static/js/jquery.min.js"></script>
	<script src="../../static/js/bootstrap.min.js"></script>
	<script>
		$(function() {
			$(".meun-item").click(function() {
				$(".meun-item").removeClass("meun-item-active");
				$(this).addClass("meun-item-active");
				var itmeObj = $(".meun-item").find("img");
				itmeObj.each(function() {
					var items = $(this).attr("src");
					items = items.replace("_grey.png", ".png");
					items = items.replace(".png", "_grey.png")
					$(this).attr("src", items);
				});
				var attrObj = $(this).find("img").attr("src");
				;
				attrObj = attrObj.replace("_grey.png", ".png");
				$(this).find("img").attr("src", attrObj);
			});
			$("#topAD").click(function() {
				$("#topA").toggleClass(" glyphicon-triangle-bottom");
			});
			$("#topBD").click(function() {
				$("#topB").toggleClass(" glyphicon-triangle-bottom");
			});
			$("#topCD").click(function() {
				$("#topC").toggleClass(" glyphicon-triangle-bottom");
			});
			$("#topDD").click(function() {
				$("#topD").toggleClass(" glyphicon-triangle-bottom");
			});
			$(".toggle-btn").click(function() {
				$("#leftMeun").toggleClass("show");
				$("#rightContent").toggleClass("pd0px");
			})
		})
	</script>
	<!--[if lt IE 9]>
	<script src="../../static/js/html5shiv.min.js"></script>
	<script src="../../static/js/respond.min.js"></script>
	<![endif]-->
	<link href="../../static/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="../../static/css/common.css" />
	<link rel="stylesheet" type="text/css" href="../../static/css/slide.css" />
	<link rel="stylesheet" type="text/css" href="../../static/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="../../static/css/flat-ui.min.css" />
	<link rel="stylesheet" type="text/css" href="../../static/css/jquery.nouislider.css">
	<link rel="stylesheet" type="text/css" href="../../static/css/ownDefine.css">
</head>

<body>
<div id="wrap">

	<!-- 左侧菜单栏目块 -->
	<div class="leftMeun" id="leftMeun">

		<div id="logoDiv" style="background-color: #0c190f;">
			<p id="logoP"><img id="logo" alt="会议室管理系统" src="../../static/images/logo.png"><span></span></p>
		</div>
		<div id="personInfor">
			<p style="margin-left:30px;margin-bottom:5px;">欢迎您！</p>
			<p id="userName" style="margin-left:25px;margin-bottom:15px;color:#e66e79;"></p>
		</div>
		<div id ="accordion" style="padding-left:0px;">

			<!-- 会议室管理折叠 -->
			<div id="topAD" class="meun-title"  role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseMeeting" aria-expanded="true" aria-controls="collapseOne">
				<img class="leftitem" src="../../static/images/dianpu.png"><span style="padding-left:10px;">店铺管理</span><span id="topA" class="glyphicon glyphicon-triangle-right"></span>
			</div>
			<div id="collapseMeeting" class="collapse" aria-expanded="true">

				<div class="meun-item leftitem" id="addRoomDiv" href="#addRoomPane" aria-controls="addRoomPane" role="tab" data-toggle="tab"><img src="../../static/images/add_grey.png">新增店铺</div>

				<div class="meun-item leftitem" id="showRoomDiv" href="#showRoomPane" aria-controls="showRoomPane" role="tab" data-toggle="tab"><img src="../../static/images/search_grey.png">店铺操作</div>

			</div>

			<!-- 预约管理折叠 -->
			<div id="topBD" class="meun-title"  role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseBookedFunction" aria-expanded="true" aria-controls="collapseOne">
				<img class="leftitem" src="../../static/images/shenqing.png">
				<span style="padding-left:10px;">店铺审核</span>
				<span id="topB" class="glyphicon glyphicon-triangle-right"></span>
			</div>
			<div id="collapseBookedFunction" class="collapse " aria-expanded="true">
				<div class="meun-item leftitem" id = "nowBookedMenu" href="#showNowBookedPane" aria-controls="showNowBookedPane" role="tab" data-toggle="tab"><img src="../../static/images/icon_house_grey.png">当前未审核</div>
				<div class="meun-item leftitem" id = "historyBookedMenu" href="#showHistoryBookedPane" aria-controls="showHistoryBookedPane" role="tab" data-toggle="tab"><img src="../../static/images/icon_rule_grey.png">审核记录</div>
			</div>


			<!-- 用户管理折叠 -->
			<div id="topCD" class="meun-title"  role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseStaffFunction" aria-expanded="true" aria-controls="collapseOne">
				<span class="leftitem">用户管理</span><span id="topC" class="glyphicon glyphicon-triangle-right"></span>
			</div>
			<div id="collapseStaffFunction" class="collapse " aria-expanded="true">
				<div class="meun-item leftitem" id="showUsersMenu" href="#showStaffPane" aria-controls="showStaffPane" role="tab" data-toggle="tab"><img src="../../static/images/icon_house_grey.png">查看用户</div>
				<div class="meun-item leftitem" id="modifyPassM" href="#modifyPassword" aria-controls="modifyPassword" role="tab" data-toggle="tab"><img src="../../static/images/icon_rule_grey.png">修改密码</div>
			</div>


			<!-- 设备管理折叠 -->
			<div id="topDD" class="meun-title"  role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseDeviceFunction" aria-expanded="true" aria-controls="collapseOne">
				<span class="leftitem">设备管理</span><span id="topD" class="glyphicon  glyphicon-triangle-right"></span>
			</div>
			<div id="collapseDeviceFunction" class="collapse " aria-expanded="true">
				<div class="meun-item leftitem" id = "addDeviceMenu" href="#addDevicePane" aria-controls="addDevicePane" role="tab" data-toggle="tab"><img src="../../static/images/icon_house_grey.png">新增设备</div>
				<div class="meun-item leftitem" id = "modifyDeviceMenu" href="#modifyDevicePane" aria-controls="modifyDevicePane" role="tab" data-toggle="tab"><img src="../../static/images/icon_rule_grey.png">修改设备</div>
				<div class="meun-item leftitem" id = "showDeviceMenu" href="#showDevicePane" aria-controls="showDevicePane" role="tab" data-toggle="tab"><img src="../../static/images/icon_card_grey.png">查看设备</div>
			</div>
		</div>
		<p style="margin-bottom:5px;margin-left:45px;">
			<!-- 退出登录按钮 -->
			<button type="button" class="btn btn-default btn-sm" id = "exitLogin" style="background-color:#b8b98c;color:#ef6a7a;">退出</button>
		</p>
	</div>


	<!-- 右侧具体内容栏目 -->
	<div id="rightContent">
		<a class="toggle-btn" id="nimei">
			<i class="glyphicon glyphicon-align-justify"></i>
		</a>
		<!-- Tab panes -->
		<div class="tab-content">

			<!-- 新增会议室模块 -->
			<div role="tabpanel" class="tab-pane" id="addRoomPane">

				<div class="check-div">
					<button id = "addRoomBtn" class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addRoomPop">添加店铺</button>
				</div>
				<div class="data-div">

					<!--自己写table -->
					<table style="width:1240px;" id = "addRoomTable">
						<caption><div align="center" class="text-success">店铺信息</div></caption>
						<thead class="row tableHeader">
						<tr>
							<th style="width:10%;text-align: center;">店铺编号</th>
							<th style="width:10%;text-align: center;">店铺名称</th>
							<th style="width:10%;text-align: center;">店铺类型</th>
							<th style="width:19%;text-align: center;">店铺地址</th>
							<th style="width:31%;text-align: center;">店铺简介</th>
							<th style="width:10%;text-align: center;">管理员id</th>
							<th style="width:10%;text-align: center;">管理员名称</th>
						</tr>
						</thead>
						<tbody class="tablebody" id = "addRoomBody">
						<!--<tr>
                            <td>1</td>
                            <td>10001</td>
                            <td>100</td>
                            <td>椅子*120</td>
                            <td>椅子*120</td>
                            <td>椅子*120</td>
                            <td>椅子*120</td>
                        </tr> -->
						</tbody>
					</table>
				</div>

				<!--添加会议室弹出窗口-->
				<div class="modal fade" id="addRoomPop" role="dialog" aria-labelledby="gridSystemModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title">添加店铺</h4>
							</div>
							<div class="modal-body">
								<div class="container-fluid">
									<form class="form-horizontal">
										<div class="form-group ">
											<label for="storeName" class="col-xs-3 control-label">店铺名称：</label>
											<div class="col-xs-6 ">
												<input type="text" class="form-control input-sm duiqi" id="storeName" placeholder="">
											</div>
										</div>
										<div class="form-group ">
											<label for="storeType" class="col-xs-3 control-label">店铺类型：</label>
											<div class="col-xs-2">
												<select id="storeType" class="form-control input-sm duiqi">
													<option value="正餐">正餐</option>
													<option value="水果">水果</option>
													<option value="蛋糕">蛋糕</option>
													<option value="汉堡">汉堡</option>
													<option value="夜宵">夜宵</option>
													<option value="药">药</option>
													<option value="鲜花">鲜花</option>
													<option value="饮料">饮料</option>
													<option value="其他">其他</option>
												</select>
											</div>
										</div>
										<div class="form-group ">
											<label for="storePhone" class="col-xs-3 control-label">电话号码：</label>
											<div class="col-xs-6 ">
												<input type="text" class="form-control input-sm duiqi" id="storePhone" placeholder="">
											</div>
										</div>
										<div class="form-group ">
											<label for="storeAddress" class="col-xs-3 control-label">店铺地址：</label>
											<div class="col-xs-6 ">
												<input type="text" class="form-control input-sm duiqi" id="storeAddress" placeholder="">
											</div>
										</div>
										<div class="form-group ">
											<label for="storeDescription" class="col-xs-3 control-label">店铺简介：</label>
											<div class="col-xs-6 ">
												<input type="text" class="form-control input-sm duiqi" id="storeDescription" placeholder="">
											</div>
										</div>
										<div class="form-group ">
											<label for="adminName" class="col-xs-3 control-label">管理员：</label>
											<div class="col-xs-6 ">
												<input type="text" class="form-control input-sm duiqi" id="adminName" placeholder="">
											</div>
										</div>
									</form>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-xs btn-white" data-dismiss="modal" id ="cancelAddRoom">取 消</button>
								<button type="button" class="btn btn-xs btn-green" data-dismiss="modal" id = "confirmAddRoom">保 存</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
			</div>
			<!-- 新增会议室模块结束 -->

			<!-- 店铺操作模块 -->
			<div role="tabpanel" class="tab-pane" id="showRoomPane">

				<div class="check-div form-inline">
					<div class="col-xs-3">
						<input type="text" class="form-control input-sm" id = "storeIdSearch" placeholder="输入店铺号搜索">
					</div>
					<div class="col-xs-2">
						<select id="storeTypeSearch" class="form-control input-sm" placeholder="店铺类型">
							<option selected="selected" value=''>全部</option>
							<option value="正餐">正餐</option>
							<option value="水果">水果</option>
							<option value="蛋糕">蛋糕</option>
							<option value="汉堡">汉堡</option>
							<option value="夜宵">夜宵</option>
							<option value="药">药</option>
							<option value="鲜花">鲜花</option>
							<option value="饮料">饮料</option>
							<option value="其他">其他</option>
						</select>
					</div>
					<div class="col-xs-4">
						<input type="text" class="form-control input-sm" id = "storeNameSearch" placeholder="输入店铺名称搜索">
						<button class="btn btn-white btn-xs " id="searchStore" style="margin-left:40px;">查 询 </button>
					</div>
				</div>

				<div class="data-div">
					<!--自己写table -->
					<table style="width: 1240px;" class="table table-striped table-hover">
						<caption><div align="center" class="text-success" id = "storeTableTip">店铺信息查询结果</div></caption>
						<thead class="row tableHeader">
						<tr>
							<th style="width:10%;">店铺编号</th>
							<th style="width:10%;">店铺名称</th>
							<th style="width:10%;">店铺类型</th>
							<th style="width:14%;">店铺地址</th>
							<th style="width:34%;">店铺简介</th>
							<th style="width:7%;">总销量</th>
							<th style="width:5%;">详情</th>
							<th style="width:5%;">修改</th>
							<th style="width:5%;">删除</th>
						</tr>
						</thead>
						<tbody class="tablebody" id = "searchStoreBody">
						<!--<tr>
                            <td>1</td>
                            <td>10001</td>
                            <td>100</td>
                            <td>椅子*120</td>
                            <td>椅子*120</td>
                            <td>椅子*120</td>
                            <td>椅子*120</td>
                        </tr> -->
						</tbody>
					</table>
				</div>

				<!--点击详情弹出窗口-->
				<div class="modal fade" id="storeDetails" role="dialog" aria-labelledby="gridSystemModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title" id="storeDetailsPane">店铺详情</h4>
							</div>
							<div class="modal-body">
								<div class="container-fluid">
									<form class="form-horizontal">
										<div class="form-group ">
											<label for="storeName" class="col-xs-3 control-label">公交站：</label>
											<label id="storeDetailsbusStop" class="control-label"></label>
										</div>
										<div class="form-group ">
											<label for="storeName" class="col-xs-3 control-label">地铁站：</label>
											<label id="storeDetailsubwayStation" class="control-label"></label>
										</div>
										<div class="form-group ">
											<label for="storeName" class="col-xs-3 control-label">配送：</label>
											<label id="storeDetaildelivery" class="control-label"></label>
										</div>
										<div class="form-group ">
											<label for="storeName" class="col-xs-3 control-label">WiFi：</label>
											<label id="storeDetailwifi" class="control-label"></label>
										</div>
										<div class="form-group ">
											<label for="storeName" class="col-xs-3 control-label">时间：</label>
											<label id="storeDetailopenTime" class="control-label"></label>
										</div>
									</form>
								</div>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->

				<!--点击修改店铺弹出窗口-->
				<div class="modal fade" id="modifyStore" role="dialog" aria-labelledby="gridSystemModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title">请输入要修改的资料</h4>
							</div>
							<div class="modal-body">
								<div class="container-fluid">
									<form class="form-horizontal">
										<input type="hidden" class="form-control input-sm duiqi" id="ModifystoreId" placeholder="此时还没隐藏">
										<div class="form-group ">
											<label for="storeName" class="col-xs-3 control-label">店铺名称：</label>
											<div class="col-xs-6 ">
												<input type="text" class="form-control input-sm duiqi" id="ModifystoreName" placeholder="">
											</div>
										</div>
										<div class="form-group ">
											<label for="ModifystoreType" class="col-xs-3 control-label">店铺类型：</label>
											<div class="col-xs-2">
												<select id="ModifystoreType" class="form-control input-sm duiqi">
													<option value="正餐">正餐</option>
													<option value="水果">水果</option>
													<option value="蛋糕">蛋糕</option>
													<option value="汉堡">汉堡</option>
													<option value="夜宵">夜宵</option>
													<option value="药">药</option>
													<option value="鲜花">鲜花</option>
													<option value="饮料">饮料</option>
													<option value="其他">其他</option>
												</select>
											</div>
										</div>
										<div class="form-group ">
											<label for="storePhone" class="col-xs-3 control-label">电话号码：</label>
											<div class="col-xs-6 ">
												<input type="text" class="form-control input-sm duiqi" id="ModifystorePhone" placeholder="">
											</div>
										</div>
										<div class="form-group ">
											<label for="storeAddress" class="col-xs-3 control-label">店铺地址：</label>
											<div class="col-xs-6 ">
												<input type="text" class="form-control input-sm duiqi" id="ModifystoreAddress" placeholder="">
											</div>
										</div>
										<div class="form-group ">
											<label for="storeDescription" class="col-xs-3 control-label">店铺简介：</label>
											<div class="col-xs-6 ">
												<input type="text" class="form-control input-sm duiqi" id="ModifystoreDescription" placeholder="">
											</div>
										</div>
									</form>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-xs btn-white" data-dismiss="modal" id ="cancelModifyRoom">取 消</button>
								<button type="button" class="btn btn-xs btn-green" data-dismiss="modal" id = "confirmModifyRoom">修 改</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal点击修改店铺弹出窗口-->


				<!--点击删除店铺弹出窗口-->
				<div class="modal fade" id="deleteStore" role="dialog" aria-labelledby="gridSystemModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title">操作提示</h4>
							</div>
							<div class="modal-body">
								<div class="container-fluid">
									<form class="form-horizontal">
										<input type="hidden" class="form-control input-sm duiqi" id="DeletestoreId" placeholder="此时还没隐藏">
										<div class="form-group ">
											<label id="deleteStoreTip" style="text-align: left;font-size: 25px;font-weight: bold;color: red;" class="col-xs-10 control-label">确认要删除选择的数据吗？</label>
										</div>
									</form>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-xs btn-white" data-dismiss="modal" id ="cancelDeleteRoom">取 消</button>
								<button type="button" class="btn btn-xs btn-green" data-dismiss="modal" id = "confirmDeleteStore">删 除</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal点击删除店铺弹出窗口 -->

				<!--删除店铺处理结果-->
				<div class="modal fade" id="deleteStoreResult" role="dialog" aria-labelledby="gridSystemModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title">操作提示</h4>
							</div>
							<div class="modal-body">
								<div class="container-fluid">
									<form class="form-horizontal">
										<div class="form-group ">
											<label id="deleteStoreResultTip" style="text-align: left;font-size: 25px;font-weight: bold;color: red;" class="col-xs-10 control-label"></label>
										</div>
									</form>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-xs btn-green" data-dismiss="modal" id = "confirmDeleteStoreUpdate">确 认</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal删除店铺处理结果 -->

			</div>
			<!-- 店铺操作模块结束 -->

			<!-- 查看当前申请记录模块 -->
			<div role="tabpanel" class="tab-pane" id="showNowBookedPane">

				<div class="data-div">
					<!--自己写table -->
					<table style="width: 1240px;" class="table table-striped table-hover">
						<caption><div align="center" class="text-success">当前申请</div></caption>
						<thead class="row tableHeader">
						<tr>
							<th style="width:7%;text-align: center;">申请人</th>
							<th style="width:12%;text-align: center;">店铺名称</th>
							<th style="width:8%;text-align: center;">店铺类型</th>
							<th style="width:20%;text-align: center;">店铺地址</th>
							<th style="width:21%;text-align: center;">店铺简介</th>
							<th style="width:21%;text-align: center;">申请理由</th>
							<th style="width:7%;text-align: center;">先阅</th>
							<th style="width:7%;text-align: center;">通过</th>
							<th style="width:7%;text-align: center;">不通过</th>
						</tr>
						</thead>
						<tbody class="tablebody" id = "nowApplyBody">
						<!--<tr>
                            <td>1</td>
                            <td>10001</td>
                            <td>100</td>
                            <td>椅子*120</td>
                            <td>椅子*120</td>
                            <td>椅子*120</td>
                            <td>椅子*120</td>
                        </tr> -->
						</tbody>
					</table>
				</div>

				<!--超级管理员点击通过或不通过弹出处理框-->
				<div class="modal fade" id="adminPass" role="dialog" aria-labelledby="gridSystemModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title">审批</h4>
							</div>
							<div class="modal-body">
								<div class="container-fluid">
									<form class="form-horizontal">
										<input type="hidden" class="form-control input-sm duiqi" id="applyId" placeholder="此时还没隐藏">
										<input type="hidden" class="form-control input-sm duiqi" id="applyStatus" placeholder="此时还没隐藏">
										<label for="resultOpinion" class="col-xs-4 control-label">审批意见：</label>
										<div class="col-xs-6 ">
											<textarea rows="3" cols="20" type="text" class="form-control input-sm duiqi" id="resultOpinion" value="请输入审批意见">

											</textarea>
										</div>
									</form>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-xs btn-white" data-dismiss="modal" id ="adminNotPassApply">取 消</button>
								<button type="button" class="btn btn-xs btn-green" data-dismiss="modal" id = "adminPassApply">确 认</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal超级管理员点击通过或不通过弹出处理框结束 -->

				<!--超级管理员点击通过或不通过弹出处理框-->
				<div class="modal fade" id="firstDo" role="dialog" aria-labelledby="gridSystemModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title">查询结果</h4>
							</div>
							<div class="modal-body">
								<div class="container-fluid">
									<form class="form-horizontal">
										<div class="form-group ">
											<label id="firstDoResultTip" style="text-align: left;font-size: 25px;font-weight: bold;color: green;" class="col-xs-10 control-label"></label>
										</div>
									</form>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-xs btn-green" data-dismiss="modal">确 认</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.超级管理员点击通过或不通过弹出处理框结束 -->

			</div>
			<!-- 查看当前申请记录模块结束 -->

			<!-- 查看历史审核记录模块 -->
			<div role="tabpanel" class="tab-pane" id="showHistoryBookedPane">

				<div class="data-div">
					<!--自己写table -->
					<table style="width: 1240px;" class="table table-striped table-hover">
						<caption><div align="center" class="text-success">历史审核列表</div></caption>
						<thead class="row tableHeader">
						<tr>
							<th style="width:12%;text-align: center;">申请记录id</th>
							<th style="width:12%;text-align: center;">店铺名称</th>
							<th style="width:7%;text-align: center;">店铺类型</th>
							<th style="width:22%;text-align: center;">店铺地址</th>
							<th style="width:20%;text-align: center;">店铺简介</th>
							<th style="width:7%;text-align: center;">审核状态</th>
							<th style="width:20%;text-align: center;">审核意见</th>
						</tr>
						</thead>
						<tbody class="tablebody" id = "historyApplyBody">
						<!--<tr>
                            <td>1</td>
                            <td>10001</td>
                            <td>100</td>
                            <td>椅子*120</td>
                            <td>椅子*120</td>
                            <td>椅子*120</td>
                            <td>椅子*120</td>
                        </tr> -->
						</tbody>
					</table>
				</div>

			</div>
			<!-- 查看历史审核记录模块结束 -->

			<!-- 查看所有用户 -->
			<div role="tabpanel" class="tab-pane" id="showStaffPane">
				<div class="check-div form-inline">
					<div class="col-xs-3">
						<button class="btn btn-yellow btn-xs" >查看用户</button>
					</div>
					<div class="col-xs-4">
						<input type="text" class="form-control input-sm" placeholder="输入员工工号搜索">
						<button class="btn btn-white btn-xs ">查 询 </button>
					</div>
					<div class="col-lg-3 col-lg-offset-2 col-xs-4" style=" padding-right: 40px;text-align: right;">
						<label for="sortStaff">排序:&nbsp;</label>
						<select class=" form-control" id = "sortStaff">
							<option>工号升序</option>
							<option>工号降序</option>
							<option>级别</option>
						</select>
					</div>
				</div>
				<div class="data-div">
					<!--自己写table -->
					<table class = "table" id = "showStaffTable">
						<caption><div align="center" class="text-success" id = "modifyMeetingTableTip">员工详情</div></caption>
						<thead class="row tableHeader">
						<tr>
							<th class="col-xs-1">编号</th>
							<th class="col-xs-2">工号</th>
							<th class="col-xs-2">姓名</th>
							<th class="col-xs-2">部门</th>
							<th class="col-xs-2">职位</th>
							<th class="col-xs-3">手机</th>
						</tr>
						</thead>
						<tbody class="tablebody" id = "showStaffBody">
						<tr>
							<td>1</td>
							<td>10001</td>
							<td>陈祝林</td>
							<td>技术部</td>
							<td>渣渣实习生</td>
							<td>15627521030</td>
						</tr>
						</tbody>
					</table>
				</div>
			</div>


			<!-- 修改密码 模块-->
			<div role="tabpanel" class="tab-pane" id="modifyPassword">
				<div class="check-div">
					<!-- 原始密码为12312313 -->
					<!-- 用于显示用户修改密码操作结果 -->
					<div align="center"><span id="isTwoPassSame"></span></div>
				</div>
				<div style="padding: 50px 0;margin-top: 50px;background-color: #fff; text-align: right;width: 420px;margin: 50px auto;">
					<div class="form-horizontal">
						<div class="form-group">
							<label for="userId" class="col-xs-4 control-label">ID：</label>
							<div class="col-xs-5">
								<input type="text" class="form-control input-sm duiqi" id="userIdModifyP" placeholder="" style="margin-top: 7px;">
							</div>
						</div>
						<div class="form-group">
							<label for="sKnot" class="col-xs-4 control-label">新密码：</label>
							<div class="col-xs-5">
								<input type="password" class="form-control input-sm duiqi" id="newPassword1" placeholder="" style="margin-top: 7px;">
							</div>
						</div>
						<div class="form-group">
							<label for="sKnot" class="col-xs-4 control-label" >确认密码：</label>
							<div class="col-xs-5">
								<input type="password" class="form-control input-sm duiqi" id="defineNewPassword1" placeholder="" style="margin-top: 7px;">
							</div>
						</div>
						<div class="form-group text-right">
							<div class="col-xs-offset-4 col-xs-5" style="margin-left: 169px;">
								<button type="reset" class="btn btn-xs btn-white">取 消</button>
								<button type="submit" class="btn btn-xs btn-green" id = "modifyPassBtn">修改</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--修改密码模块结束(上面的div) -->


			<!-- 新增设备 模块开始-->
			<div role="tabpanel" class="tab-pane" id="addDevicePane">

				<div class="check-div">
					<button class="btn btn-yellow btn-xs" data-toggle="modal" data-target="#addDevicePop">添加设备</button>
				</div>
				<div class="data-div">

					<!--自己写table -->
					<table class = "table" id = "addDeviceTable">
						<caption><div align="center" class="text-success" id = "teachTableTip">设备信息</div></caption>
						<thead class="row tableHeader">
						<tr>
							<th class="col-xs-4">编号</th>
							<!-- <th class="col-xs-3">设备id</th> -->
							<th class="col-xs-4">设备名</th>
							<th class="col-xs-4">型号</th>
						</tr>
						</thead>
						<tbody class="tablebody" id = "addDeviceBody">
						<!-- <tr>
                           <td>1</td>
                           <td>00001</td>
                           <td>桌子</td>
                           <td>小米</td>
                        </tr> -->
						</tbody>
					</table>
				</div>

				<!--添加会议室弹出窗口-->
				<div class="modal fade" id="addDevicePop" role="dialog" aria-labelledby="gridSystemModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title" id="gridSystemModalLabel">添加设备</h4>
							</div>
							<div class="modal-body">
								<div class="container-fluid">
									<form class="form-horizontal">
										<div class="form-group ">
											<label for="deviceNameInput" class="col-xs-3 control-label">设备名：</label>
											<div class="col-xs-6 ">
												<input type="text" class="form-control input-sm duiqi" id="deviceNameInput" placeholder="">
											</div>
										</div>
										<div class="form-group ">
											<label for="deviceTypeInput" class="col-xs-3 control-label">型号：</label>
											<div class="col-xs-6 ">
												<input type="text" class="form-control input-sm duiqi" id="deviceTypeInput" placeholder="">
											</div>
										</div>
									</form>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-xs btn-white" data-dismiss="modal" id ="cancelAddDevice">取 消</button>
								<button type="button" class="btn btn-xs btn-green" data-dismiss="modal" id = "confirmAddDevice">保 存</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
			</div>


			<!-- 修改设备模块开始 -->
			<div role="tabpanel" class="tab-pane" id="modifyDevicePane">
				<div class="check-div form-inline">
					<div class="col-xs-3">
						<button class="btn btn-yellow btn-xs" >修改设备</button>
					</div>
					<div class="col-xs-4">
						<input type="text" class="form-control input-sm" placeholder="输入设备名搜索">
						<button class="btn btn-white btn-xs ">查 询 </button>
					</div>
				</div>
				<div class="data-div">
					<!--自己写table -->
					<table class = "table" id = "modifyDeviceTable">
						<caption><div align="center" class="text-success" id = "modifyMeetingTableTip">会议室信息</div></caption>
						<thead class="row tableHeader">
						<tr>
							<th class="col-xs-2">编号</th>
							<th class="col-xs-2">设备ID</th>
							<th class="col-xs-2">设备名</th>
							<th class="col-xs-3">型号</th>
							<th class="col-xs-3">操作</th>
						</tr>
						</thead>
						<tbody class="tablebody" id = "modifyDeviceBody1">
						<!-- <tr>
                           <td>1</td>
                           <td>00001</td>
                           <td>桌子</td>
                           <td>格力</td>
                           <td>
                               <div>
                                   <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#modifyDevicePop">修改</button>
                                  <button class="btn btn-success btn-xs" data-toggle="modal" data-target="#deleteDevicePop">删除</button>
                              </div>
                           </td>
                        </tr> -->
						</tbody>
					</table>

				</div>

				<!--修改设备信息弹出窗口-->
				<div class="modal fade" id="modifyDevicePop1" role="dialog" aria-labelledby="gridSystemModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title" id="gridSystemModalLabel">修改设备信息</h4>
							</div>
							<div class="modal-body">
								<div class="container-fluid">
									<form class="form-horizontal">
										<div class="form-group ">
											<label for="deviceID" class="col-xs-3 control-label">设备ID：</label>
											<div class="col-xs-6 ">
												<input type="text" class="form-control input-sm duiqi" id="deviceIDModifyInput" placeholder="">
											</div>
										</div>
										<div class="form-group ">
											<label for="deviceNameModifyInput" class="col-xs-3 control-label">设备名：</label>
											<div class="col-xs-6 ">
												<input type="text" class="form-control input-sm duiqi" id="deviceNameModifyInput" placeholder="">
											</div>
										</div>
										<div class="form-group ">
											<label for="deviceTypeModifyInput" class="col-xs-3 control-label">设备型号：</label>
											<div class="col-xs-6 ">
												<input type="text" class="form-control input-sm duiqi" id="deviceTypeModifyInput" placeholder="">
											</div>
										</div>
										<!-- <div class="form-group ">
                                            <label for="deviceCountModifyInput" class="col-xs-3 control-label">数量：</label>
                                            <div class="col-xs-6 ">
                                                <input type="text" class="form-control input-sm duiqi" id="deviceCountModifyInput" placeholder="">
                                            </div>
                                        </div> -->
									</form>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-xs btn-white" data-dismiss="modal" id ="cancelDeviceModify">取 消</button>
								<button type="button" class="btn btn-xs btn-green" data-dismiss="modal" id = "confirmDeviceModify">保 存</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->


				<!-- 删除设备提示弹出窗口 -->
				<div class="modal fade" id="deleteDevicePop" role="dialog" aria-labelledby="gridSystemModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
							</div>
							<div class="modal-body">
								<div class="container-fluid">
									确定要删除该设备？删除后不可恢复！
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
								<button type="button" class="btn  btn-xs btn-danger" data-dismiss="modal" id= "confirmDeleteDevice">确定</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
			</div>

			<!-- 查看设备模块 -->
			<div role="tabpanel" class="tab-pane" id="showDevicePane">
				<div class="check-div form-inline">
					<div class="col-xs-3">
						<button class="btn btn-yellow btn-xs" >查看设备</button>
					</div>
					<div class="col-xs-4">
						<input type="text" class="form-control input-sm" placeholder="输入设备名搜索">
						<button class="btn btn-white btn-xs ">查 询 </button>
					</div>
				</div>
				<div class="data-div">
					<!--自己写table -->
					<table class = "table" id = "modifyDeviceTable">
						<caption><div align="center" class="text-success" id = "modifyMeetingTableTip">会议室信息</div></caption>
						<thead class="row tableHeader">
						<tr>
							<th class="col-xs-3">编号</th>
							<th class="col-xs-3">设备ID</th>
							<th class="col-xs-3">设备名</th>
							<th class="col-xs-3">型号</th>
						</tr>
						</thead>
						<tbody class="tablebody" id = "showDeviceBody">
						<tr>
							<td>1</td>
							<td>00001</td>
							<td>桌子</td>
							<td>格力</td>
						</tr>
						</tbody>
					</table>
				</div>
			</div>



		</div>
	</div>


</div>

<!-- <script src="js/jquery.nouislider.js"></script> -->
<script src="../../static/js/admin.addStore.js"></script>
<script src="../../static/js/manager.modifyRoom.js"></script>
<script src="../../static/js/exitLogin.js"></script>
<script src="../../static/js/manager.commom.js"></script>
<script src="../../static/js/admin.showStore.js"></script>
<script src="../../static/js/manager.showUser.js"></script>
<script src="../../static/js/manager.modifyPass.js"></script>
<script src="../../static/js/manager.addDevice.js"></script>
<script src="../../static/js/manager.modifyDevice.js"></script>
<script src="../../static/js/admin.apply.js"></script>

</body>

</html>