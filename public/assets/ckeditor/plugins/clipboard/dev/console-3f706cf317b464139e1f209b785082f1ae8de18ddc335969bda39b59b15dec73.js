"use strict";!function(){var a,e;CKCONSOLE.add("paste",{panels:[{type:"box",content:'<ul class="ckconsole_list"><li>type: <span class="ckconsole_value" data-value="type"></span></li><li>value: <span class="ckconsole_value" data-value="value"></span></li></ul>',refresh:function(){return{header:"Paste",type:a,value:e}},refreshOn:function(t,n){t.on("paste",function(t){a=t.data.type,e=CKEDITOR.tools.htmlEncode(t.data.dataValue),n()})}},{type:"log",on:function(a,e,t){a.on("paste",function(a){t("paste; type:"+a.data.type)()})}}]})}();