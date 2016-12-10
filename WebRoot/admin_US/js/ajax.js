function createAjax(){
	var req;
	 if(window.XMLHttpRequest){//判断浏览器类型
    	 req=new XMLHttpRequest();//火狐
    }else if(window.ActiveXObject){
    	req=new ActiveXObject("Msxm12.XMLHTTP");
    }else if(window.ActiveXObject){
    	req=new ActiveXObject("Microsoft.XMLHTTP");  //针对IE浏览器
    }
    return req;
}
//参数类型:传输方式(get\post)、传输路径、参数列表、同步\异步、200正确操作、加载中图片、404错误函数、500错误函数
function sendAjax(method,url,param,aynch,handle200,loading,handle404,handle500){
	var req=createAjax();
	req.onreadystatechange = function() {
		if (4 == req.readyState) {
			if (200 == req.status) {
				if(handle200){
					handle200(req);
				}
				
			}else if(404==req.status){
				if(handle404){
					handle404(req);
				}
			}else if(500==req.status){
				if(handle500){
					handle500(req);
				}
		    }
		}else{
	    	if(loading){
	    		loading();
	    	}
	    }
	}
	if("get"==method.toLowerCase()){
		req.open(method, url+(param==null?"":"?"+param), aynch);//当值为true时为异步传输，false是为同步传输
		req.send(null);
	}else{
		req.open("post", url, aynch);
		req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		req.send(param);

	}
}