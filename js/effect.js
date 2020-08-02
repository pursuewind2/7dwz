// 生成演示页面网址
function generate(){
	longUrl = $("#text").val();
	if(longUrl){
		$("#generater").css("display", "block");
		$("#shortUrl").text("生成中...");
		newDwz();
	}

}

// 生成短网址
function newDwz(){
	$.ajax({
		url: "/api",
		type: "POST",
		data: {url: longUrl},
		dataType: "json",
		success: function(data){
			if(data.code == 1){
				$("#shortUrl").text(data.dwz);
				$("#deadline").text(data.deadline+"前");
				$("#gTitle2, #deadline").css("display", "block");
			}else{
				alert(data.error);
				$("#generater").css("display", "none");
				$("#gTitle2, #deadline").css("display", "none");
			}
			
		}
	});
}

