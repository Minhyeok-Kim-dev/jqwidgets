(function (a) {
	a.jqx.jqxWidget("jqxForm", "", {});
	a.extend(a.jqx._jqxForm.prototype, {
		defineInstance: function () {
			var b = {
				padding: {
					left: 5,
					top: 5,
					right: 5,
					bottom: 5
				},
				backgroundColor: "#FFFFFF",
				borderColor: "#E5E5E5",
				value: {},
				template: [{
						type: "text",
						label: "TextBox 1"
					}, {
						type: "text",
						label: "TextBox 2"
					}, ]
			};
			a.extend(true, this, b)
		},
		createInstance: function (c) {
			var b = this;
			b._isInitialized = false;
			var d = b.host;
			d.addClass(b.toThemeProperty("jqx-widget"));
			b._renderAndInit();
			this._setValue(this.value);
			this._prevValue = this._getValue();
			b._isInitialized = true
		},
		destroy: function () {
			this._destroyElements();
			this.host.removeData();
			this.host.remove();
			delete this.host;
			delete this.set;
			delete this.get;
			delete this.call;
			delete this.element
		},
		_destroyElements: function () {
			for (var c = 0; c < this.template.length; c++) {
				if (a.isArray(this.template[c].columns)) {
					for (var b = 0; b < this.template[c].columns.length; b++) {
						var d = c + "_" + b;
						this._getComponentById(d).off();
						this.host.find("#rowWrap_el_" + d).remove()
					}
				}
				this._getComponentById(c).off();
				this._getComponentLabelById(c).off();
				this._getComponentLabelById(c).removeData();
				this.host.find("#rowWrap_el_" + c).remove()
			}
			this.host.find("#formWrap").remove()
		},
		val: function (b) {
			if (undefined == b) {
				return this._getValue()
			} else {
				this._setValue(b)
			}
		},
		_onChangeHandler: function (f) {
			if (!this.isInitialized || this._suppressEvents) {
				return
			}
			var c = this._getValue();
			
			if (this._prevValue && JSON.stringify(c) == JSON.stringify(this._prevValue)) {
				return
			}
			var d = new a.Event("formDataChange");
			d.args = {
				value: c,
				previousValue: this._prevValue,
				target: f.target
			};
			console.log(f.target);
			d.owner = this;
			var b = this.host.trigger(d);
			if (d.cancel) {
				this._setValue(this._prevValue)
			} else {
				this._prevValue = c
			}
			return b
		},
		_onButtonClick: function (c, d) {
			if (!this.isInitialized) {
				return
			}
			var e = new a.Event("buttonClick");
			e.args = {
				name: d.name,
				text: c.val()
			};
			e.owner = this;
			var b = this.host.trigger(e);
			return b
		},
		submit: function (f, k, b) {
			var l = this;
			var d = l._getValue(true);
			var h = "<form id='jqx_fromToSubmit'";
			if (f) {
				h += ' action="' + f + '"'
			}
			if (k) {
				h += ' target="' + k + '"'
			}
			if (b && b.toString().toLowerCase() === "get") {
				h += ' method="GET"'
			} else {
				h += ' method="POST"'
			}
			h += ">";
			for (var g = 0; g < d.length; g++) {
				var e = d[g].value;
				var j = d[g].tool;
				var c = j.name;
				if (c == undefined) {
					c = j.id
				}
				if (c == undefined) {
					c = j.bind
				}
				if (j.type == "button" || j.type == "label") {
					if (!j.submit || j.submit == false) {
						continue
					}
				}
				if (j.submit == false) {
					continue
				}
				if (c !== undefined) {
					h += '<input type="hidden" ';
					h += ' name="' + c + '"';
					h += ' value="' + e + '"';
					h += ">"
				}
			}
			h += "</form>";
			l.host.find("#formSubmit").html(h);
			l.host.find("#jqx_fromToSubmit").submit()
		},
		_getValue: function (c) {
			var e = {};
			var d = [];
			for (var h = 0; h < this.template.length; h++) {
				var k = this.template[h];
				let formId = this.host.attr("id");  // 181205_kmh      
				var l = formId + "_el_" + h;
				
				if (a.isArray(k.columns)) {
					for (var g = 0; g < k.columns.length; g++) {
						var f = k.columns[g];
						var q = l + "." + g;
						if (f.type == "option" && f.component != "jqxDropDownList") {
							var o = this._radioGroupGetValue(f, q);
							if (f.bind == undefined) {}
							else {
								this._setObjectProperty(e, f.bind, o)
							}
							if (c) {
								d.push({
									tool: f,
									value: o
								})
							}
							continue
						}
						var b = this._getComponentById(h + "_" + g);
						var n = b.val();
						if (n === undefined) {
							n = null
						}
						if (f.bind == undefined) {}
						else {
							this._setObjectProperty(e, f.bind, n)
						}
						if (c) {
							d.push({
								tool: f,
								value: n
							})
						}
					}
					continue
				}
				if (k.type == "option" && k.component != "jqxDropDownList") {
					var o = this._radioGroupGetValue(k, l);
					if (k.bind == undefined) {}
					else {
						this._setObjectProperty(e, k.bind, o)
					}
					if (c) {
						d.push({
							tool: k,
							value: o
						})
					}
					continue
				}
				var m = this._getComponentById(h);
				var n = m.val();
				if (n === undefined) {
					n = null
				}
				if (k.bind == undefined) {}
				else {
					this._setObjectProperty(e, k.bind, n)
				}
				if (c) {
					d.push({
						tool: k,
						value: n
					})
				}
			}
			if (c) {
				return d
			}
			return a.extend({}, this._prevValue, e)
		},
		_getObjectProperty: function (f, d) {
			if (typeof(f) !== "object" || f === undefined || d === undefined || d == "") {
				return f
			}
			var e = d.split(".");
			var g = f;
			for (var c = 0; c < e.length; c++) {
				g = g[e[c]]
			}
			return g
		},
		_setObjectProperty: function (g, d, e) {
			if (undefined === g) {
				return
			}
			if (undefined == d || d == "") {
				g = e;
				return
			}
			var f = d.split(".");
			var c = 0;
			while (c < f.length - 1) {
				if (undefined == g[f[c]]) {
					g[f[c]] = {}
				}
				c++
			}
			g[f[c]] = e
		},
		_setValue: function (c) {
			this._suppressEvents = true;
			for (var g = 0; g < this.template.length; g++) {
				var h = this.template[g];
				var k = "el_" + g;
				var d = undefined;
				if (a.isArray(h.columns)) {
					for (var f = 0; f < h.columns.length; f++) {
						var e = h.columns[f];
						var m = k + "." + f;
						if (!e.bind) {
							continue
						}
						d = this._getObjectProperty(c, e.bind);
						if (e.type == "option" && e.component != "jqxDropDownList") {
							this._radioGroupSetValue(e, m, d);
							continue
						}
						var b = this._getComponentById(g + "_" + f);
						if (c !== undefined) {
							b.val(d)
						}
					}
					continue
				}
				if (!h.bind) {
					continue
				}
				d = this._getObjectProperty(c, h.bind);
				if (h.type == "option" && h.component != "jqxDropDownList") {
					this._radioGroupSetValue(h, k, d);
					continue
				}
				var l = this._getComponentById(g);
				if (h.type == "label") {
					l.html(d);
					continue
				}
				if (c !== undefined) {
					l.val(d)
				}
			}
			this._prevValue = c;
			this._suppressEvents = false
		},
		_radioGroupGetValue: function (b, f) {
			for (var c = 0; c < b.options.length; c++) {
				var e = f + "_option_" + c;
				var d = this.host.find("#" + e);
				
				//alert("_radioGroupGetValue : " + d.attr("id"));
				
				if (d.length > 0) {
					var g = d.jqxRadioButton("val");
					if (g == true) {
						if (b.options[c].value !== undefined) {
							return b.options[c].value
						}
						return b.options[c].label
					}
				}
			}
			return undefined
		},
		_radioGroupSetValue: function (b, f, g) {
			for (var c = 0; c < b.options.length; c++) {
				if (b.options[c].value !== undefined) {
					if (g !== b.options[c].value) {
						continue
					}
				} else {
					if (g !== b.options[c].label) {
						continue
					}
				}
				var e = f + "_option_" + c;
				var d = this.host.find("#" + e);
				if (d.length > 0) {
					d.jqxRadioButton("val", true)
				}
			}
		},
		_getToolStyle: function (b) {
			var c = "display: block;";
			var d = ["left", "right", "top", "bottom"];
			if (b.height) {
				c += "height: " + b.height + ";"
			}
			if (b.valign !== undefined) {
				c += "vertical-align: " + b.valign + ";"
			} else {
				c += "vertical-align: middle;"
			}
			return c
		},
		_getAlignMargin: function (b, f) {
			if (!b || !b[f]) {
				return ""
			}
			var g = ["left", "right", "top", "bottom"];
			var e = {};
			var d = "";
			if (b[f]) {
				e = {};
				if (b[f] == "left") {
					e.left = "0px";
					e.right = "auto"
				} else {
					if (b[f] == "right") {
						e.left = "auto";
						e.right = "0px"
					} else {
						e.left = "auto";
						e.right = "auto"
					}
				}
			}
			if (e) {
				for (var c in g) {
					if (e[g[c]]) {
						d += "margin-" + g[c] + ": " + e[g[c]] + ";"
					}
				}
			}
			return d
		},
		_getPaddingAndMarginStyle: function (f, g) {
			var b = "";
			var h = ["left", "right", "top", "bottom"];
			var k = g ? "labelpadding" : "padding";
			var e = g ? "labelmargin" : "margin";
			var j = a.extend({
					left: 5,
					top: 5,
					right: 5,
					bottom: 5
				}, f[k]);
			for (var d in j) {
				j[d] = !isNaN(j[d]) ? j[d] : parseFloat(j[d].toString())
			}
			var c = f[e];
			if (j) {
				for (var d in h) {
					if (j[h[d]]) {
						b += "padding-" + h[d] + ": " + j[h[d]] + "px;"
					}
				}
			}
			if (c) {
				for (var d in h) {
					if (c[h[d]]) {
						b += "margin-" + h[d] + ": " + c[h[d]] + ";"
					}
				}
			}
			return b
		},
		_getToolLabelStyle: function (b) {
			var c = "display:block;";
			var d = ["left", "right", "top", "bottom"];
			if (b.labelheight !== undefined) {
				c += "height: " + b.labelheight + ";"
			} else {
				c += "height: 100%;"
			}
			if (b.labelvalign !== undefined) {
				c += "vertical-align: " + b.labelvalign + ";"
			} else {
				if (b.valign !== undefined) {
					c += "vertical-align: " + b.valign + ";"
				} else {
					c += "vertical-align: middle;"
				}
			}
			return c
		},
		_renderAndInit: function () {
			var b = this._createTemplateHtml();
			this.host.append(b);
			this._initTools()
		},
		refresh: function (c) {
			var b = this;
			if (!b._isInitialized || c === true) {
				return
			}
			var d = b.val();
			b._destroyElements();
			b._renderAndInit();
			b._prevValue = d;
			b.val(d)
		},
		_createTemplateHtml: function () {
			let groups = this.groups;
			let paddingAttr = "padding-left: " + parseFloat(this.padding.left) + "px;padding-right: " + parseFloat(this.padding.right) + "px;padding-top: " + parseFloat(this.padding.top) + "px;padding-bottom: " + parseFloat(this.padding.bottom) + "px;";
			let formWrapTbl = "<table id='formWrap' style='background-color: " + this.backgroundColor + "; width: 100%; white-space: nowrap; border: 0px;" + paddingAttr + "' cellpadding='0' cellspacing='0'><div id='formSubmit' style='display:hidden;'><div>";
			var template = this.template;
			
			let formId = this.host.attr("id");   
			for (let i = 0; i < template.length; i++) {
				let id = formId + "_el_" + i;   // 181113_kmh el_0 -> formId_el_01 
				var templateElem = this.template[i];
				var toolTemplate = this._getToolTemplate(templateElem, id);
				formWrapTbl += toolTemplate;
			}
			formWrapTbl += "</table>";
			return formWrapTbl;
		},
		_beginRow: function (e, b, c) {
			if (undefined === b) {
				b = "auto"
			}
			if (c) {
				c = "valign='" + c + "'"
			} else {
				c = ""
			}
			var d = "<tr style='width: 100%; height: " + b + ";' id='rowWrap_" + e + "' " + c + ">";
			d += "<td style='width: 100%;'><table style='width: 100%; white-space: nowrap; border: 0px;' cellspacing='0' cellpadding='0'><tr style='width: 100%'>";
			return d
		},
		_endRow: function () {
			return "<td style='width: auto; background: transparent;'> </tr></table></td></tr>"
		},
		_beginColumn: function (d, c) {
			if (!c) {
				c = ""
			}
			if (undefined === d) {
				d = "auto"
			}
			var b = "<td style='width:" + d + "; background: transparent;'>";
			b += "<div style='display:block; overflow: visible; width: 100%; background: transparent;'>";
			return b
		},
		_endColumn: function () {
			return "</div></td>"
		},
		_splitLabelToolWidth: function (e, c) {
			var h = c ? "auto" : e.columnwidth;
			var b = e.labelwidth;
			var d = a.extend({
					left: 5,
					top: 5,
					right: 5,
					bottom: 5
				}, e.padding);
			var g = a.extend({
					left: 5,
					top: 5,
					right: 5,
					bottom: 5
				}, e.labelpadding);
			for (var f in d) {
				d[f] = !isNaN(d[f]) ? d[f] : parseFloat(d[f].toString())
			}
			for (var f in g) {
				g[f] = !isNaN(g[f]) ? g[f] : parseFloat(g[f].toString())
			}
			if (e.label == "" || e.label == undefined) {
				b = 0;
				g = {
					left: 0,
					right: 0,
					top: 0,
					bottom: 0
				}
			}
			if (e.labelposition == "top" || e.labelposition == "bottom") {
				if (undefined === b) {
					b = h
				}
				if (undefined === h) {
					h = b
				}
				if (h && h.toString().indexOf("%") != -1 && b && b.toString().indexOf("%") != -1) {
					h = b = Math.max(parseFloat(h), parseFloat(b)) + "%"
				}
				if (h && h.toString().indexOf("%") == -1 && b && b.toString().indexOf("%") == -1) {
					h = b = Math.max(parseFloat(h), parseFloat(b)) + "px"
				}
				return [b, h]
			}
			if (b === undefined) {
				if (h !== undefined && h !== "auto") {
					return ["auto", h]
				} else {
					if (e.labelposition == "right") {
						if (e.align == "right" || e.align == "center" || e.align == "middle") {
							return ["auto", "100%"]
						}
						return ["100%", "auto"]
					}
					return ["auto", "100%"]
				}
			} else {
				if (b.toString().indexOf("%") !== -1) {
					b = parseFloat(b);
					if (h !== undefined) {
						if (h.toString().indexOf("%") !== -1) {
							h = parseFloat(h);
							return [Math.min(100, b) + "%", Math.min(h, 100 - b) + "%"]
						} else {
							h = parseFloat(h);
							return [Math.min(100, b) + "%", h]
						}
					}
					return [Math.min(100, b) + "%", Math.max(0, 100 - b) + "%"]
				} else {
					b = parseFloat(b) + g.left + g.right;
					if (h == undefined) {
						return [b + "px", "calc(100% - " + b + "px)"]
					}
					return [b + "px", h]
				}
			}
		},
		_getToolTemplate: function (h, s, j, q) {
		    
		    
			var g = {};
			for (p in h) {
				g[p.toLowerCase()] = h[p]
			}
			if (a.isArray(g.columns) && isNaN(j)) {
				var v = this._beginRow(s, g.rowheight || "auto");
				for (var A = 0; A < g.columns.length; A++) {
					var y = this._getToolTemplate(g.columns[A], (s + "_" + A), undefined, true);
					var t = "auto";
					if (g.columns[A].columnWidth !== undefined) {
						t = g.columns[A].columnWidth
					} else {
						if (g.columns[A].width !== undefined) {
							t = g.columns[A].width
						}
					}
					v += this._beginColumn(t);
					v += "<table cellspacing='0' cellpadding='0' style='width: 100%; white-space: nowrap; border: 0px;'>" + y + "</table>";
					v += this._endColumn()
				}
				v += this._endRow();
				return v
			}
			
			if (g.type == "option" && g.component != "jqxDropDownList") {
				if (isNaN(j)) {
					var B = this._beginRow(s, g.rowheight || "auto", g.valign);
					for (var A = 0; A < g.options.length; A++) {
						var y = this._getToolTemplate(g, (s + "_option_" + A), A, true);
						if (g.optionslayout == "horizontal") {
							var t = 100 / Math.max(1, g.options.length) + "%";
							if (g.columnwidth) {
								t = g.columnwidth
							}
							B += this._beginColumn(t);
							B += "<table cellspacing='0' cellpadding='0' style='width: 100%; white-space: nowrap; border: 0px;'>" + y + "</table>";
							B += this._endColumn()
						} else {
							B += y
						}
					}
					B += this._endRow();
					return B
				}
			}
			var d = g.labelposition;
			var m = g.label;
			var k = "";
			if (g.type == "option" && g.component != "jqxDropDownList" && !isNaN(j)) {
				var k = g.options[j].label;
				m = k
			}
			if (m === undefined) {
				m = ""
			}
			var B = "";
			var b = this._getToolLabelStyle(g) + this._getPaddingAndMarginStyle(g, true);
			var r = this._getToolStyle(g) + this._getPaddingAndMarginStyle(g, false);
			var e = "";
			var x = this._getAlignMargin(g, "align");
			var C = "text-align: left;";
			if (g.labelalign == "center" || g.labelalign == "middle") {
				C = "text-align: center"
			} else {
				if (g.labelalign == "right") {
					C = "text-align: right"
				}
			}
			var D = "text-align: left;";
			if (g.align == "center" || g.align == "middle") {
				D = "text-align: center"
			} else {
				if (g.align == "right") {
					D = "text-align: right"
				}
			}
			var o = this._splitLabelToolWidth(g, q);
			var f = m;
			if (g.required) {
				var n = "<span class='" + e + "' style='color:red;'>*</span>";
				if (g.requiredposition) {
					if (g.requiredposition.toLowerCase() == "left") {
						f = n + " " + m
					} else {
						f = m + " " + n
					}
				} else {
					f = m + " " + n
				}
			}
			var w = "";
			if (g.type == "boolean" || (g.type == "option" && !isNaN(j))) {
				w += "; cursor: pointer;"
			}
			var l = "<div class='" + e + "' style='" + b + "'><div style='" + C + w + ";' id='label_" + s + "'>" + f + "</div></div>";
			var z = (g.info !== undefined && g.infoposition != "left") ? "margin-left: -3px;" : "margin-right: -3px;";
			var c = "<div style='" + z + "' class='" + this.toThemeProperty("jqx-info-icon") + "' title='" + g.info + "'></div>";
			var u = "<div style='background: transparent;" + r + "'><div style='width: auto; height: auto; " + x + "' id='" + s + "'></div></div>";
			if (g.type == "text" || g.type == "button") {
				u = "<div style='background: transparent;" + r + D + "'><input style='width: auto; height: auto; " + x + "' id='" + s + "' type='" + g.type + "'/></div>"
			} else {
				if (g.type == "password") {
					u = "<div style='background: transparent;" + r + D + "'><input type='password' style='width: auto; height: auto; " + x + "' id='" + s + "'/></div>"
				} else if (g.type === "formattedinput") {   
				    // 181120_kmh formattedinput element 추가
				    u = "<div style='background: transparent;" + r + D + "'>" +
				            "<div style='width: auto; height: auto; " + x + "' id='" + s + "'>" + 
				                "<input type='text' />" +
    				    		"<div></div>" +
    				    		"<div></div>" +
				    		"</div>" + 
		    		    "</div>";
	            } else if (g.type === "complexinput") {
	                // 181121_kmh complexinput element 추가
	                u = "<div style='background: transparent;" + r + D + "'>" +
                            "<div style='width: auto; height: auto; " + x + "' id='" + s + "'>" + 
                                "<input type='text' />" +
                                "<div></div>" +
                            "</div>" + 
                        "</div>";
	            }
			} 
			if (g.type == "option" && g.component != "jqxDropDownList" && !isNaN(j)) {
				var t = g.width;
				if (t === undefined) {
					t = "15px"
				}
				o = [g.labelwidth || "auto", t];
				if (g.labelposition && (g.labelposition == "top" || g.labelposition == "bottom")) {
					o = ["100%", "100%"]
				}
				u = "<div style='background: transparent;" + r + x + D + "'><div style='width: " + t + "; height: 100%; " + x + D + ";' id='" + s + "'></div></div>"
			}
			if (g.info !== undefined && g.info !== "") {
				if (g.infoposition == "left") {
					u = "<table cellspacing='0' cellpadding='0' style='border: 0px; white-space: nowrap;" + x + "'><tr><td>" + c + "</td><td>" + u + "</td></tr></table>"
				} else {
					u = "<table cellspacing='0' cellpadding='0' style='border: 0px; white-space: nowrap;" + x + "'><tr><td>" + u + "</td><td>" + c + "</td></tr></table>"
				}
			}
			if (d == "right") {
				B += this._beginRow(s, g.rowheight || "auto", g.valign);
				B += this._beginColumn(o[1]);
				B += u;
				if (m != "") {
					B += this._endColumn();
					B += this._beginColumn(o[0]);
					B += l
				}
				B += this._endColumn();
				B += this._endRow()
			} else {
				if (d == "top") {
					B += this._beginRow(s, g.rowheight || "auto", g.valign);
					B += this._beginColumn(g.columnwidth);
					if (m != "") {
						B += l
					}
					B += u;
					B += this._endColumn();
					B += this._endRow()
				} else {
					if (d == "bottom") {
						B += this._beginRow(s, g.rowheight || "auto", g.valign);
						B += this._beginColumn(g.columnwidth);
						B += u;
						if (m != "") {
							B += l
						}
						B += this._endColumn();
						B += this._endRow()
					} else {
						B += this._beginRow(s, g.rowheight || "auto", g.valign);
						if (m != "") {
							B += this._beginColumn(o[0]);
							B += l;
							B += this._endColumn()
						}
						B += this._beginColumn(o[1]);
						B += u;
						B += this._endColumn();
						B += this._endRow()
					}
				}
			}
			
			return B
		},
		_initTools: function (f, e) {
			var d = f || this.template;
			if (undefined == e) {
				e = ""
			}
			for (var c = 0; c < d.length; c++) {
				var b = d[c];
				if (a.isArray(b.columns)) {
					this._initTools(b.columns, c + "_");
					continue
				}
				var g = e + c;
				switch (b.type) {
				case "color":
					this._initColorTool(g);
					break;
				// radio button
				case "option":
					if (b.component == "jqxDropDownList") {
						this._initOptionToolDropDownList(g)
					} else {
						this._initOptionTool(g);
					}
					break;
				// TODO : option -> jqxDropDownList 처리  dropDownList로 통합?
				case "dropdownlist":
				case "dropDownList":
					this._initOptionToolDropDownList(g);
					break;
				case "number":
				case "numberinput":
					this._initNumberTool(g);
					break;
				case "boolean":
				case "checkbox":
					this._initBooleanTool(g);
					break;
				case "text":
					this._initTextTool(g);
					break;
				case "password":
					this._initPasswordTool(g);
					break;
				case "label":
					this._initLabelTool(g);
					break;
				case "date":
				case "time":
				case "datetime":
					this._initDateTimeTool(g);
					break;
				case "button":
					this._initButtonTool(g);
					break;
				case "repeatButton":
				    this._initRepeatButtonTool(g);
				    break;
				case "toggleButton":
				    this._initToggleButtonTool(g);
				    break;
				case "linkButton":
				    this._initLinkButtonTool(g);
				    break;
				case "switchButton":
					this._initSwitchButtonTool(g);
					break;
				case "dropDownButton":
					this._initDropDownButtonTool(g);
					break;
				    
				    
				case "custom":
					this._initCustomTool(g);
					break;
				case "maskedinput":
				    this._initMaskedInputTool(g);
				    break;
				case "formattedinput":
				    this._initFormattedInputTool(g);
				    break;
				case "complexinput":
				    this._initComplexInputTool(g);
				    break;
				}
				if (b.visible === false) {
					this._showhideComponent(undefined, g, false)
				}
				if (b.theme) {
					this._setToolTheme(b, g)
				}
			}
		},
		_setToolTheme: function (c, e) {
			var b = this._getComponentById(e);
			var d = c.theme || this.theme;
			switch (c.type) {
			case "option":
				if (c.component == "jqxDropDownList") {
					b.jqxDropDownList("theme", d)
				}
				break;
			case "number":
				b.jqxNumberInput("theme", d);
				break;
			case "text":
				b.jqxInput("theme", d);
				break;
			case "password":
				b.jqxPasswordInput("theme", d);
				break
			}
		},
		// TODO : 여기부터
		_initOptionTool: function (seq) {
			let _this = this;
            let formId = this.host.attr("id");
            let id = formId + "_el_" + seq;
            let obj = _this._getTool(seq);
            
            
            for(let i = 0; i < obj.options.length; i++) {
                let optionId = id + "_option_" + i;
                let elem = _this.host.find("#" + optionId);
                
                if(elem.length > 0) {
                    let animationShowDelay = typeof obj.animationShowDelay === "undefined" ? 300 : obj.animationShowDelay;
                    let animationHideDelay = typeof obj.animationHideDelay === "undefined" ? 300 : obj.animationHideDelay;
                    let boxSize = typeof obj.boxSize === "undefined" ? "16px" : obj.boxSize;
                    let checked = typeof obj.checked === "undefined" ? false : obj.checked;
                    let disabled = typeof obj.disabled === "undefined" ? false : obj.disabled;
                    let enableContainerClick = typeof obj.enableContainerClick === "undefined" ? true : obj.enableContainerClick;
                    let groupName = typeof obj.groupName === "undefined" ? "" : obj.groupName;
                    let hasThreeStates = typeof obj.hasThreeStates === "undefined" ? false : obj.hasThreeStates;
                    let height = typeof obj.height === "undefined" ? null : obj.height;
                    let rtl = typeof obj.rtl === "undefined" ? false : obj.rtl;
                    let theme = typeof obj.theme === "undefined" ? "" : obj.theme;
                    let width = typeof obj.width === "undefined" ? 25 : obj.width;
                    
                    elem.jqxRadioButton({
                        "animationShowDelay" : animationShowDelay,
                        "animationHideDelay" : animationHideDelay,
                        "boxSize" : boxSize,
                        "checked" : checked,
                        "disabled" : disabled,
                        "enableContainerClick" : enableContainerClick,
                        "groupName" : groupName,
                        //"groupName" : "group_" + seq
                        "hasThreeStates" : hasThreeStates,
                        "height" : height,
                        "rtl" : rtl,
                        "theme" : theme,
                        "width" : width,
                        
                        "events" : ["checked", "unchecked", "indeterminate", "change"]
                    });
                    
                    elem.on("change", function(event) {
                        _this._onChangeHandler(event);
                    });
                }
                
                
                
                let labelElem = _this.host.find("#label_" + optionId);
                labelElem.data("el", elem);
                labelElem.on("mousedown", function(e) {
                    let radioElem = a(this).data("el");
                    radioElem.jqxRadioButton("toggle");
                });
            }
		},
		_initOptionToolDropDownList: function (seq) {
			let _this = this;
            let formId = this.host.attr("id");
            let id = formId + "_el_" + seq;
            let obj = _this._getTool(seq);
            let elem = this.host.find("#" + id);
            
            /*
			var _this = this;
			var id = "el_" + seq;
			var obj =  _this._getTool(seq);
			var elem = this.host.find("#" + id);
			*/
			
			var divHeight = '<div style="height: 20px;"></div>';
			var source = [];
			
			if (obj.options && a.isArray(obj.options)) {     // TODO : a -> 변경
				for (let i = 0; i < obj.options.length; i++) {
				    source.push(obj.options[i]);
				}
			}
			
			if (obj.init) {
			    obj.init(elem);
			} else {
				let autoOpen = typeof obj.autoOpen === "undefined" ? false : obj.autoOpen;
				let autoItemsHeight = typeof obj.autoItemsHeight === "undefined" ? false : obj.autoItemsHeight;
				let autoDropDownHeight = typeof obj.autoDropDownHeight === "undefined" ? false : obj.autoDropDownHeight;
				let animationType = typeof obj.animationType === "undefined" ? "default" : obj.animationType;
				let checkboxes = typeof obj.checkboxes === "undefined" ? false : obj.checkboxes;
				let closeDelay = typeof obj.closeDelay === "undefined" ? 300 : obj.closeDelay;
				let disabled = typeof obj.disabled === "undefined" ? false : obj.disabled;
				let displayMember = typeof obj.displayMember === "undefined" ? "" : obj.displayMember;
				let dropDownHorizontalAlignment = typeof obj.dropDownHorizontalAlignment === "undefined" ? "left" : obj.dropDownHorizontalAlignment;
				let dropDownVerticalAlignment = typeof obj.dropDownVerticalAlignment === "undefined" ? "bottom" : obj.dropDownVerticalAlignment;
				let dropDownHeight = typeof obj.dropDownHeight === "undefined" ? 200 : obj.dropDownHeight; 
				let dropDownWidth = typeof obj.dropDownWidth === "undefined" ? "auto" : obj.dropDownWidth;
				let enableSelection = typeof obj.enableSelection === "undefined" ? true : obj.enableSelection;
				let enableBrowserBoundsDetection = typeof obj.enableBrowserBoundsDetection === "undefined" ? false : obj.enableBrowserBoundsDetection;
				let enableHover = typeof obj.enableHover === "undefined" ? true : obj.enableHover;
				let filterable = typeof obj.filterable === "undefined" ? false : obj.filterable;
				let filterHeight = typeof obj.filterHeight === "undefined" ? 27 : obj.filterHeight;
				let filterDelay = typeof obj.filterDelay === "undefined" ? 100 : obj.filterDelay;
				let filterPlaceHolder = typeof obj.filterPlaceHolder === "undefined" ? "Looking for" : obj.filterPlaceHolder;
				let height = typeof obj.height === "undefined" ? null : obj.height;
				let incrementalSearch = typeof obj.incrementalSearch === "undefined" ? true : obj.incrementalSearch;
				let incrementalSearchDelay = typeof obj.incrementalSearchDelay === "undefined" ? 700 : obj.incrementalSearchDelay;
				let itemHeight = typeof obj.itemHeight === "undefined" ? -1 : obj.itemHeight;
				let openDelay = typeof obj.openDelay === "undefined" ? 250 : obj.openDelay;
				let placeHolder = typeof obj.placeHolder === "undefined" ? "" : obj.placeHolder;
				let popupZIndex = typeof obj.popupZIndex === "undefined" ? 2000 : obj.popupZIndex;
				let rtl = typeof obj.rtl === "undefined" ? false : obj.rtl;
				let renderer = typeof obj.renderer === "undefined" ? null : obj.renderer;
				let selectionRenderer = typeof obj.selectionRenderer === "undefined" ? null : obj.selectionRenderer;
				let searchMode = typeof obj.searchMode === "undefined" ? "startswithignorecase" : obj.searchMode;
				let scrollBarSize = typeof obj.scrollBarSize === "undefined" ? 15 : obj.scrollBarSize;
				let selectedIndex = typeof obj.selectedIndex === "undefined" ? -1 : obj.selectedIndex;
				let template = typeof obj.template === "undefined" ? "default" : obj.template;
				let theme = typeof obj.theme === "undefined" ? "" : obj.theme;
				let valueMember = typeof obj.valueMember === "undefined" ? "" : obj.valueMember;
				var width = typeof obj.width === "undefined" ? "auto" : obj.width;
				
				if (obj.width && obj.width.toString().indexOf("%") != -1 && obj.columnwidth === undefined) {
					width = "100%";
				}
				
				
				elem.jqxDropDownList({
					"autoOpen" : autoOpen,
					"autoItemsHeight" : autoItemsHeight,
					"autoDropDownHeight" : autoDropDownHeight,
					"animationType" : animationType,
					"checkboxes" : checkboxes,
					"closeDelay" : closeDelay,
					"disabled" : disabled,
					"displayMember" : displayMember,
					"dropDownHorizontalAlignment" : dropDownHorizontalAlignment,
					"dropDownVerticalAlignment" : dropDownVerticalAlignment,
					"dropDownHeight" : dropDownHeight,
					"dropDownWidth" : dropDownWidth,
					"enableSelection" : enableSelection,
					"enableBrowserBoundsDetection" : enableBrowserBoundsDetection,
					"enableHover" : enableHover,
					"filterable" : filterable,
					"filterHeight" : filterHeight,
					"filterDelay" : filterDelay,
					"filterPlaceHolder" : filterPlaceHolder,
					"height" : height,
					"incrementalSearch" : incrementalSearch,
					"incrementalSearchDelay" : incrementalSearchDelay,
					"itemHeight" : itemHeight,
					"openDelay" : openDelay,
					"placeHolder" : placeHolder,
					"popupZIndex" : popupZIndex,
					"rtl" : rtl,
					"renderer" : renderer,
					"selectionRenderer" : selectionRenderer,
					"searchMode" : searchMode,
					"scrollBarSize" : scrollBarSize,
					"selectedIndex" : selectedIndex,
					"source" : source,
					"template" : template,
					"theme" : theme,
					"valueMember" : valueMember,
					"width" : width,
					
					"events" : ["open", "close", "select", "unselect", "change", "checkChange", "bindingComplete", "itemAdd", "itemRemove", "itemUpdate"]
				});
			}
			
			elem.on("change", function (event) {
			    _this._onChangeHandler(event);
			})
		},
		_initNumberTool: function (seq) {
		    let _this = this;
		    let formId = this.host.attr("id");
            let id = formId + "_el_" + seq;
			let obj = _this._getTool(seq);
			let elem = this.host.find("#" + id);
			
			if (obj.init) {
			    obj.init(elem);
			} else {
			    let width = isNaN(parseFloat(obj.width)) ? 200 : obj.width;
				let height = isNaN(parseFloat(obj.height)) ? 25 : obj.height;
				let allowNull = typeof obj.allowNull === "undefined" ? true : obj.allowNull;
				let decimal = typeof obj.decimal === "undefined" ? 0 : obj.decimal;
				let disabled = typeof obj.disabled === "undefined" ? false : obj.disabled;
				let decimalDigits = typeof obj.decimalDigits === "undefined" ? 2 : obj.decimalDigits;
				let decimalSeparator = typeof obj.decimalSeparator === "undefined" ? "." : obj.decimalSeparator;
				let digits = typeof obj.digits === "undefined" ? 8 : obj.digits;
				let groupSeparator = typeof obj.groupSeparator === "undefined" ? "," : obj.groupSeparator;
				let groupSize = typeof obj.groupSize === "undefined" ? 3 : obj.groupSize;
				let inputMode = typeof obj.inputMode === "undefined" ? "advanced" : obj.inputMode;
				let min = typeof obj.min === "undefined" ? -99999999 : obj.min;
				let max = typeof obj.max == "undefined" ? 99999999 : obj.max;
				let negativeSymbol = typeof obj.negativeSymbol === "undefined" ? "-" : obj.negativeSymbol;
				let placeHolder = typeof obj.placeHolder === "undefined" ? "" : obj.placeHolder;
				let promptChar = typeof obj.promptChar === "undefined" ? "_" : obj.promptChar;
				let rtl = typeof obj.rtl === "undefined" ? false : obj.rtl;
				let spinButtons = typeof obj.spinButtons === "undefined" ? false : obj.spinButtons;
				let readOnly = typeof obj.readOnly === "undefined" ? false : obj.readOnly;
				let spinMode = typeof obj.spinMode === "undefined" ? "advanced" : obj.spinMode;
				let spinButtonsWidth = typeof obj.spinButtonsWidth === "undefined" ? 18 : obj.spinButtonsWidth;
				let spinButtonsStep = typeof obj.spinButtonsStep === "undefined" ? 1 : obj.spinButtonsStep;
				let symbol = typeof obj.symbol === "undefined" ? "" : obj.symbol;
				let symbolPosition = typeof obj.symbolPosition === "undefined" ? "left" : obj.symbolPosition;
				let textAlign = typeof obj.textAlign === "undefined" ? "right" : obj.textAlign;
				let template = typeof obj.template === "undefined" ? "default" : obj.template;
				let theme = typeof obj.theme === "undefined" ? "" : obj.theme;
				
				elem.jqxNumberInput({
				    "allowNull" : allowNull,
				    "decimal" : decimal,
				    "disabled" : disabled,
				    "decimalDigits" : decimalDigits,
				    "decimalSeparator" : decimalSeparator,
				    "digits" : digits,
				    "groupSeparator" : groupSeparator,
				    "groupSize" : groupSize,
				    "height" : height,
				    "inputMode" : inputMode,
				    "min" : min,
				    "max" : max,
				    "negativeSymbol" : negativeSymbol,
				    "placeHolder" : placeHolder,
				    "promptChar" : promptChar,
				    "rtl" : rtl,
				    "readOnly" : readOnly,
				    "spinMode" : spinMode,
				    "spinButtons" : spinButtons,
				    "spinButtonsWidth": spinButtonsWidth,
				    "spinButtonsStep" : spinButtonsStep,
				    "symbol" : symbol,
				    "symbolPosition" : symbolPosition,
				    "textAlign" : textAlign,
				    "template" : template,
				    "theme" : theme,
					"width" : width,
				})
			}
			elem.on("change", function (i) {
			    _this._onChangeHandler(i)
			})
		},
		_initTextTool: function (seq) {
			let _this = this;
			let formId = this.host.attr("id");
			let id = formId + "_el_" + seq;
			let obj = _this._getTool(seq);
			let elem = _this.host.find("#" + id);
			
			if (obj.init) {
			    obj.init(elem);
			} else {
			    
				let width = isNaN(parseFloat(obj.width)) ? "auto" : obj.width;
				let height = isNaN(parseFloat(obj.height)) ? "30px" : obj.height;
				let placeHolder = typeof obj.placeHolder === "undefined" ? "" : obj.placeHolder;
				let disabled = obj.disabled;
				let source = typeof obj.source === "undefined" ? [] : obj.source;
				let minLength = isNaN(parseInt(obj.minLength)) ? 1 : obj.minLength;
				let dropDownWidth = isNaN(parseFloat(obj.dropDownWidth)) ? null : obj.dropDownWidth;
				let displayMember = typeof obj.displayMember === "undefined" ? "" : obj.displayMember;
				let valueMember = typeof obj.valueMember === "undefined" ? "" : obj.valueMember;
				let items = typeof obj.items === "undefined" ? 8 : obj.items;
				let maxLength = typeof obj.maxLength === "undefined" ? null : obj.maxLength;
				let opened = typeof obj.opened === "undefined" ? false : obj.opened;
				let popupZIndex = typeof obj.popupZIndex === "undefined" ? 2000 : obj.popupZIndex;
				let renderer = typeof obj.renderer === "undefined" ? b => {return b} : obj.renderer; // this._renderer 미호출된다?
				let rtl = typeof obj.rtl === "undefined" ? false : obj.rtl;
				let theme = typeof obj.theme === "undefined" ? "" : obj.theme;
				
				// Properties
				elem.jqxInput({
					"theme" : theme,
					"width" : width,
					"height" : height,
					"placeHolder" : placeHolder,
					"disabled" : disabled,
					"source" : source,
					"minLength" : minLength,
					"dropDownWidth" : dropDownWidth,
					"displayMember" : displayMember,
					"valueMember" : valueMember,
					"items" : items,
					"maxLength" : maxLength,
					"opened" : opened,
					"popupZIndex" : popupZIndex,
					"renderer" : renderer,
					"rtl" : rtl,
				});
			}
			
			elem.on("change", function (event) {
			    _this._onChangeHandler(event);
			});
			
		},
		_initLabelTool: function (seq) {
			let _this = this;
			let id = "el_" + seq;
			let obj = _this._getTool(seq);
			let elem = this.host.find("#" + id);
			
			if (obj.render && a.isFunction(obj.render)) {    // TODO : a -> 변경
				let render = obj.render();
				elem.html(render || "")
			}
		},
		// TODO : 위치변경
		_getTool: function (e) {
			var b = this;
			var d = e.split("_");
			var c = b.template[d[0]];
			if (d[1]) {
				if (a.isArray(c.columns) && c.columns.length > d[1]) {
					return c.columns[d[1]]
				}
				return undefined
			}
			return c
		},
		_initCustomTool: function (seq) {
			let _this = this;
			let id = "el_" + seq;
			let obj = b._getTool(seq);
			let elem = this.host.find("#" + id);
			
			if (obj.init) {
			    obj.init(elem);
			}
		},
		_initButtonTool: function (seq) {
			let _this = this;
			let formId = this.host.attr("id");
            let id = formId + "_el_" + seq;
            let obj = _this._getTool(seq);
            let elem = this.host.find("#" + id);
			
			if (obj.init) {
			    obj.init(elem);
			} else {
			    let disabled = typeof obj.disabled === "undefined" ? false : obj.disabled;
                let height = isNaN(parseFloat(obj.height)) ? null : obj.height;
				let imgSrc = typeof obj.imgSrc === "undefined" ? "" : obj.imgSrc;
				let imgWidth = typeof obj.imgWidth === "undefined" ? 16 : obj.imgWidth;
				let imgHeight = typeof obj.imgHeight === "undefined" ? 16 : obj.imgHeight;
				let imgPosition = typeof obj.imgPosition === "undefined" ? "center" : obj.imgPosition;
				let roundedCorners = typeof obj.roundedCorners === "undefined" ? "all" : obj.roundedCorners;
				let rtl = typeof obj.rtl === "undefined" ? false : obj.rtl;
				let textPosition = typeof obj.textPosition === "undefined" ? "" : obj.textPosition;
				let textImageRelation = typeof obj.textImageRelation === "undefined" ? "overlay" : obj.textImageRelation; 
				let theme = typeof obj.theme === "undefined" ? "" : obj.theme;
				let template = typeof obj.template === "undefined" ? "default" : obj.template;
				let width = isNaN(parseFloat(obj.width)) ? null : obj.width;
				let value = typeof obj.value === "undefined" ? null : obj.value;
				let text = typeof obj.text === "undefined" ? "Button" : obj.text;
				
				elem.jqxButton({
				    "disabled" : disabled,
				    "height" : height,
				    "imgSrc" : imgSrc,
				    "imgWidth" : imgWidth,
				    "imgHeight" : imgHeight,
				    "imgPosition" : imgPosition,
				    "roundedCorners" : roundedCorners,
				    "rtl" : rtl,
				    "textPosition" : textPosition,
				    "textImageRelation" : textImageRelation,
					"theme" : theme,
					"template" : template,
					"width" : width,
					"value" : value
				});
				
				elem.val(obj.text === undefined ? "Button" : value);
			}
			
			/*
			_this.host.find("#" + id).on("click", function (event) {
			    _this._onButtonClick(elem, obj);
			});
			*/
		},
		_initRepeatButtonTool: function(seq) {
		    let _this = this;
            let formId = this.host.attr("id");
            let id = formId + "_el_" + seq;
            let obj = _this._getTool(seq);
            let elem = this.host.find("#" + id);
            
            if (obj.init) {
                obj.init(elem);
            } else {
                let delay = typeof obj.delay === "undefined" ? 50 : obj.delay;
                
                let disabled = typeof obj.disabled === "undefined" ? false : obj.disabled;
                let height = isNaN(parseFloat(obj.height)) ? null : obj.height;
                let imgSrc = typeof obj.imgSrc === "undefined" ? "" : obj.imgSrc;
                let imgWidth = typeof obj.imgWidth === "undefined" ? 16 : obj.imgWidth;
                let imgHeight = typeof obj.imgHeight === "undefined" ? 16 : obj.imgHeight;
                let imgPosition = typeof obj.imgPosition === "undefined" ? "center" : obj.imgPosition;
                let roundedCorners = typeof obj.roundedCorners === "undefined" ? "all" : obj.roundedCorners;
                let rtl = typeof obj.rtl === "undefined" ? false : obj.rtl;
                let textPosition = typeof obj.textPosition === "undefined" ? "" : obj.textPosition;
                let textImageRelation = typeof obj.textImageRelation === "undefined" ? "overlay" : obj.textImageRelation; 
                let theme = typeof obj.theme === "undefined" ? "" : obj.theme;
                let template = typeof obj.template === "undefined" ? "default" : obj.template;
                let width = isNaN(parseFloat(obj.width)) ? null : obj.width;
                let value = typeof obj.value === "undefined" ? null : obj.value;
                let text = typeof obj.text === "undefined" ? "Button" : obj.text;
                
                elem.jqxRepeatButton({
                    "delay" : delay,
                    
                    "disabled" : disabled,
                    "height" : height,
                    "imgSrc" : imgSrc,
                    "imgWidth" : imgWidth,
                    "imgHeight" : imgHeight,
                    "imgPosition" : imgPosition,
                    "roundedCorners" : roundedCorners,
                    "rtl" : rtl,
                    "textPosition" : textPosition,
                    "textImageRelation" : textImageRelation,
                    "theme" : theme,
                    "template" : template,
                    "width" : width,
                    "value" : value
                });
                
                elem.val(obj.text === undefined ? "Button" : value);
            }
		},
		_initToggleButtonTool: function(seq) {
		    let _this = this;
            let formId = this.host.attr("id");
            let id = formId + "_el_" + seq;
            let obj = _this._getTool(seq);
            let elem = this.host.find("#" + id);
            
            if (obj.init) {
                obj.init(elem);
            } else {
                let toggled = typeof obj.toggled === "undefined" ? false : obj.toggled;
                
                let disabled = typeof obj.disabled === "undefined" ? false : obj.disabled;
                let height = isNaN(parseFloat(obj.height)) ? null : obj.height;
                let imgSrc = typeof obj.imgSrc === "undefined" ? "" : obj.imgSrc;
                let imgWidth = typeof obj.imgWidth === "undefined" ? 16 : obj.imgWidth;
                let imgHeight = typeof obj.imgHeight === "undefined" ? 16 : obj.imgHeight;
                let imgPosition = typeof obj.imgPosition === "undefined" ? "center" : obj.imgPosition;
                let roundedCorners = typeof obj.roundedCorners === "undefined" ? "all" : obj.roundedCorners;
                let rtl = typeof obj.rtl === "undefined" ? false : obj.rtl;
                let textPosition = typeof obj.textPosition === "undefined" ? "" : obj.textPosition;
                let textImageRelation = typeof obj.textImageRelation === "undefined" ? "overlay" : obj.textImageRelation; 
                let theme = typeof obj.theme === "undefined" ? "" : obj.theme;
                let template = typeof obj.template === "undefined" ? "default" : obj.template;
                let width = isNaN(parseFloat(obj.width)) ? null : obj.width;
                let value = typeof obj.value === "undefined" ? null : obj.value;
                let text = typeof obj.text === "undefined" ? "Button" : obj.text;
                
                elem.jqxToggleButton({
                    "toggled" : toggled,
                    
                    "disabled" : disabled,
                    "height" : height,
                    "imgSrc" : imgSrc,
                    "imgWidth" : imgWidth,
                    "imgHeight" : imgHeight,
                    "imgPosition" : imgPosition,
                    "roundedCorners" : roundedCorners,
                    "rtl" : rtl,
                    "textPosition" : textPosition,
                    "textImageRelation" : textImageRelation,
                    "theme" : theme,
                    "template" : template,
                    "width" : width,
                    "value" : value
                });
                
                elem.val(obj.text === undefined ? "Button" : value);
            }
		},
		// LinkButton은 기본Button 사용. (default click event 정의)
		// - href 속성 값 없는 경우 일반버튼 click event 적용
		_initLinkButtonTool: function(seq) {
            let _this = this;
            let formId = this.host.attr("id");
            let id = formId + "_el_" + seq;
            let obj = _this._getTool(seq);
            let elem = this.host.find("#" + id);
            
            if (obj.init) {
                obj.init(elem);
            } else {
                let href = typeof obj.href === "undefined" ? null : obj.href;
                let target = typeof obj.target === "undefined" ? "_blank" : obj.target;
                
                let disabled = typeof obj.disabled === "undefined" ? false : obj.disabled;
                let height = isNaN(parseFloat(obj.height)) ? null : obj.height;
                let imgSrc = typeof obj.imgSrc === "undefined" ? "" : obj.imgSrc;
                let imgWidth = typeof obj.imgWidth === "undefined" ? 16 : obj.imgWidth;
                let imgHeight = typeof obj.imgHeight === "undefined" ? 16 : obj.imgHeight;
                let imgPosition = typeof obj.imgPosition === "undefined" ? "center" : obj.imgPosition;
                let roundedCorners = typeof obj.roundedCorners === "undefined" ? "all" : obj.roundedCorners;
                let rtl = typeof obj.rtl === "undefined" ? false : obj.rtl;
                let textPosition = typeof obj.textPosition === "undefined" ? "" : obj.textPosition;
                let textImageRelation = typeof obj.textImageRelation === "undefined" ? "overlay" : obj.textImageRelation; 
                let theme = typeof obj.theme === "undefined" ? "" : obj.theme;
                let template = typeof obj.template === "undefined" ? "default" : obj.template;
                let width = isNaN(parseFloat(obj.width)) ? null : obj.width;
                let value = typeof obj.value === "undefined" ? null : obj.value;
                let text = typeof obj.text === "undefined" ? "Button" : obj.text;
                
                elem.jqxButton({
                    "disabled" : disabled,
                    "height" : height,
                    "imgSrc" : imgSrc,
                    "imgWidth" : imgWidth,
                    "imgHeight" : imgHeight,
                    "imgPosition" : imgPosition,
                    "roundedCorners" : roundedCorners,
                    "rtl" : rtl,
                    "textPosition" : textPosition,
                    "textImageRelation" : textImageRelation,
                    "theme" : theme,
                    "template" : template,
                    "width" : width,
                    "value" : value
                });
                
                elem.val(obj.text === undefined ? "Button" : value);
                
                // click event
                _this.host.find("#" + id).on("click", function (event) {
                    if(href === "") {
                        _this._onButtonClick(elem, obj);
                    } 
                    else {
                        window.open(href, target);
                        return;
                    }
                });
            }
        },
        _initSwitchButtonTool: function(seq) {
        	let _this = this;
            let formId = this.host.attr("id");
            let id = formId + "_el_" + seq;
            let obj = _this._getTool(seq);
            let elem = this.host.find("#" + id);
            
            if (obj.init) {
                obj.init(elem);
            } else {
            	let checked = typeof obj.checked === "undefined" ? false : obj.checked;
            	let disabled = typeof obj.disabled === "undefined" ? false : obj.disabled;
            	let height = typeof obj.height === "undefined" ? 30 : obj.height;
            	let orientation = typeof obj.orientation === "undefined" ? "horizontal" : obj.orientation;
            	let onLabel = typeof obj.onLabel === "undefined" ? "On" : obj.onLabel;
            	let offLabel = typeof obj.offLabel === "undefined" ? "Off" : obj.offLabel;
            	let thumbSize = typeof obj.thumbSize === "undefined" ? "40%" : obj.thumbSize;
            	let width = typeof obj.width === "undefined" ? 90 : obj.width;
            	
                elem.jqxSwitchButton({
                	"checked" : checked,
                	"disabled" : disabled,
                	"height" : height,
                	"orientation" : orientation,
                	"onLabel" : onLabel,
                	"offLabel" : offLabel,
                	"thumbSize" : thumbSize,
                	"width" : width,
                });
            }
        },
        _initDropDownButtonTool: function(seq) {
        	let _this = this;
            let formId = this.host.attr("id");
            let id = formId + "_el_" + seq;
            let obj = _this._getTool(seq);
            let elem = this.host.find("#" + id);
            
            if (obj.init) {
                obj.init(elem);
            } else {
            	let disabled = typeof obj.disabled === "undefined" ? false : obj.disabled;
            	let animationType = typeof obj.animationType === "undefined" ? "default" : obj.animationType;
            	
            	elem.jqxDropDownButton({
            		"animationType" : animationType,
                	"disabled" : disabled,
                });
            }
        },
        // checkbox (기존 jqxform.js작명 그대로 사용)
        _initBooleanTool: function (seq) {
            let _this = this;
            let formId = this.host.attr("id");
            let id = formId + "_el_" + seq;
            let obj = _this._getTool(seq);
            let elem = this.host.find("#" + id);
            
            if (obj.init) {
                obj.init(elem);
            } else {
                let animationShowDelay = typeof obj.animationShowDelay === "undefined" ? 300 : obj.animationShowDelay;
                let animationHideDelay = typeof obj.animationHideDelay === "undefined" ? 300 : obj.animationHideDelay;
                let boxSize = typeof obj.boxSize === "undefined" ? 16 : obj.boxSize;
                let checked = typeof obj.checked === "undefined" ? false : obj.checked;
                let disabled = typeof obj.disabled === "undefined" ? false : obj.disabled;
                let enableContainerClick = typeof obj.enableContainerClick === "undefined" ? true : obj.enableContainerClick;
                let groupName = typeof obj.groupName === "undefined" ? "" : obj.groupName;
                let height = isNaN(parseFloat(obj.height)) ? 25 : obj.height;
                let hasThreeStates = typeof obj.hasThreeStates === "undefined" ? false : obj.hasThreeStates; 
                let locked = typeof obj.locked === "undefined" ? false : obj.locked;
                let rtl = typeof obj.rtl === "undefined" ? false : obj.rtl;
                let theme = typeof obj.theme === "undefined" ? "" : obj.theme;
                
                let width = isNaN(parseFloat(obj.width)) ? 50 : obj.width;
                
                if (obj.component === undefined || obj.component == "jqxCheckBox") {
                    elem.jqxCheckBox({
                        "animationShowDelay" : animationShowDelay,
                        "animationHideDelay" : animationHideDelay,
                        "boxSize" : boxSize,
                        "checked" : checked,
                        "disabled" : disabled,
                        "enableContainerClick" : enableContainerClick,
                        "groupName" : groupName,
                        "height" : height,
                        "hasThreeStates" : hasThreeStates,
                        "locked" : locked,
                        "rtl" : rtl,
                        "theme" : theme,
                        "width" : width,
                    });
                } else {
                    return;
                }
            }
            
            elem.on("change", function (event) {
                _this._onChangeHandler(event);
            });
            
            let labelElem = _this.host.find("#label_" + id);
            
            // label 선택시 check 처리
            labelElem.on("mousedown", function (evnet) {
                let enableContainerClick = typeof obj.enableContainerClick === "undefined" ? true : obj.enableContainerClick;
                
                if(enableContainerClick) {
                    let hasValue = _this.host.find("#" + id).val();
                    _this.host.find("#" + id).val(!hasValue);
                }
            })
        },
		_initPasswordTool: function (seq) {
		    let _this = this;
		    let formId = this.host.attr("id");
			let id = formId + "_el_" + seq;
			let obj = _this._getTool(seq);
			let elem = _this.host.find("#" + id);
			
			if (obj.init) {
			    obj.init(elem);
			} else {
				let width = isNaN(parseFloat(obj.width)) ? "auto" : obj.width;
				let height = isNaN(parseFloat(obj.height)) ? "25px" : obj.height;
				let disabled = obj.disabled;
				let showStrength = typeof obj.showStrength === "undefined" ? false : obj.showStrength;
				let localization = typeof obj.localization === "undefined" ? 
				        {
                            "passwordStrengthString" : "Password strength",
                            "tooShort": "Too short",
                            "weak" : "Weak",
                            "fair" : "Fair",
                            "good" : "Good",
                            "strong" : "Strong",
                            "showPasswordString" : "Show Password"
				        } : obj.localization;
				let maxLength = typeof obj.maxLength === "undefined" ? null : obj.maxLength;
				let placeHolder = typeof obj.placeHolder === "undefined" ? null : obj.placeHolder
				let passwordStrength = typeof obj.passwordStrength === "undefined" ? null : obj.passwordStrength;
				let rtl = typeof obj.rtl === "undefined" ? false : obj.rtl;
				let strengthColors = typeof obj.strenghColors === "undefined" ?
				        {
                            tooShort: "rgb(170, 0, 51)",
                            weak: "rgb(170, 0, 51)",
                            fair: "rgb(255, 204, 51)",
                            good: "rgb(45, 152, 243)",
                            strong: "rgb(118, 194, 97)"
                        } : obj.strengthColors;
				let showStrengthPosition = typeof obj.showStrengthPosition === "undefined" ?
				        "right" : obj.showStrengthPosition;
				
				let strengthTypeRenderer = typeof obj.strengthTypeRenderer === "undefined" ?
				        null : obj.strengthTypeRenderer;
				
				let showPasswordIcon = typeof obj.showPasswordIcon === "undefined" ? true : obj.showPasswordIcon;
				let theme = typeof obj.theme === "undefined" ? "" : obj.theme;
				
				// Properties
				elem.jqxPasswordInput({
				    "theme" : theme,
				    "width" : width,
				    "height" : height,
				    "disabled" : disabled,
				    "showStrength" : showStrength,
				    "localization" : localization,
				    "maxLength" : maxLength,
				    "placeHolder" : placeHolder,
				    "passwordStrength" : passwordStrength,
				    "rtl" : rtl,
				    "strengthColors" : strengthColors,
				    "showStrengthPosition" : showStrengthPosition,
				    "strengthTypeRenderer" : strengthTypeRenderer,
				    "showPasswordIcon" : showPasswordIcon,
				    
	                minLength: null,
	                changeType: null,
	                hint: true,
				});
			}
			
			elem.on("change", function (event) {
			    _this._onChangeHandler(event);
			});
		},
		_initDateTimeTool: function (seq) {
		    let _this = this;
		    let formId = this.host.attr("id");
            let id = formId + "_el_" + seq;
            let obj = _this._getTool(seq);
            let elem = _this.host.find("#" + id);
            
            if (obj.init) {
                obj.init(elem);
            } else {
                let width = isNaN(parseFloat(obj.width)) ? "auto" : obj.width;
                let height = isNaN(parseFloat(obj.height)) ? "25px" : obj.height;
                let formatString = obj.formatString;
                
                if (!formatString) {
                    if (obj.type == "time") {
                        formatString = "hh mm ss tt";
                    } else {
                        if (obj.type == "date") {
                            formatString = "MM/dd/yyyy";
                        } else {
                            formatString = "MM/dd/yyyy hh:mm:ss tt";
                        }
                    }
                }
                
                let animationType = typeof obj.animationType === "undefined" ? "slide" : obj.animationType;
                let allowNullDate = typeof obj.allowNullDate === "undefined" ? true : obj.allowNullDate;
                let allowKeyboardDelete = typeof obj.allowKeyboardDelete === "undefined" ? true : obj.allowKeyboardDelete;
                let showFooter = typeof obj.showFooter === "undefined" ? false : obj.showFooter;
                let clearString = typeof obj.clearString === "undefined" ? "Clear" : obj.clearString; 
                let culture = typeof obj.culture === "undefined" ? "default" : obj.culture;
                let closeDelay = typeof obj.closeDelay === "undefined" ? 400 : obj.closeDelay;
                let closeCalendarAfterSelection = typeof obj.closeCalendarAfterSelection === "undefined" ? true : obj.closeCalendarAfterSelection;
                let dropDownHorizontalAlignment = typeof obj.dropDownHorizontalAlignment === "undefined" ? "left" : obj.dropDownHorizontalAlignment;
                let dropDownVerticalAlignment = typeof obj.dropDownVerticalAlignment === "undefined" ? "bottom" : obj.dropDownVerticalAlignment;
                let disabled = typeof obj.disabled === "undefined" ? false : obj.disabled;
                let enableBrowserBoundsDetection = typeof obj.enableBrowserBoundsDetection === "undefined" ? false : obj.enableBrowserBoundsDetection;
                let enableAbsoluteSelection = typeof obj.enableAbsoluteSelection === "undefined" ? false : obj.enableAbsoluteSelection;
                let firstDayOfWeek = typeof obj.firstDayOfWeek === "undefined" ? 0 : obj.firstDayOfWeek;
                let min = typeof obj.min === "undefined" ? new Date(1900, 0, 1) : obj.min;
                let max = typeof obj.max === "undefined" ? new Date(2100, 0, 1) : obj.max;
                let openDelay = typeof obj.openDelay === "undefined" ? 250 : obj.openDelay;
                let placeHolder = typeof obj.placeHolder === "undefined" ? "" : obj.placeHolder;
                let popupZIndex = typeof obj.popupZIndex === "undefined" ? 2000 : obj.popupZIndex;
                let rtl = typeof obj.rtl === "undefined" ? false : obj.rtl;
                let readonly = typeof obj.readonly === "undefined" ? false : obj.readonly;
                let selectionMode = typeof obj.selectionMode === "undefined" ? "default" : obj.selectionMode;
                let showWeekNumbers = typeof obj.showWeekNumbers === "undefined" ? false : obj.showWeekNumbers;
                let showTimeButton = typeof obj.showTimeButton === "undefined" ? false : obj.showTimeButton;
                let showCalendarButton = typeof obj.showCalendarButton === "undefined" ? true : obj.showCalendarButton;
                let theme = typeof obj.theme === "undefined" ? "" : obj.theme;
                let template = typeof obj.template === "undefined" ? "default" : obj.template;
                let textAlign = typeof obj.textAlign === "undefined" ? "left" : obj.textAlign;
                let todayString = typeof obj.todayString === "undefined" ? "Today" : obj.todayString;
                let value = typeof obj.value === "undefined" ? new Date() : obj.value; 
                        
                // Properties
                elem.jqxDateTimeInput({
                    "theme": theme,
                    "width": width,
                    "height": height,
                    "formatString": formatString,
                    "animationType" : animationType,
                    "allowNullDate" : allowNullDate,
                    "allowKeyboardDelete" : allowKeyboardDelete,
                    "showFooter" : showFooter,
                    "clearString" : clearString,
                    "culture" : culture,
                    "closeDelay" : closeDelay,
                    "closeCalendarAfterSelection" : closeCalendarAfterSelection,
                    "dropDownVerticalAlignment" : dropDownVerticalAlignment,
                    "dropDownHorizontalAlignment" : dropDownHorizontalAlignment,
                    "disabled" : disabled,
                    "enableBrowserBoundsDetection" : enableBrowserBoundsDetection,
                    "enableAbsoluteSelection" : enableAbsoluteSelection,
                    "firstDayOfWeek" : firstDayOfWeek,
                    "formatString" : formatString,
                    "min" : min,
                    "max" : max,
                    "openDelay" : openDelay,
                    "placeHolder" : placeHolder,
                    "popupZIndex" : popupZIndex,
                    "rtl" : rtl,
                    "readonly" : readonly,
                    "selectionMode" : selectionMode,
                    "showWeekNumbers" : showWeekNumbers,
                    //"showTimeButton": obj.type != "date",         // TODO : date, time 분리해서 처리할건지?
                    //"showCalendarButton": obj.type != "time",
                    "showTimeButton" : showTimeButton,
                    "showCalendarButton" : showCalendarButton,
                    "template" : template,
                    "textAlign" : textAlign,
                    "todayString" : todayString,
                    "value" : value
                });
            }
            
            elem.on("valueChanged", function (event) {
                _this._onChangeHandler(event);
            })
        },
		// 180928_kmh Component 초기화 설정
		_initMaskedInputTool: function(seq) {
		    let _this = this;
		    let formId = this.host.attr("id");
            let id = formId + "_el_" + seq;
            let obj = _this._getTool(seq);
            let elem = _this.host.find("#" + id);
            
            if (obj.init) {
                obj.init(elem);
            } else {
                let disabled = typeof obj.disabled === "undefined" ? false : obj.disabled;
                let placeHolder = typeof obj.placeHolder === "undefined" ? "" : obj.placeHolder;
                let width = isNaN(parseFloat(obj.width)) ? "200px" : obj.height;
                let height = isNaN(parseFloat(obj.height)) ? "25px" : obj.height;
                let mask = typeof obj.mask === "undefined" ? "99999" : obj.mask;
                let promptChar = typeof obj.promptChar === "undefined" ? "_" : obj.promptChar;
                let readOnly = typeof obj.readOnly === "undefined" ? false : obj.readOnly;
                let rtl = typeof obj.rtl === "undefined" ? false : obj.rtl;
                let theme = typeof obj.theme === "undefined" ? "" : obj.theme;
                let textAlign = typeof obj.textAlign === "undefined" ? "left" : obj.textAlign;
                let value = typeof obj.value === "undefined" ? null : obj.value;
                
                elem.jqxMaskedInput({
                    "disabled" : disabled,
                    "placeHolder" : placeHolder, 
                    "width" : width,
                    "height" : height,
                    "mask" : mask,
                    "promptChar" : promptChar,
                    "readOnly" : readOnly,
                    "rtl" : rtl,
                    "theme" : theme,
                    "textAlign" : textAlign,
                    "value" : value
                });
            }
		},
		// 181119_kmh Component 초기화 설정
		_initFormattedInputTool: function(seq) {
		    let _this = this;
            let formId = this.host.attr("id");
            let id = formId + "_el_" + seq;
            let obj = _this._getTool(seq);
            let elem = _this.host.find("#" + id);
            
            if (obj.init) {
                obj.init(elem);
            } else {
                let disabled = typeof obj.disabled === "undefined" ? false : obj.disabled; 
                let decimalNotation = typeof obj.decimalNotation === "undefined" ? "default" : obj.decimalNotation;        
                let dropDown = typeof obj.dropDown === "undefined" ? false : obj.dropDown;
                let dropDownWidth = typeof obj.dropDownWidth === "undefined" ? null : obj.dropDownWidth; 
                let width = isNaN(parseFloat(obj.width)) ? 200 : obj.width;
                let height = isNaN(parseFloat(obj.height)) ? 25 : obj.height;
                let min = typeof obj.min === "undefined" ? "-9223372036854775808" : obj.min; 
                let max = typeof obj.max === "undefined" ? "9223372036854775807" : obj.max;
                let placeHolder = typeof obj.placeHolder === "undefined" ? "" : obj.placeHolder;
                let popupZIndex = typeof obj.popupZIndex === "undefined" ? 20000 : obj.popupZIndex;
                let roundedCorners = typeof obj.roundedCorners === "undefined" ? true : obj.roundedCorners;
                let rtl = typeof obj.rtl === "undefined" ? false : obj.rtl; 
                let radix = typeof obj.radix === "undefined" ? 10 : obj.radix;
                let spinButtons = typeof obj.spinButtons === "undefined" ? true : obj.spinButtons;
                let spinButtonsStep = typeof obj.spinButtonsStep === "undefined" ? 1 : obj.spinButtonsStep;
                let template = typeof obj.template === "undefined" ? "" : obj.template;
                let theme = typeof obj.theme === "undefined" ? "" : obj.theme; 
                let upperCase = typeof obj.upperCase === "undefined" ? "" : obj.upperCase;
                let value = typeof obj.value === "undefined" ? "0" : obj.value;
                
                elem.jqxFormattedInput({
                    "disabled" : disabled,
                    "decimalNotation" : decimalNotation,
                    "dropDown" : dropDown,
                    "dropDownWidth" : dropDownWidth,
                    "height" : height,
                    "min" : min,
                    "max" : max,
                    "placeHolder" : placeHolder,
                    "popupZIndex" : popupZIndex,
                    "roundedCorners" : roundedCorners,
                    "rtl" : rtl,
                    "radix" : radix,
                    "spinButtons" : spinButtons,
                    "spinButtonsStep" : spinButtonsStep,
                    "template" : template,
                    "theme" : theme,
                    "upperCase" : upperCase,
                    "value" : value,
                    "width" : width,

                    "changeType" : null,
                    "hint" : true,
                    "_opened" : false,
                    "$popup" : a("<ul></ul>"),
                    "item" : '<li><a href="#"></a></li>',
                });
            }
		},
		_initComplexInputTool: function(seq) {
		    let _this = this;
            let formId = this.host.attr("id");
            let id = formId + "_el_" + seq;
            let obj = _this._getTool(seq);
            let elem = _this.host.find("#" + id);
            
            if (obj.init) {
                obj.init(elem);
            } else {
                let decimalNotation = typeof obj.decimalNotation === "undefined" ? "default" : obj.decimalNotation;
                let disabled = typeof obj.disabled === "undefined" ? false : obj.disabled;
                let height = isNaN(parseFloat(obj.height)) ? 25 : obj.height;
                let placeHolder = typeof obj.placeHolder === "undefined" ? "" : obj.placeHolder;
                let roundedCorners = typeof obj.roundedCorners === "undefined" ? true : obj.roundedCorners;
                let rtl = typeof obj.rtl === "undefined" ? false : obj.rtl;
                let spinButtons = typeof obj.spinButtons === "undefined" ? false : obj.spinButtons;
                let spinButtonsStep = typeof obj.spinButtonsStep === "undefined" ? 1 : obj.spinButtonsStep;
                let template = typeof obj.template === "undefined" ? "default" : obj.template;
                let theme = typeof obj.theme === "undefined" ? "" : obj.theme;
                let value = typeof obj.value === "undefined" ? "" : obj.value;
                let width = isNaN(parseFloat(obj.width)) ? 200 : obj.width;
                
                
                elem.jqxComplexInput({
                    "decimalNotation" : decimalNotation,
                    "disabled" : disabled,
                    "height" : height,
                    "placeHolder" : placeHolder,
                    "roundedCorners" : roundedCorners,
                    "rtl" : rtl, 
                    "spinButtons" : spinButtons,
                    "spinButtonsStep" : spinButtonsStep,
                    "template" : template,
                    "theme" : theme,
                    "value" : value,
                    
                    
                    "width" : width,
                    "changeType" : null,
                    "hint" : true,
                });
            }
		},
		// 181206_kmh 
		// - param : RadioButton component
		// - return : option 객체를 반환
		getRadioOptionsByComponent: function(component) {
		    let options = new Array();
		    
		    // component 내 radiobutton영역 가져옴
		    let radioElem = component.find(".jqx-radiobutton");

	        for(let i = 0; i < radioElem.length; i++) {
	            let option = component.find("#" + radioElem[i].id);
	            
	            options.push(option);
	        }
	        
	        return options;
		},
		getComponentByName: function (c) {
			if (!a.isArray(this.template)) {
				return undefined
			}
			for (var d = 0; d < this.template.length; d++) {
			    
				if (this.template[d].name == c) {
					return this._getComponentById(d)
				}
				if (a.isArray(this.template[d].columns)) {
					for (var b = 0; b < this.template[d].columns.length; b++) {
						if (this.template[d].columns[b].name == c) {
							return this._getComponentById(d + "_" + b)
						}
					}
				}
			}
			
			return undefined
		},
		getComponentNameById: function (id) {
			if (!a.isArray(this.template)) {
				return undefined
			}
			for (var d = 0; d < this.template.length; d++) {
				if (this._getComponentById(d).attr("id") === id) {
					return this.template[d].bind;
				}
				if (a.isArray(this.template[d].columns)) {
					for (var b = 0; b < this.template[d].columns.length; b++) {
						if (this._getComponentById(d + "_" + b).attr("id") === id) {
							return this.template[d].columns[b].bind;
						}
					}
				}
			}
			return undefined;
		},
		setFocus: function (fieldNm) {
			this.getComponentByName(fieldNm).focus();
		},
		_getComponentById: function (c) {
		    let formId = this.host.attr("id");  // 181113_kmh
			var b = this.host.find("#" + formId + "_el_" + c);

			// 181206_kmh radioButton 객체 식별시 사용
			if(!b.attr("id")) {
			    b = this.host.find("#rowWrap_" + formId + "_el_" + c);
			}
			
			return b
		},
		_getComponentLabelById: function (c) {
			var b = this.host.find("#label_el_" + c);
			return b
		},
		hideComponent: function (b) {
			this._showhideComponent(b, undefined, false)
		},
		showComponent: function (b) {
			this._showhideComponent(b, undefined, true)
		},
		_showhideComponent: function (e, h, b) {
			if (!a.isArray(this.template)) {
				return
			}
			var d = "";
			if (h === undefined) {
				for (var f = 0; f < this.template.length; f++) {
					if (this.template[f].name == e) {
						d = f;
						break
					}
					if (a.isArray(this.template[f].columns)) {
						for (var c = 0; c < this.template[f].length; c++) {
							if (this.template[f].columns[c].name == e) {
								d = f + "_" + c;
								break
							}
						}
					}
				}
			} else {
				d = h
			}
			if (d != "") {
				var g = this.host.find("#rowWrap_el_" + d);
				if (g && g.length != 0) {
					if (b) {
						g.show()
					} else {
						g.hide()
					}
				}
			}
		}
	})
})(jqxBaseFramework);