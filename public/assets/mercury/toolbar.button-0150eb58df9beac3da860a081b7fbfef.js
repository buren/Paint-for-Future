(function(){var a=Object.prototype.hasOwnProperty,b=function(a,b){return function(){return a.apply(b,arguments)}};this.Mercury.Toolbar.Button=function(){function c(a,b,c,d,e){return this.name=a,this.title=b,this.summary=c!=null?c:null,this.types=d!=null?d:{},this.options=e!=null?e:{},this.build(),this.bindEvents(),this.element}return c.prototype.build=function(){var b,c,d,e,f,g,h;this.element=jQuery("<div>",{title:(f=this.summary)!=null?f:this.title,"class":"mercury-button mercury-"+this.name+"-button"}).html("<em>"+this.title+"</em>"),this.element.data("expander",'<div class="mercury-expander-button" data-button="'+this.name+'"><em></em><span>'+this.title+"</span></div>"),this.handled={},b={title:this.summary||this.title,preload:this.types.preload,appendTo:this.options.appendDialogsTo||"body","for":this.element},g=this.types,h=[];for(d in g){if(!a.call(g,d))continue;c=g[d],h.push(function(){switch(d){case"preload":return!0;case"regions":return this.element.addClass("disabled"),this.handled[d]=jQuery.isFunction(c)?c.call(this,this.name):c;case"toggle":return this.handled[d]=!0;case"mode":return this.handled[d]=c===!0?this.name:c;case"context":return this.handled[d]=jQuery.isFunction(c)?c:Mercury.Toolbar.Button.contexts[this.name];case"palette":return this.element.addClass("mercury-button-palette"),e=jQuery.isFunction(c)?c.call(this,this.name):c,this.handled[d]=new Mercury.Palette(e,this.name,b);case"select":return this.element.addClass("mercury-button-select").find("em").html(this.title),e=jQuery.isFunction(c)?c.call(this,this.name):c,this.handled[d]=new Mercury.Select(e,this.name,b);case"panel":return this.element.addClass("mercury-button-panel"),e=jQuery.isFunction(c)?c.call(this,this.name):c,this.handled.toggle=!0,this.handled[d]=new Mercury.Panel(e,this.name,b);case"modal":return this.handled[d]=jQuery.isFunction(c)?c.apply(this,this.name):c;default:throw"Unknown button type "+d+" used for the "+this.name+" button."}}.call(this))}return h},c.prototype.bindEvents=function(){return Mercury.bind("button",b(function(a,b){if(b.action===this.name)return this.element.click()},this)),Mercury.bind("mode",b(function(a,b){if(this.handled.mode===b.mode&&this.handled.toggle)return this.togglePressed()},this)),Mercury.bind("region:update",b(function(a,b){var c;return this.handled.context&&b.region&&jQuery.type(b.region.currentElement)==="function"?(c=b.region.currentElement(),c.length&&this.handled.context.call(this,c,b.region.element)?this.element.addClass("active"):this.element.removeClass("active")):this.element.removeClass("active")},this)),Mercury.bind("region:focused",b(function(a,b){if(this.handled.regions&&b.region&&b.region.type)return this.handled.regions.indexOf(b.region.type)>-1?this.element.removeClass("disabled"):this.element.addClass("disabled")},this)),Mercury.bind("region:blurred",b(function(a,b){if(this.handled.regions)return this.element.addClass("disabled")},this)),this.element.mousedown(b(function(a){return this.element.addClass("active")},this)),this.element.mouseup(b(function(a){return this.element.removeClass("active")},this)),this.element.click(b(function(b){var c,d,e,f;if(this.element.closest(".disabled").length)return;c=!1,f=this.handled;for(e in f){if(!a.call(f,e))continue;d=f[e];switch(e){case"toggle":this.handled.mode||this.togglePressed();break;case"mode":c=!0,Mercury.trigger("mode",{mode:d});break;case"modal":c=!0,Mercury.modal(this.handled.modal,{title:this.summary||this.title,handler:this.name});break;case"palette":case"select":case"panel":b.stopPropagation(),c=!0,this.handled[e].toggle()}}return c||Mercury.trigger("action",{action:this.name}),Mercury.trigger("focus:frame")},this))},c.prototype.togglePressed=function(){return this.element.toggleClass("pressed")},c}(),this.Mercury.Toolbar.Button.contexts={backColor:function(a){return this.element.css("background-color",a.css("background-color"))},foreColor:function(a){return this.element.css("background-color",a.css("color"))},bold:function(a){var b;return b=a.css("font-weight"),b==="bold"||b>400},italic:function(a){return a.css("font-style")==="italic"},overline:function(a){return a.css("text-decoration")==="overline"},strikethrough:function(a,b){return a.css("text-decoration")==="line-through"||!!a.closest("strike",b).length},underline:function(a,b){return a.css("text-decoration")==="underline"||!!a.closest("u",b).length},subscript:function(a,b){return!!a.closest("sub",b).length},superscript:function(a,b){return!!a.closest("sup",b).length},justifyLeft:function(a){return a.css("text-align").indexOf("left")>-1},justifyCenter:function(a){return a.css("text-align").indexOf("center")>-1},justifyRight:function(a){return a.css("text-align").indexOf("right")>-1},justifyFull:function(a){return a.css("text-align").indexOf("justify")>-1},insertOrderedList:function(a,b){return!!a.closest("ol",b.element).length},insertUnorderedList:function(a,b){return!!a.closest("ul",b.element).length}}}).call(this)