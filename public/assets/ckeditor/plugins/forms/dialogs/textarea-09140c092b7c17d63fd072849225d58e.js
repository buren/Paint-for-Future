/*
Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/
CKEDITOR.dialog.add("textarea",function(a){return{title:a.lang.textarea.title,minWidth:350,minHeight:220,onShow:function(){var a=this;delete a.textarea;var b=a.getParentEditor().getSelection().getSelectedElement();b&&b.getName()=="textarea"&&(a.textarea=b,a.setupContent(b))},onOk:function(){var a,b=this.textarea,c=!b;c&&(a=this.getParentEditor(),b=a.document.createElement("textarea")),this.commitContent(b),c&&a.insertElement(b)},contents:[{id:"info",label:a.lang.textarea.title,title:a.lang.textarea.title,elements:[{id:"_cke_saved_name",type:"text",label:a.lang.common.name,"default":"",accessKey:"N",setup:function(a){this.setValue(a.data("cke-saved-name")||a.getAttribute("name")||"")},commit:function(a){this.getValue()?a.data("cke-saved-name",this.getValue()):(a.data("cke-saved-name",!1),a.removeAttribute("name"))}},{type:"hbox",widths:["50%","50%"],children:[{id:"cols",type:"text",label:a.lang.textarea.cols,"default":"",accessKey:"C",style:"width:50px",validate:CKEDITOR.dialog.validate.integer(a.lang.common.validateNumberFailed),setup:function(a){var b=a.hasAttribute("cols")&&a.getAttribute("cols");this.setValue(b||"")},commit:function(a){this.getValue()?a.setAttribute("cols",this.getValue()):a.removeAttribute("cols")}},{id:"rows",type:"text",label:a.lang.textarea.rows,"default":"",accessKey:"R",style:"width:50px",validate:CKEDITOR.dialog.validate.integer(a.lang.common.validateNumberFailed),setup:function(a){var b=a.hasAttribute("rows")&&a.getAttribute("rows");this.setValue(b||"")},commit:function(a){this.getValue()?a.setAttribute("rows",this.getValue()):a.removeAttribute("rows")}}]},{id:"value",type:"textarea",label:a.lang.textfield.value,"default":"",setup:function(a){this.setValue(a.$.defaultValue)},commit:function(a){a.$.value=a.$.defaultValue=this.getValue()}}]}]}})