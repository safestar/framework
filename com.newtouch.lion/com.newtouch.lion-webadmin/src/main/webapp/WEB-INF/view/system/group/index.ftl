<#assign base = request.contextPath/>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<title><@spring.message "sys.group.html.title"/></title>
<!--DataTable css Start-->
<link rel="stylesheet" type="text/css" href="${base}/resources/global/plugins/select2/select2.css"/>
<link rel="stylesheet" type="text/css" href="${base}/resources/global/plugins/datatables/extensions/Scroller/css/dataTables.scroller.min.css"/>
<link rel="stylesheet" type="text/css" href="${base}/resources/global/plugins/datatables/extensions/ColReorder/css/dataTables.colReorder.min.css"/>
<link rel="stylesheet" type="text/css" href="${base}/resources/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>
<!--DataTable css End-->
<link href="${base}/resources/global/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet" type="text/css" />
<link href="${base}/resources/global/css/lion.css" rel="stylesheet" type="text/css" />
<link href="${base}/resources/global/css/combotree/combotree.css" rel="stylesheet" type="text/css" />
<!-- DataTables js Start -->
<script type="text/javascript" src="${base}/resources/global/plugins/select2/select2.min.js"></script>
<script type="text/javascript" src="${base}/resources/global/plugins/datatables/media/js/jquery.dataTables.js"></script>
<script type="text/javascript" src="${base}/resources/global/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.js"></script>
<script type="text/javascript" src="${base}/resources/global/plugins/datatables/extensions/ColReorder/js/dataTables.colReorder.js"></script>
<script type="text/javascript" src="${base}/resources/global/plugins/datatables/extensions/Scroller/js/dataTables.scroller.js"></script>
<script type="text/javascript" src="${base}/resources/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
<!-- DataTables js End -->
<!--lion UI JS Start-->
<script src="${base}/resources/global/js/lion.js" type="text/javascript"></script>
<script src="${base}/resources/global/js/form/form.fill.js" type="text/javascript"></script>
<script src="${base}/resources/global/js/local/lion-lang-zh_CN.js" type="text/javascript"></script>
<script src="${base}/resources/global/js/combotree/combotree.js" type="text/javascript"></script>
<script src="${base}/resources/global/js/datagrid/datagrids.js" type="text/javascript"></script>
<!--demo-->
<script src="${base}/resources/admin/scripts/system/group.js" type="text/javascript"></script>
</head>
<body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-closed-hide-logo">
<!-- BEGIN PAGE CONTENT INNER -->
<div class="portlet light">
	<div class="portlet-body">
		<div class="row">
			  <div class="col-md-12 margin-bottom-10">
				<form id="queryform" class="form-horizontal">
					<label class="control-label col-md-2" for="nameZh" ><@spring.message "sys.group.query.namezh.text"/></label>
					<div class="col-md-3">
						<input class="form-control input-small" type="text" size="30" name="nameZh" id="nameZh"  placeholder="请输入<@spring.message "sys.group.form.namezh.missing.message"/>"/>					
					</div>
					<div class="col-md-7">
						<a href="javascript:void(0)" id="btnQuery" class="btn blue"><i class="fa fa-search"></i> <@spring.message "common.query.btn.text"/> </a>
					</div>
				</form>
			</div>
			<!--DataGrid start-->
			<div class="col-md-12">
				<a id="btnAdd" class="btn btn-sm yellow" data-toggle="modal" href="#basic"><i class="fa fa-plus"></i> <@spring.message "common.toolbar.btn.add.text"/>  </a>
				<a id="btnEdit" class="btn btn-sm red"><i class="fa fa-edit"></i> <@spring.message "common.toolbar.btn.edit.text"/></a>
				<a href="javascript:void(0)" id="btnDelete" class="btn btn-sm purple"><i class="fa fa-times"></i> <@spring.message "common.toolbar.btn.delete.text"/> </a>
				<a href="javascript:void(0)" id="btnRefresh" class="btn btn-sm blue"><i class="fa fa-refresh"></i> <@spring.message "common.toolbar.btn.reload.text"/>   </a>
				<a href="javascript:void(0)" id="btnExport"  class="btn btn-sm green"><i class="fa  fa-file-excel-o"></i> <@spring.message "common.toolbar.btn.export.text"/> </a>
			</div>
			<div class="col-md-12">
				<table class="lion-datagrids table table-striped table-bordered table-hover" id="sys_group_list_tb" data-singleselect="true",   data-loadUrl="/admin/system/group/list.json" data-checkbox="true" data-pageSize="10">
					<thead>
						<tr>
							<th class="table-checkbox" data-field='id' data-checkbox="true">
						 		<input type="checkbox" class="group-checkable" data-set="#sys_group_list_tb.checkboxes"  data-sortable="false" />
						 	</th>
							<th data-field='nameEn' data-sortDir="asc"    style="width:100px;">
								用户组名称(英文)
							</th>
							<th data-field="nameZh" style="width:100px;">
							 	用户组名称(中文)
							</th>
							<th data-field="description" style="width:100px;">
								描述
							</th>
							<th data-field="createdDate" style="width:100px;">
								创建时间
							</th>
							<th data-field="updatedDate" style="width:100px;">
								更新时间
							</th>
						</tr>
					</thead>
				</table>
			</div>
			<!--DataGrid End-->
		</div>
	</div>
