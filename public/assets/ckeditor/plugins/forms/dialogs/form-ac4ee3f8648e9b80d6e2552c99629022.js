/*
Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/
CKEDITOR.dialog.add("form",function(a){var b={action:1,id:1,method:1,enctype:1,target:1};return{title:a.lang.form.title,minWidth:350,minHeight:200,onShow:function(){var a=this;delete a.form;var b=a.getParentEditor().getSelection().getStartElement(),c=b&&b.getAscendant("form",!0);c&&(a.form=c,a.setupContent(c))},onOk:function(){var a,b=this.form,c=!b;c&&(a=this.getParentEditor(),b=a.document.createElement("form"),!CKEDITOR.env.ie&&b.append(a.document.createElement("br"))),c&&a.insertElement(b),this.commitContent(b)},onLoad:function(){function a(a){this.setValue(a.getAttribute(this.id)||"")}function c(a){var b=this;b.getValue()?a.setAttribute(b.id,b.getValue()):a.removeAttribute(b.id)}this.foreach(function(e){b[e.id]&&(e.setup=a,e.commit=c)})},contents:[{id:"info",label:a.lang.form.title,title:a.lang.form.title,elements:[{id:"txtName",type:"text",label:a.lang.common.name,"default":"",accessKey:"N",setup:function(a){this.setValue(a.data("cke-saved-name")||a.getAttribute("name")||"")},commit:function(a){this.getValue()?a.data("cke-saved-name",this.getValue()):(a.data("cke-saved-name",!1),a.removeAttribute("name"))}},{id:"action",type:"text",label:a.lang.form.action,"default":"",accessKey:"T"},{type:"hbox",widths:["45%","55%"],children:[{id:"id",type:"text",label:a.lang.common.id,"default":"",accessKey:"I"},{id:"enctype",type:"select",label:a.lang.form.encoding,style:"width:100%",accessKey:"E","default":"",items:[[""],["text/plain"],["multipart/form-data"],["application/x-www-form-urlencoded"]]}]},{type:"hbox",widths:["45%","55%"],children:[{id:"target",type:"select",label:a.lang.common.target,style:"width:100%",accessKey:"M","default":"",items:[[a.lang.common.notSet,""],[a.lang.common.targetNew,"_blank"],[a.lang.common.targetTop,"_top"],[a.lang.common.targetSelf,"_self"],[a.lang.common.targetParent,"_parent"]]},{id:"method",type:"select",label:a.lang.form.method,accessKey:"M","default":"GET",items:[["GET","get"],["POST","post"]]}]}]}]}})