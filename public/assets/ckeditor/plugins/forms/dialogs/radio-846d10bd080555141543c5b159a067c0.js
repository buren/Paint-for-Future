/*
Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/
CKEDITOR.dialog.add("radio",function(a){return{title:a.lang.checkboxAndRadio.radioTitle,minWidth:350,minHeight:140,onShow:function(){var a=this;delete a.radioButton;var b=a.getParentEditor().getSelection().getSelectedElement();b&&b.getName()=="input"&&b.getAttribute("type")=="radio"&&(a.radioButton=b,a.setupContent(b))},onOk:function(){var a,b=this.radioButton,c=!b;c&&(a=this.getParentEditor(),b=a.document.createElement("input"),b.setAttribute("type","radio")),c&&a.insertElement(b),this.commitContent({element:b})},contents:[{id:"info",label:a.lang.checkboxAndRadio.radioTitle,title:a.lang.checkboxAndRadio.radioTitle,elements:[{id:"name",type:"text",label:a.lang.common.name,"default":"",accessKey:"N",setup:function(a){this.setValue(a.data("cke-saved-name")||a.getAttribute("name")||"")},commit:function(a){var b=a.element;this.getValue()?b.data("cke-saved-name",this.getValue()):(b.data("cke-saved-name",!1),b.removeAttribute("name"))}},{id:"value",type:"text",label:a.lang.checkboxAndRadio.value,"default":"",accessKey:"V",setup:function(a){this.setValue(a.getAttribute("value")||"")},commit:function(a){var b=a.element;this.getValue()?b.setAttribute("value",this.getValue()):b.removeAttribute("value")}},{id:"checked",type:"checkbox",label:a.lang.checkboxAndRadio.selected,"default":"",accessKey:"S",value:"checked",setup:function(a){this.setValue(a.getAttribute("checked"))},commit:function(b){var c=b.element;if(!CKEDITOR.env.ie&&!CKEDITOR.env.opera)this.getValue()?c.setAttribute("checked","checked"):c.removeAttribute("checked");else{var d=c.getAttribute("checked"),e=!!this.getValue();if(d!=e){var f=CKEDITOR.dom.element.createFromHtml('<input type="radio"'+(e?' checked="checked"':"")+"></input>",a.document);c.copyAttributes(f,{type:1,checked:1}),f.replace(c),a.getSelection().selectElement(f),b.element=f}}}}]}]}})