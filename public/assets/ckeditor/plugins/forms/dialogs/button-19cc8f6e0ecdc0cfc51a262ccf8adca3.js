/*
Copyright (c) 2003-2012, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
*/
CKEDITOR.dialog.add("button",function(a){function b(a){var b=this,c=b.getValue();c?(a.attributes[b.id]=c,b.id=="name"&&(a.attributes["data-cke-saved-name"]=c)):(delete a.attributes[b.id],b.id=="name"&&delete a.attributes["data-cke-saved-name"])}return{title:a.lang.button.title,minWidth:350,minHeight:150,onShow:function(){var a=this;delete a.button;var b=a.getParentEditor().getSelection().getSelectedElement();if(b&&b.is("input")){var c=b.getAttribute("type");c in{button:1,reset:1,submit:1}&&(a.button=b,a.setupContent(b))}},onOk:function(){var a=this.getParentEditor(),b=this.button,c=!b,d=b?CKEDITOR.htmlParser.fragment.fromHtml(b.getOuterHtml()).children[0]:new CKEDITOR.htmlParser.element("input");this.commitContent(d);var e=new CKEDITOR.htmlParser.basicWriter;d.writeHtml(e);var f=CKEDITOR.dom.element.createFromHtml(e.getHtml(),a.document);c?a.insertElement(f):(f.replace(b),a.getSelection().selectElement(f))},contents:[{id:"info",label:a.lang.button.title,title:a.lang.button.title,elements:[{id:"name",type:"text",label:a.lang.common.name,"default":"",setup:function(a){this.setValue(a.data("cke-saved-name")||a.getAttribute("name")||"")},commit:b},{id:"value",type:"text",label:a.lang.button.text,accessKey:"V","default":"",setup:function(a){this.setValue(a.getAttribute("value")||"")},commit:b},{id:"type",type:"select",label:a.lang.button.type,"default":"button",accessKey:"T",items:[[a.lang.button.typeBtn,"button"],[a.lang.button.typeSbm,"submit"],[a.lang.button.typeRst,"reset"]],setup:function(a){this.setValue(a.getAttribute("type")||"")},commit:b}]}]}})