</div>
<!--Edit Dialog Start -->
<div class="modal fade" id="basic" tabindex="-1" role="basic" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<!--Header Start-->
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
				<h4 class="modal-title">
					<i class="fa fa-plus"></i>
					<span>
						<@spring.message "sys.group.form.adddialog.text"/>
					</span>
				</h4>
			</div>
			<!--Header end-->
			<!--modal body start-->
			<div class="modal-body">
				<div class="row">				 	 
			 	<div class="col-md-12  portlet-body   form">
			 	<!-- BEGIN FORM-->
				<form action="#" class="form-horizontal" name="sysGroupForm" id="sysGroupForm" method="post">
					<input type="hidden" id='id' name='id' value="">
					<div class="form-group">
						<label class="col-md-3 control-label">
							<@spring.message "sys.group.form.namezh.text"/>
						</label>
						<div class="col-md-9">
							<div class="input-group">
								<input type="text"  name="nameZh"  maxlength="100" class="form-control" placeholder='<@spring.message "sys.group.form.namezh.missing.message"/>' size="30"/>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">
							<@spring.message "sys.group.form.nameen.text"/>
						</label>
						<div class="col-md-9">
							<div class="input-group">
								<input type="text"  id="nameEn" name="nameEn" maxlength="100" class="form-control" placeholder='<@spring.message "sys.group.form.nameen.missing.message"/>' size="30"/>
							</div>
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label">
							<@spring.message "sys.group.form.description.text"/>
						</label>
						<div class="col-md-9">
							<div class="input-group">
								<input type="text" name="description" class="form-control" placeholder='<@spring.message "sys.group.form.description.missing.message"/>' maxlength="255" size="30"/>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-3 control-label">
								<@spring.message "sys.group.form.editable.text"/>
						</div>
						<div class="col-md-9 control-label">
							<div class="input-group">
								<input type="checkbox" class="form-control" name="editable" checked="true" />
								
							</div>
						</div>
					</div>
				</form>							
				<!-- END FORM-->
				</div>
				</div>
			</div>
			<!--modal body end-->
			<!--footer start-->
			<div class="modal-footer">
				<button type="button" id="btnCancel" class="btn default" data-dismiss="modal">
					<i class="fa  fa-arrow-left"></i> 
					<@spring.message "common.diaglog.btn.cancel"/> 
				</button>
				<button type="button" id="btnSave" class="btn blue">
					<i class="fa fa-save"></i>
					<@spring.message "common.diaglog.btn.save"/>
				</button>
			</div>
			<!--footer end-->
		</div>
	</div>
</div>
<!--Edit Dialog End -->
</body>
</html>