function createAjax(){
	var req;
	 if(window.XMLHttpRequest){//�ж����������
    	 req=new XMLHttpRequest();//���
    }else if(window.ActiveXObject){
    	req=new ActiveXObject("Msxm12.XMLHTTP");
    }else if(window.ActiveXObject){
    	req=new ActiveXObject("Microsoft.XMLHTTP");  //���IE�����
    }
    return req;
}
//��������:���䷽ʽ(get\post)������·���������б�ͬ��\�첽��200��ȷ������������ͼƬ��404��������500������
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
		req.open(method, url+(param==null?"":"?"+param), aynch);//��ֵΪtrueʱΪ�첽���䣬false��Ϊͬ������
		req.send(null);
	}else{
		req.open("post", url, aynch);
		req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		req.send(param);

	}
}