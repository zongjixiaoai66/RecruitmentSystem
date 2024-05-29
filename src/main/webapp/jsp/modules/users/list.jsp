<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zh-cn">

<head>
<%@ include file="../../static/head.jsp"%>
<link
	href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
	rel="stylesheet">
</head>

<body class="materialdesign">
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<!-- Header top area start-->
	<div class="wrapper-pro">
		<%@ include file="../../static/sidebar.jsp"%>
		<!-- Header top area start-->
		<div class="content-inner-all">
			<%@ include file="../../static/headerTop.jsp"%>
			<!-- Header top area end-->
			<!-- Breadcome start-->
			<div class="breadcome-area mg-b-30 small-dn">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12">
							<div class="breadcome-list shadow-reset">
								<div class="row">
									<div class="col-lg-6">
										<div class="breadcome-heading"></div>
									</div>
									<div class="col-lg-6">
										<ul class="breadcome-menu">
											<li><a
												href="${pageContext.request.contextPath}/index.jsp">主页</a> <span
												class="bread-slash">/</span></li>
											<li><span class="bread-blod">管理员信息管理</span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Breadcome End-->
			<!-- Mobile Menu start -->
			<!-- Mobile Menu end -->
			<!-- Breadcome start-->

			<!-- Breadcome End-->
			<!-- Static Table Start -->
			<div class="data-table-area mg-b-15">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12">
							<div class="sparkline13-list shadow-reset">
								<div class="sparkline13-hd">
									<div class="main-sparkline13-hd">
										<h1>
											管理员信息<span class="table-project-n">列表</span>
										</h1>
										<div class="sparkline13-outline-icon">
											<span class="sparkline13-collapse-link"><i
												class="fa fa-chevron-up"></i></span> <span><i
												class="fa fa-wrench"></i></span> <span
												class="sparkline13-collapse-close"><i
												class="fa fa-times"></i></span>
										</div>
									</div>
								</div>

								<div class="sparkline13-graph">
									<div class="datatable-dashv1-list custom-datatable-overright">
										<label>用戶名</label> <input type="text" id="usernameSearch">
										<button type="button"
											class="btn btn-custon-four btn-primary btn-sm"
											onclick="search()">查询</button>
										<button type="button"
											class="btn btn-custon-four btn-success btn-sm 新增"
											onclick="add()">添加</button>
										<button type="button"
											class="btn btn-custon-four btn-danger btn-sm 删除"
											onclick="deleteMore()">删除</button>
										
										<table id="table" data-toggle="table" data-resizable="true">
											<thead>
												<tr>
													<th><input type="checkbox" onclick="chooseAll()"></th>
													<th>学生名</th>
													<th>密码</th>													
													<th>角色</th>
													<th><i id="addtimeIcon" onclick="sort('addtime')"
														class="fa fa-sort" aria-hidden="true"></i>创建时间</th>
													<th>操作</th>
												</tr>
											</thead>
											<tbody>

											</tbody>
										</table>
									</div>
									<div class="fixed-table-pagination">
										<div class="pull-left pagination-detail">
											<span class="pagination-info">当前第 1 页，共 1 页</span> <span
												class="page-list"> <span class="btn-group dropup">
													<button type="button"
														class="btn btn-default dropdown-toggle"
														data-toggle="dropdown">
														<span class="page-size">10</span> <span class="caret"></span>
													</button>
													<ul class="dropdown-menu" role="menu">
														<li role="menuitem" class="active"><a
															onclick="changePageSize(10)" href="#">10</a></li>
														<li role="menuitem"><a onclick="changePageSize(25)"
															href="#">25</a></li>
														<li role="menuitem"><a onclick="changePageSize(50)"
															href="#">50</a></li>
														<li role="menuitem"><a onclick="changePageSize(100)"
															href="#">100</a></li>
													</ul>
											</span> 条 每页
											</span>
										</div>
										<div class="pull-right pagination">
											<ul class="pagination">
												<li id="page-pre" class="page-pre"><a href="#"
													onclick="pageNumChange('pre')">‹</a></li>
												<li id="page-next" class="page-next"><a href="#"
													onclick="pageNumChange('next')">›</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Static Table End -->
		</div>
	</div>
	<!-- Footer Start-->
	<!-- Footer End-->
	<!-- Chat Box Start-->
	<!-- Chat Box End-->
	
	<%@ include file="../../static/foot.jsp"%>
	<script>
		
	<%@ include file="../../utils/menu.jsp"%>
		
	<%@ include file="../../static/setMenu.js"%>
		
	<%@ include file="../../utils/baseUrl.jsp"%>
		
	<%@ include file="../../static/getRoleButtons.js"%>
		var tableName = "users";
		var pageType = "list";
		var searchForm = {
			key : ""
		};
		var pageIndex = 1;
		var pageSize = 10;
		var totalPage = 0;
		var dataList = [];
		var sortColumn = '';
		var sortOrder = '';
		var ids = [];

		// 改变每页记录条数
		function changePageSize(num) {
			$('.page-size').html(num);
			pageSize = num;
			getDataList();
		}
		//排序
		function sort(columnName) {
			var iconId = '#' + columnName + 'Icon'
			$('th i').attr('class', 'fa fa-sort');
			if (sortColumn == '' || sortColumn != columnName) {
				sortColumn = columnName;
				sortOrder = 'asc';
				$(iconId).attr('class', 'fa fa-sort-asc');
			}
			if (sortColumn == columnName) {
				if (sortOrder == 'asc') {
					sortOrder = 'desc';
					$(iconId).attr('class', 'fa fa-sort-desc');
				} else {
					sortOrder = 'asc';
					$(iconId).attr('class', 'fa fa-sort-asc');
				}
			}
			pageIndex = 1;
			getDataList();
		}

		// 查询
		function search() {
			searchForm = {
				key : ""
			};
			if ($('#usernameSearch').val() != null && $('#usernameSearch').val() != '') {
				searchForm.username = "%" + $('#usernameSearch').val() + "%";
			}
			getDataList();
		}
		// 获取数据列表
		function getDataList() {
			$.ajax({
				type : "GET",
				url : baseUrl + "users/page",
				data : {
					page : pageIndex,
					limit : pageSize,
					sort : sortColumn,
					order : sortOrder,
					username : searchForm.username,
				},
				beforeSend : function(xhr) {
					xhr.setRequestHeader("token", window.sessionStorage
							.getItem('token'));
				},
				success : function(res) {
					clear();
					if (res.code == 0) {
						dataList = res.data.list;
						totalPage = res.data.totalPage;
						//var tbody = document.getElementById('tbMain');
						for (var i = 0; i < dataList.length; i++) { //遍历一下表格数据  
							var trow = setDataRow(dataList[i]); //定义一个方法,返回tr数据 
							$('tbody').append(trow);
						}
						pagination(); //渲染翻页组件
					} else if (res.code == 401) {
						<%@ include file="../../static/toLogin.jsp"%>
					} else {
						alert(res.msg);
						dataList = [];
						totalPage = 0;
					}
				},
			});
		}
		// 渲染表格数据
		function setDataRow(item) {
			//创建行 
			var row = document.createElement('tr');
			row.setAttribute('class', 'useOnce');
			// 创建 勾选框 列
			var checkbox = document.createElement('td');
			checkbox.innerHTML = "<input type='checkbox' name='chk' onclick= "
					+ 'clickCheckbox(' + item.id + ')' + ">";
			row.appendChild(checkbox);

			var usernameCell = document.createElement('td');
			usernameCell.innerHTML = item.username;
			row.appendChild(usernameCell);


			var passwordCell = document.createElement('td');
			passwordCell.innerHTML = item.password;
			row.appendChild(passwordCell);

			var roleCell = document.createElement('td');
			roleCell.innerHTML = item.role;
			row.appendChild(roleCell);

			var addtimeCell = document.createElement('td');
			addtimeCell.innerHTML = item.addtime;
			row.appendChild(addtimeCell);

			// 每行 按钮
			var btnGroup = document.createElement('td');

			//编辑按钮
			var editBtn = document.createElement('button');
			var editAttr = 'edit(' + item.id + ')';
			editBtn.setAttribute('onclick', editAttr);
			editBtn.setAttribute("type", "button");
			editBtn.setAttribute("class",
					"btn btn-custon-four btn-warning btn-sm 修改");
			editBtn.innerHTML = "修改";
			btnGroup.appendChild(editBtn);
			//删除按钮
			var deleteBtn = document.createElement('button');
			var deleteAttr = 'remove(' + item.id + ')';
			deleteBtn.setAttribute('onclick', deleteAttr);
			deleteBtn.setAttribute("type", "button");
			deleteBtn.setAttribute("class",
					"btn btn-custon-four btn-danger btn-sm 删除");
			deleteBtn.innerHTML = "删除";
			btnGroup.appendChild(deleteBtn);
			row.appendChild(btnGroup);
			return row;
		}
	
		// 翻页
		function pageNumChange(val) {
			if (val == 'pre') {
				pageIndex--;
			} else if (val == 'next') {
				pageIndex++;
			} else {
				pageIndex = val;
			}
			getDataList();
		}

		// 渲染翻页组件
		function pagination() {
			var beginIndex = pageIndex;
			var endIndex = pageIndex;
			var point = 4;
			//计算页码
			for (var i = 0; i < 3; i++) {
				if (endIndex == totalPage) {
					break;
				}
				endIndex++;
				point--;
			}
			for (var i = 0; i < 3; i++) {
				if (beginIndex == 1) {
					break;
				}
				beginIndex--;
				point--;
			}
			if (point > 0) {
				while (point > 0) {
					if (endIndex == totalPage) {
						break;
					}
					endIndex++;
					point--;
				}
				while (point > 0) {
					if (beginIndex == 1) {
						break;
					}
					beginIndex--;
					point--
				}
			}
			// 是否显示 前一页 按钮
			if (pageIndex > 1) {
				$('#page-pre').show();
			} else {
				$('#page-pre').hide();
			}
			// 渲染页码按钮
			for (var i = beginIndex; i <= endIndex; i++) {
				var pageNum = document.createElement('li');
				pageNum.setAttribute('onclick', "pageNumChange(" + i + ")");
				if (pageIndex == i) {
					pageNum.setAttribute('class', 'page-number active useOnce');
				} else {
					pageNum.setAttribute('class', 'page-number useOnce');
				}
				var pageHref = document.createElement('a');
				pageHref.setAttribute('href', '#');
				pageHref.innerHTML = i;
				pageNum.appendChild(pageHref);
				$("#page-next").before(pageNum);
			}
			// 是否显示 下一页 按钮
			if (pageIndex < totalPage) {
				$('#page-next').show();
			} else {
				$('#page-next').hide();
			}
			var pageNumInfo = "当前第 " + pageIndex + " 页，共 " + totalPage + " 页";
			$('.pagination-info').html(pageNumInfo);
		}
		// 跳转到指定页
		function toThatPage() {
			//var index = document.getElementById('pageIndexInput').value;
			if (index<0 || index>totalPage) {
				alert('请输入正确的页码');
			} else {
				pageNumChange(index);
			}
		}
		// 全选/全不选
		function chooseAll() {
			var boxs = document.getElementsByName("chk");
			for (var i = 0; i < boxs.length; i++) {
				boxs[i].click()
			}
		}
		// 勾选
		function clickCheckbox(id) {
			var index = ids.indexOf(id);
			if (index == -1) {
				ids.push(id);
			} else {
				ids.splice(index, 1);
			}
		}
		// 批量删除
		function deleteMore() {
			if (ids.length == 0) {
				alert('请勾选要删除的记录');
			} else {
				remove(ids);
			}
		}
		// 删除
		function remove(id) {
			var mymessage = confirm("真的要删除吗？");
			if (mymessage == true) {
				var paramArray = [];
				if (id == ids) {
					paramArray = id;
				} else {
					paramArray.push(id);
				}
				$.ajax({
					type : "POST",
					url : baseUrl + "users/delete",
					contentType : "application/json",
					data : JSON.stringify(paramArray),
					beforeSend : function(xhr) {
						xhr.setRequestHeader("token", window.sessionStorage
								.getItem('token'));
					},
					success : function(res) {
						if (res.code == 0) {
							alert('删除成功');
							getDataList();
						} else if (res.code == 401) {
	<%@ include file="../../static/toLogin.jsp"%>
		} else {
							alert(res.msg);
						}
					},
				});
			} else {
				alert("已取消操作");
			}
		}
		// 学生登出
	<%@ include file="../../static/logout.jsp"%>
		//修改
		function edit(id) {
			window.sessionStorage.setItem('id', id)
			window.location.href = "add-or-update.jsp"
		}
		//清除会重复渲染的节点
		function clear() {
			var elements = document.getElementsByClassName('useOnce');
			for (var i = elements.length - 1; i >= 0; i--) {
				elements[i].parentNode.removeChild(elements[i]);
			}
		}
		//添加
		function add() {
			window.location.href = "add-or-update.jsp"
		}

		$(document).ready(function() {
			$('.no-records-found').hide();
			$('.fixed-table-footer').remove();
			setMenu();
			getRoleButtons();		
			getDataList();		
			<%@ include file="../../static/myInfo.js"%>
		});
	</script>

</body>

</html>
