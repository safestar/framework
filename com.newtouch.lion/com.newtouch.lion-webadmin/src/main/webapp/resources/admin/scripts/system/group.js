$(function () {
	//加载bootstrap
	Metronic.init(); // init metronic core componets
	Layout.init(); // init layout
	Tasks.initDashboardWidget(); // init tash dashboard widget

	var groupdg=$("#sys_group_list_tb");

	var queryForm=$('#queryform');

	$("#btnQuery").click(function(){
		groupdg.datagrids({querydata:queryForm.serializeObject()});
		var queryparam=groupdg.datagrids('queryparams'); 
		demoDt.datagrids('reload');
	});

	$("#btnRefresh").click(function(){
		//groupdg.datagrids({querydata:{userid:1}});
        groupdg.datagrids('reload');
        //var settings=demoDt.datagrids('settings');
        //console.dir(settings);
    });

    $("#btnAdd").click(function(){
      	
    });

    //获取多行数据
    $("#btnEdit").click(function(){
        var rows=groupdg.datagrids('getSelections');
       
        console.dir(rows);
    });
});