!function(e,i){function t(e){return function(i){return{}.toString.call(i)=="[object "+e+"]"}}function n(){return A++}function r(e,i,t){t=t||this;for(var n=0,r=e.length;n<r;n++)"undefined"!=typeof e[n]&&i.call(t,e[n],n,e)}function a(e){return e.match(B)[0]}function o(e){for(e=(e=e.replace(L,"/")).replace(_,"$1/");e.match(G);)e=e.replace(G,"/");return e}function l(e){var i=e.length-1,t=e.charAt(i);return"#"===t?e.substring(0,i):".css"===e.substring(i-3)?e:".js"===e.substring(i-2)||e.indexOf("?")>0||"/"===t?e:e+".js"}function u(e){var i=I.alias;return i&&C(i[e])?i[e]:e}function s(e){var i;if(e.indexOf(".")>-1&&(i=J.exec(e))){var t;(t=i[1])&&(e=e.substring(0,e.lastIndexOf(t))),t=".js"+(t||""),e=e.split(".").join("/")+t}return e}function d(e){var i,t=I.paths;return t&&(i=e.match(q))&&C(t[i[1]])&&(e=t[i[1]]+i[2]),e}function c(e){var i=I.vars;return i&&e.indexOf("{")>-1&&(e=e.replace(z,function(e,t){return C(i[t])?i[t]:e})),e}function g(e){var i=I.map,t=e;if(i)for(var n=0,r=i.length;n<r;n++){var a=i[n];if((t=k(a)?a(e)||e:e.replace(a[0],a[1]))!==e)break}return t}function p(e,i){var t,n=e.charAt(0);if(M.test(e))t=e;else if("."===n)t=o((i?a(i):I.cwd)+e);else if("/"===n){var r=I.cwd.match(V);t=r?r[0]+e.substring(1):e}else t=I.base+e;return 0===t.indexOf("//")&&(t=location.protocol+t),t}function f(e,i,t){var n=ie.test(e),r=$.createElement(n?"link":"script");if(t){var a=k(t)?t(e):t;a&&(r.charset=a)}return b(r,i,n,e),n?(r.rel="stylesheet",r.href=e):(r.async=!0,r.src=e),K=r,ee?Y.insertBefore(r,ee):Y.appendChild(r),K=null,r}function b(e,i,t,n){function r(){e.onload=e.onerror=e.onreadystatechange=null,t||I.debug||Y.removeChild(e),e=null,i()}var a="onload"in e;!t||!te&&a?a?(e.onload=r,e.onerror=function(){Q("error",{uri:n,node:e}),r()}):e.onreadystatechange=function(){/loaded|complete/.test(e.readyState)&&r()}:setTimeout(function(){h(e,i)},1)}function h(e,i){var t,n=e.sheet;if(te)n&&(t=!0);else if(n)try{n.cssRules&&(t=!0)}catch(r){"NS_ERROR_DOM_SECURITY_ERR"===r.name&&(t=!0)}setTimeout(function(){t?i():h(e,i)},20)}function m(){if(K)return K;if(Z&&"interactive"===Z.readyState)return Z;for(var e=Y.getElementsByTagName("script"),i=e.length-1;i>=0;i--){var t=e[i];if("interactive"===t.readyState)return Z=t}}function v(e){var i=oe.exec(e),t=re;if(!i)return[];"require"!==(i=i[1])&&(t=(t=t.toString().replace(/require/g,i)).slice(1,t.length-2),t=new RegExp(t,"g"));var n=[];return e.replace(ae,"").replace(t,function(e,i,t){t&&n.push(t)}),n}function x(e,i){this.uri=e,this.dependencies=i||[],this.exports=null,this.status=0,this._waitings={},this._remain=0}function y(e){var i=I.combo;switch(typeof i){case"string":return-1===e.indexOf(i);default:return!1}}function N(e){var i=[],t=xe.exec(e[0])[1],n=t.length;r(e,function(e){i.push(e.substr(n))}),w(t,i)}function w(e,i){for(var t=[],n=0,r=i.length;n<r;n++)t[n]=i[n].replace(/\?.*$/,"");var a=e+me[0]+t.join(me[1]);fe&&(a+=fe);var o=i.length>ve;if(i.length>1&&o){var l=S(i,ve);w(e,l[0]),w(e,l[1])}else{if(o)throw new Error("The combo url is too long: "+a);for(var n=0,r=i.length;n<r;n++)he[e+i[n]]=a}}function S(e,i){for(var t=0,n=e.length;t<n;t++)if(t>i-1)return[e.splice(0,t),e]}function P(e){return ye.test(e)}function E(e){if(pe)return pe.test?pe.test(e):pe(e)}function T(e){var i=I.comboSyntax||me,t=i[0],n=i[1];return t&&e.indexOf(t)>0||n&&e.indexOf(n)>0}if(e.LBF)var U=e.LBF;var exports=e.LBF={version:"1.0.2"},I=exports.data={};exports.noConflict=function(){U&&(e.LBF=U)};var j=t("Object"),C=t("String"),D=Array.isArray||t("Array"),k=t("Function"),F=t("Number"),R=t("RegExp"),A=0,O=I.events={};exports.on=function(e,i){return(O[e]||(O[e]=[])).push(i),exports},exports.off=function(e,i){if(!e&&!i)return O=I.events={},exports;var t=O[e];if(t)if(i)for(var n=t.length-1;n>=0;n--)t[n]===i&&t.splice(n,1);else delete O[e];return exports};var Q=exports.emit=function(e,i){var t=O[e];if(t)for(var n=0,r=(t=t.slice()).length;n<r;n++)t[n](i);return exports},B=/[^?#]*\//,L=/\/\.\//g,G=/\/[^/]+\/\.\.\//,_=/([^:/])\/+\//g,q=/^([^/:]+)(\/.+)$/,z=/{([^{]+)}/g,J=/^[\w-_]*(?:\.[\w-_]+)*(\?[\w-_&=]*)?$/,M=/^\/\/.|:\//,V=/^.*?\/\/.*?\//,$=document,H=location.href&&0!==location.href.indexOf("about:")?a(location.href):"",X=$.scripts,W=a(function(e){return e.hasAttribute?e.src:e.getAttribute("src",4)}($.getElementById("LBFnode")||X[X.length-1])||H);exports.resolve=function(e,i){if(!e)return"";var t=p(e=l(e=c(e=d(e=u(e=s(e=u(e)))))),i);return t=g(t)};var K,Z,Y=$.head||$.getElementsByTagName("head")[0]||$.documentElement,ee=Y.getElementsByTagName("base")[0],ie=/\.css(?:\?|$)/i,te=+navigator.userAgent.replace(/.*(?:AppleWebKit|AndroidWebKit)\/(\d+).*/,"$1")<536;exports.request=f;var ne,re=/"(?:\\"|[^"])*"|'(?:\\'|[^'])*'|\/\*[\S\s]*?\*\/|\/(?:\\\/|[^/\r\n])+\/(?=[^\/])|\/\/.*|\.\s*require|(?:^|[^$])\brequire\s*\(\s*(["'])(.+?)\1\s*\)/g,ae=/\\\\/g,oe=/^function[\s]*\([\s]*([^\s,\)]+)/,le=exports.cache={},ue={},se={},de={},ce=x.STATUS={FETCHING:1,SAVED:2,LOADING:3,LOADED:4,EXECUTING:5,EXECUTED:6};x.prototype.resolve=function(){for(var e=this,i=e.dependencies,t=[],n=I.ignoreCss,r=0,a=i.length;r<a;r++)n&&-1!==i[r].indexOf(".css")&&(!0===n||D(n)&&-1!==inArray(e.id,n))||t.push(x.resolve(i[r],e.uri));return t},x.prototype.load=function(){var e=this;if(!(e.status>=ce.LOADING)){e.status=ce.LOADING;var i=e.resolve();Q("beforeload",i),Q("load",i);for(var t,n=e._remain=i.length,r=0;r<n;r++)(t=x.get(i[r])).status<ce.LOADED?t._waitings[e.uri]=(t._waitings[e.uri]||0)+1:e._remain--;if(0!==e._remain){var a={};for(r=0;r<n;r++)(t=le[i[r]]).status<ce.FETCHING?t.fetch(a):t.status===ce.SAVED&&t.load();for(var o in a)a.hasOwnProperty(o)&&a[o]()}else e.onload()}},x.prototype.onload=function(){var e=this;e.status=ce.LOADED,e.callback&&e.callback();var i,t,n=e._waitings;for(i in n)n.hasOwnProperty(i)&&((t=le[i])._remain-=n[i],0===t._remain&&t.onload());delete e._waitings,delete e._remain},x.prototype.fetch=function(e){function i(){exports.request(r.requestUri,r.onRequest,r.charset)}var t=this,n=t.uri;t.status=ce.FETCHING;var r={uri:n};Q("fetch",r);var a=r.requestUri||n;a&&!se[a]?ue[a]?de[a].push(t):(ue[a]=!0,de[a]=[t],Q("request",r={uri:n,requestUri:a,onRequest:function(){delete ue[a],se[a]=!0,ne&&(x.save(n,ne),ne=null);var e,i=de[a];for(delete de[a];e=i.shift();)e.load()},charset:I.charset}),r.requested||(e?e[r.requestUri]=i:i())):t.load()},x.prototype.exec=function(){function require(e){return x.get(require.resolve(e)).exec()}var e=this;if(e.status>=ce.EXECUTING)return e.exports;e.status=ce.EXECUTING;var i=e.uri;require.resolve=function(e){return x.resolve(e,i)},require.async=function(e,t){return x.use(e,t,i+"_async_"+n()),require};var t=e.factory,exports=k(t)?t(require,e.exports={},e):t;return void 0===exports&&(exports=e.exports),delete e.factory,e.exports=exports,e.status=ce.EXECUTED,Q("exec",e),exports},x.resolve=function(e,i){var t={id:e,refUri:i};return Q("resolve",t),t.uri||exports.resolve(t.id,i)},x.define=function(e,i,t){var n=arguments.length;1===n?(t=e,e=void 0):2===n&&(t=i,D(e)?(i=e,e=void 0):i=void 0),!D(i)&&k(t)&&(i=v(t.toString()));var r={id:e,uri:x.resolve(e),deps:i,factory:t};if(!r.uri&&$.attachEvent){var a=m();a&&(r.uri=a.src)}Q("define",r),r.uri?x.save(r.uri,r):ne=r},x.save=function(e,i){var t=x.get(e);t.status<ce.SAVED&&(t.id=i.id||e,t.dependencies=i.deps||[],t.factory=i.factory,t.status=ce.SAVED,Q("save",t))},x.get=function(e,i){return le[e]||(le[e]=new x(e,i))},x.use=function(i,t,n){var i=function(e){var e=D(e)?e:[e],i={},t=[],n=0,r=I.deps;for(n=0;n<e.length;n++)if(!i[e[n]]){i[e[n]]=!0,t.push(e[n]);for(var a=r[e[n]]||[],o=0;o<a.length;o++)e.push(a[o])}return t}(i),r=x.get(n,D(i)?i:[i]);r.callback=function(){for(var exports=[],i=r.resolve(),n=0,a=i.length;n<a;n++)exports[n]=le[i[n]].exec();t&&t.apply(e,exports),delete r.callback},r.load()},x.preload=function(e){var i=I.preload,t=i.length;t?x.use(i,function(){i.splice(0,t),x.preload(e)},I.cwd+"_preload_"+n()):e()},exports.use=function(e,i){return x.preload(function(){x.use(e,i,I.cwd+"_use_"+n())}),exports},x.define.cmd={},e.define=exports.define=x.define,exports.Module=x,I.fetchedList=se,I.cid=n,exports.require=function(e){var i=x.get(x.resolve(e));return i.status<ce.EXECUTING&&(i.onload(),i.exec()),i.exports},I.base=W,I.dir=W,I.cwd=H,I.charset="utf-8",I.preload=[],I.deps={},exports.config=function(e){for(var i in e){var t=e[i],n=I[i];if(n&&j(n))for(var r in t)n[r]=t[r];else D(n)?t=n.concat(t):"base"===i&&("/"!==t.slice(-1)&&(t+="/"),t=p(t)),I[i]=t}return Q("config",e),exports};var ge=[["globalSettings",exports.data],["lang.forEach",r],["lang.isType",t],["lang.isObject",j],["lang.isString",C],["lang.isArray",D],["lang.isFunction",k],["lang.isNumber",F],["lang.isRegExp",R],["util.request",f]];e.JSON&&ge.push(["lang.JSON",e.JSON]),e.jQuery&&0===(e.jQuery.version||"").indexOf("1.7")&&ge.push(["lib.jQuery",e.jQuery]),r(ge,function(e){exports.define(e[0],function(require,exports,module){module.exports=e[1]})});var pe,fe,be=(x=LBF.Module).STATUS.FETCHING,he=(I=LBF.data).comboHash={},me=["c/=/",",/"],ve=20;LBF.on("load",function(e){var i=e.length;if(!(i<2)&&I.combo){I.comboSyntax&&(me=I.comboSyntax),I.comboMaxLength&&(ve=I.comboMaxLength),I.comboSuffix&&(fe=I.comboSuffix),pe=I.comboExcludes;for(var t=[],n=0;n<i;n++){var r=e[n];he[r]||y(r)||x.get(r).status<be&&!P(r)&&!E(r)&&!T(r)&&t.push(r)}t.length>1&&N(t)}}),LBF.on("fetch",function(e){I.combo&&(e.requestUri=he[e.uri]||e.uri)});var xe=/^(\S+:\/{2,3}[^\/]+\/)/,ye=/\.css(?:\?.*)?$/;if(I.test){var Ne=LBF.test||(LBF.test={});Ne.uris2paths=N,Ne.paths2hash=paths2hash}LBF.config({alias:{globalSettings:W+"globalSettings"},vars:{theme:W+"ui/themes/default"},paths:{app:W+"app",lang:W+"lang",monitor:W+"monitor",lib:W+"lib",ui:W+"ui",util:W+"util"}}),LBF.config({"deps":{"app.Collection":["lang.isFunction","lang.JSON","app.REST","util.Promise","util.Tasks","lib.Backbone","lib.underscore","app.RESTSync"],"app.Model":["lang.isFunction","lang.JSON","app.REST","util.Promise","util.Tasks","lib.Backbone","lib.underscore","app.RESTSync"],"app.REST":["lang.extend","lang.forEach","lang.JSON","lang.isFunction","lib.jQuery","util.Attribute","util.Event","app.RESTPlugins.errorLog","app.RESTPlugins.speedReport","app.RESTPlugins.CSRFPatch"],"app.RESTPlugins.CSRFPatch":["util.Cookie"],"app.RESTPlugins.errorLog":["monitor.logger","lang.extend"],"app.RESTPlugins.speedReport":["lang.extend","monitor.SpeedReport"],"app.RESTSync":["lib.underscore"],"app.Router":["lib.Backbone"],"app.View":["lang.extend","lib.jQuery","lib.Backbone","lib.underscore","util.template"],"lang.Class":["lang.toArray","lang.extend"],"lang.extend":["lang.isPlainObject"],"lang.Inject":["lang.each"],"lang.isPlainObject":["lang.isObject"],"lib.Backbone":["lib.underscore","lib.jQuery","lang.JSON","lib.underscore"],"lib.Highcharts":["lib.jQuery"],"lib.jQuery":["globalSettings","util.Cookie"],"monitor.SpeedReport":["util.report","lang.Class","util.serialize","util.Attribute"],"ui.Nodes.Button":["lang.browser","ui.Nodes.Node"],"ui.Nodes.Checkbox":["lib.jQuery","ui.Nodes.Node","lang.each","lang.extend"],"ui.Nodes.Gotop":["lib.jQuery","util.zIndexGenerator","ui.Nodes.Node"],"ui.Nodes.Node":["lang.each","util.defaults","lang.extend","lang.proxy","lang.Inject","util.template","util.Attribute","lang.trim","lang.isString","lib.jQuery","lang.Class"],"ui.Nodes.Pagination":["lang.isNumber","lang.extend","ui.Nodes.Node"],"ui.Nodes.Popup":["util.Style","lib.jQuery","lang.browser","ui.Nodes.Node","util.zIndexGenerator","{theme}/lbfUI/css/Popup.css"],"ui.Nodes.Radio":["lib.jQuery","ui.Nodes.Node","lang.each","lang.extend"],"ui.Nodes.Textarea":["lang.browser","ui.Nodes.Node"],"ui.Nodes.TextInput":["lang.forEach","lang.browser","lang.isArray","ui.Nodes.Node"],"ui.Nodes.Tip":["lib.jQuery","lang.extend","util.zIndexGenerator","ui.Nodes.Node","ui.widget.Dropdown.Dropdown","{theme}/lbfUI/css/Tip.css"],"ui.Plugins.Cursor":["ui.Plugins.Plugin"],"ui.Plugins.Drag":["util.Style","ui.Plugins.Plugin","util.zIndexGenerator","{theme}/lbfUI/css/Drag.css"],"ui.Plugins.DragDrop":["lang.extend","ui.Plugins.Drag"],"ui.Plugins.Overlay":["lang.proxy","lang.Inject","util.Style","util.zIndexGenerator","lib.jQuery","ui.Plugins.Plugin"],"ui.Plugins.Pin":["lib.jQuery","ui.Plugins.Plugin","util.zIndexGenerator"],"ui.Plugins.Plugin":["lang.each","lang.proxy","ui.Nodes.Node"],"ui.widget.CheckboxGroup.CheckboxGroup":["lib.jQuery","ui.Nodes.Node","ui.Nodes.Checkbox"],"ui.widget.Clipboard.Clipboard":["ui.Nodes.Node","lang.browser"],"ui.widget.ComboBox.ComboBox":["lib.jQuery","lang.each","lang.isArray","lang.isFunction","lang.isObject","lang.isNumber","lang.proxy","util.template","lang.extend","util.zIndexGenerator","ui.Nodes.Node","ui.widget.Dropdown.Dropdown","util.xssFilter"],"ui.widget.DatePicker.DatePicker":["lang.proxy","lang.forEach","lang.isNumber","lang.dateTool","lang.extend","util.contains","ui.widget.Dropdown.Dropdown","ui.widget.DatePicker.DatePickerTemplate","{theme}/lbfUI/css/DatePicker.css"],"ui.widget.DatePicker.DatePickerRange":["ui.widget.DatePicker.DatePicker","lang.extend","lang.proxy","ui.Nodes.Popup","lang.dateTool","ui.widget.DatePicker.DatePickerRangeTemplate"],"ui.widget.Dropdown.Dropdown":["lang.proxy","util.template","util.zIndexGenerator","ui.Nodes.Popup","{theme}/lbfUI/css/Dropdown.css"],"ui.widget.FileUploader.ajaxUpload.ajaxUpload":["lang.proxy","ui.Nodes.Node","ui.Nodes.Button","lang.isFunction","lang.browser","util.Cookie"],"ui.widget.FileUploader.FileUploader":["lib.jQuery","ui.Nodes.Node","{theme}/lbfUI/css/FileUploader.css"],"ui.widget.FileUploader.iframeUpload.iframeUpload":["lang.proxy","lang.browser","ui.Nodes.Node","ui.Nodes.Button","lang.isFunction","util.Cookie","lang.extend"],"ui.widget.FileUploader.swfUpload.init":["lib.jQuery","lang.proxy","lang.extend","ui.Nodes.Node","ui.Nodes.Button","lang.isFunction","util.Cookie","ui.widget.FileUploader.swfUpload.swfUploadQueue"],"ui.widget.FileUploader.swfUpload.swfUploadQueue":["ui.widget.FileUploader.swfUpload.swfUpload"],"ui.widget.ImageCrop.ImageCrop":["ui.Nodes.Node","lib.jQuery","lang.isFunction","ui.widget.Panel.Panel","lang.extend","ui.widget.FileUploader.FileUploader","util.imageLoader","{theme}/lbfUI/css/ImageCrop.css","ui.widget.ImageCrop.mouseWheel"],"ui.widget.ImageViewer.ImageViewer":["lang.proxy","lang.browser","ui.Nodes.Tip"],"ui.widget.JScrollPane.JScrollPane":["lib.jQuery","util.mouseWheel","{theme}/lbfUI/css/JScrollPane.css"],"ui.widget.LightTip.LightTip":["lib.jQuery","lang.extend","ui.Nodes.Node","ui.Nodes.Popup","ui.Plugins.Overlay","util.zIndexGenerator","{theme}/lbfUI/css/LightTip.css"],"ui.widget.Menu.Menu":["lang.proxy","lang.extend","lang.forEach","lang.isArray","util.template","util.zIndexGenerator","ui.widget.Dropdown.Dropdown","{theme}/lbfUI/css/Menu.css"],"ui.widget.NumberSpinner.NumberSpinner":["lang.isNumber","lang.extend","ui.Nodes.Node","{theme}/lbfUI/css/NumberSpinner.css"],"ui.widget.Panel.Panel":["lib.jQuery","lang.forEach","lang.proxy","lang.extend","lang.Inject","util.zIndexGenerator","util.Shortcuts","ui.Nodes.Node","ui.Nodes.Popup","ui.Nodes.Button","ui.Plugins.Drag","ui.Plugins.Overlay","{theme}/lbfUI/css/Panel.css"],"ui.widget.RegionSelector.RegionSelector":["ui.Nodes.Node","ui.widget.ComboBox.ComboBox","util.regionData","lang.each","lang.isArray"],"ui.widget.Scrollspy.Scrollspy":["lib.jQuery","ui.Nodes.Node","lang.extend","{theme}/lbfUI/css/Scrollspy.css"],"ui.widget.Slides.Slides":["lib.jQuery","ui.Nodes.Node","{theme}/lbfUI/css/Slides.css"],"ui.widget.State.State":["ui.Nodes.Node","ui.Nodes.Popup","lang.proxy","lang.extend","lib.jQuery"],"ui.widget.Switchable.Switchable":["lib.jQuery","ui.Nodes.Node"],"ui.widget.TimePicker.TimePicker":["lib.jQuery","lang.extend","ui.widget.Dropdown.Dropdown","ui.widget.TimePicker.TimePickerTemplate","{theme}/lbfUI/css/TimePicker.css"],"ui.widget.ZTree.ZTree":["lib.jQuery","{theme}/lbfUI/css/zTreeStyle.css"],"util.Attribute":["lang.extend"],"util.Callbacks":["lang.Class","lang.forEach","lang.extend","lang.isFunction","lang.isString","lang.inArray"],"util.Event":["lang.toArray","util.Callbacks"],"util.eventProxy":["lang.extend","lib.Backbone"],"util.imageLoader":["lang.browser"],"util.jsonp":["util.request","util.serialize"],"util.localStorage":["util.Cookie","lang.trim"],"util.Promise":["lang.Class","lang.forEach","lang.extend","lang.proxy","lang.toArray","lang.isFunction","util.Callbacks"],"util.ptLoginHelper":["util.RSA","util.TEA","util.md5"],"util.PubSub":["lang.extend","util.Event"],"util.Range":["lang.Class","lang.isString","util.contains"],"util.requestAnimationFrame":["lang.proxy"],"util.Selection":["lang.Class","util.Range"],"util.sessionStorage":["util.localStorage","util.Cookie","util.domain"],"util.Style":["lib.jQuery"],"util.Tasks":["lang.proxy"],"util.Validform":["{theme}/lbfUI/css/Validform.css","ui.Nodes.Node","lib.jQuery","lang.extend","lang.isFunction","lang.isRegExp"]}})}(this);