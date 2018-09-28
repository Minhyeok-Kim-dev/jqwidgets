/*
jQWidgets v6.0.6 (2018-August)
Copyright (c) 2011-2018 jQWidgets.
License: https://jqwidgets.com/license/
 */
/* eslint-disable */

(function (a) {
	a.jqx.jqxWidget("jqxDateTimeInput", "", {});
	a.extend(a.jqx._jqxDateTimeInput.prototype, {
		defineInstance: function () {
			var b = {
				value: a.jqx._jqxDateTimeInput.getDateTime(new Date()),
				minDate: a.jqx._jqxDateTimeInput.getDateTime(new Date()),
				maxDate: a.jqx._jqxDateTimeInput.getDateTime(new Date()),
				min: new Date(1900, 0, 1),
				max: new Date(2100, 0, 1),
				rowHeaderWidth: 25,
				enableViews: true,
				views: ["month", "year", "decade"],
				selectableDays: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
				change: null,
				changing: null,
				titleFormat: ["MMMM yyyy", "yyyy", "yyyy", "yyyy"],
				template: "default",
				columnHeaderHeight: 20,
				titleHeight: 30,
				firstDayOfWeek: 0,
				showWeekNumbers: false,
				showTimeButton: false,
				cookies: false,
				cookieoptions: null,
				showFooter: false,
				formatString: "dd/MM/yyyy",
				width: 200,
				height: 25,
				dayNameFormat: "firstTwoLetters",
				textAlign: "left",
				readonly: false,
				culture: "default",
				activeEditor: null,
				showCalendarButton: true,
				openDelay: 250,
				closeDelay: 300,
				closeCalendarAfterSelection: true,
				isEditing: false,
				enableBrowserBoundsDetection: false,
				dropDownHorizontalAlignment: "left",
				dropDownVerticalAlignment: "bottom",
				enableAbsoluteSelection: false,
				disabled: false,
				buttonSize: 21,
				animationType: "slide",
				dropDownWidth: "200px",
				restrictedDates: new Array(),
				dropDownHeight: "205px",
				dropDownContainer: "default",
				selectionMode: "default",
				renderMode: "full",
				rtl: false,
				timeRange: null,
				_editor: false,
				todayString: "Today",
				clearString: "Clear",
				popupZIndex: 2000,
				allowNullDate: true,
				changeType: null,
				placeHolder: "",
				enableHover: true,
				hint: true,
				allowKeyboardDelete: true,
				localization: {
					backString: "Back",
					forwardString: "Forward",
					todayString: "Today",
					clearString: "Clear",
					calendar: {
						name: "Gregorian_USEnglish",
						"/": "/",
						":": ":",
						firstDay: 0,
						days: {
							names: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
							namesAbbr: ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"],
							namesShort: ["Su", "Mo", "Tu", "We", "Th", "Fr", "Sa"]
						},
						months: {
							names: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December", ""],
							namesAbbr: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec", ""]
						},
						AM: ["AM", "am", "AM"],
						PM: ["PM", "pm", "PM"],
						eras: [{
								name: "A.D.",
								start: null,
								offset: 0
							}
						],
						twoDigitYearMax: 2029,
						patterns: {
							d: "M/d/yyyy",
							D: "dddd, MMMM dd, yyyy",
							t: "h:mm tt",
							T: "h:mm:ss tt",
							f: "dddd, MMMM dd, yyyy h:mm tt",
							F: "dddd, MMMM dd, yyyy h:mm:ss tt",
							M: "MMMM dd",
							Y: "yyyy MMMM",
							S: "yyyy\u0027-\u0027MM\u0027-\u0027dd\u0027T\u0027HH\u0027:\u0027mm\u0027:\u0027ss",
							ISO: "yyyy-MM-dd hh:mm:ss"
						}
					}
				},
				events: ["valueChanged", "textchanged", "mousedown", "mouseup", "keydown", "keyup", "keypress", "open", "close", "change"],
				aria: {
					"aria-valuenow": {
						name: "getDate",
						type: "date"
					},
					"aria-valuetext": {
						name: "getText",
						type: "string"
					},
					"aria-valuemin": {
						name: "min",
						type: "date"
					},
					"aria-valuemax": {
						name: "max",
						type: "date"
					},
					"aria-disabled": {
						name: "disabled",
						type: "boolean"
					}
				}
			};
			if (this === a.jqx._jqxDateTimeInput.prototype) {
				return b
			}
			a.extend(true, this, b);
			this.value._setHours(0);
			this.value._setMinutes(0);
			this.value._setSeconds(0);
			this.value._setMilliseconds(0);
			this.minDate._setYear(1900);
			this.minDate._setMonth(1);
			this.minDate._setDay(1);
			this.minDate._setHours(1);
			this.minDate._setMinutes(1);
			this.minDate._setSeconds(1);
			this.minDate._setMilliseconds(1);
			this.maxDate._setYear(2100);
			this.maxDate._setMonth(1);
			this.maxDate._setDay(1);
			this.maxDate._setHours(1);
			this.maxDate._setMinutes(1);
			this.maxDate._setSeconds(1);
			this.maxDate._setMilliseconds(1);
			this.defaultMinDate = this.minDate;
			this.defaultMaxDate = this.maxDate;
			return b
		},
		createInstance: function (d) {
			var l = "";
			var k = this;
			if (!k.host.jqxCalendar) {
				throw new Error("jqxDateTimeInput: Missing reference to jqxcalendar.js.")
			}
			if (k.formatString != "dd/MM/yyyy") {
				var g = k.formatString.split(" ");
				if (g && g.length > 1) {
					var c = "";
					for (var q = 0; q < g.length; q++) {
						if (g[q].length == "1") {
							c += k._getFormatValue(g[q])
						} else {
							c += g[q]
						}
						if (q < g.length - 1) {
							c += " "
						}
					}
					k.formatString = c
				}
			}
			if (k.element.nodeName.toLowerCase() == "input") {
				var m = k.element.getAttribute("type");
				if (m) {
					if (k.formatString == "dd/MM/yyyy") {
						if (m == "date") {
							k.formatString = "d"
						}
						if (m == "datetime") {
							var h = k._getFormatValue("d") + " " + k._getFormatValue("t");
							k.formatString = h;
							k.showTimeButton = true
						}
						if (m == "time") {
							k.formatString = "t";
							k.showTimeButton = true;
							k.showCalendarButton = false
						}
					}
				}
				k.field = k.element;
				if (k.field.getAttribute("min")) {
					var n = new Date(k.field.getAttribute("min"));
					if (k._isValidDate(n)) {
						k.min = n
					}
				}
				if (k.field.getAttribute("max")) {
					var p = new Date(k.field.getAttribute("max"));
					if (k._isValidDate(p)) {
						k.max = p
					}
				}
				if (k.field.className) {
					k._className = k.field.className
				}
				var j = {
					title: k.field.title
				};
				if (k.field.value) {
					j.value = k.field.value
				}
				if (k.field.id.length) {
					j.id = k.field.id.replace(/[^\w]/g, "_") + "_jqxDateTimeInput"
				} else {
					j.id = a.jqx.utilities.createId() + "_jqxDateTimeInput"
				}
				var f = a("<div></div>", j);
				f[0].style.cssText = k.field.style.cssText;
				if (!k.width) {
					k.width = a(k.field).width()
				}
				if (!k.height) {
					k.height = a(k.field).outerHeight()
				}
				a(k.field).hide().after(f);
				var u = k.host.data();
				k.host = f;
				k.host.data(u);
				k.element = f[0];
				k.element.id = k.field.id;
				k.field.id = j.id;
				if (k._className) {
					k.host.addClass(k._className);
					a(k.field).removeClass(k._className)
				}
				if (k.field.tabIndex) {
					var e = k.field.tabIndex;
					k.field.tabIndex = -1;
					k.element.tabIndex = e
				}
			}
			if (k.host.attr("value")) {
				l = true;
				var v = k.host.attr("value");
				if (k.selectionMode != "range") {
					var r = new Date(v);
					if (r != undefined && !isNaN(r)) {
						k.value = a.jqx._jqxDateTimeInput.getDateTime(r)
					}
				}
			}
			if (k.value != null && k.value instanceof Date) {
				k.value = a.jqx._jqxDateTimeInput.getDateTime(k.value)
			} else {
				if (k.value != null && typeof(k.value) == "string") {
					var r = new Date(k.value);
					if (r != undefined && !isNaN(r)) {
						k.value = a.jqx._jqxDateTimeInput.getDateTime(r)
					} else {
						if (k.value.indexOf(",") >= 0) {
							k.value = k.value.replace(/\,/g, "/");
							var r = new Date(k.value);
							if (r != undefined && !isNaN(r)) {
								k.value = a.jqx._jqxDateTimeInput.getDateTime(r)
							}
						}
					}
				}
			}
			this._initTimeRange();
			this._validateTimeRange();
			k.host.attr("data-role", "input");
			k.render();
			a.jqx.aria(this);
			if (k.getDate() != null) {
				a.jqx.aria(this, "aria-label", "Current focused date is " + k.getDate().toLocaleString())
			} else {
				a.jqx.aria(this, "aria-label", "Current focused date is Null")
			}
			if (k.minDate !== k.defaultMinDate) {
				k.min = k.minDate
			}
			if (k.maxDate !== k.defaultMaxDate) {
				k.max = k.maxDate
			}
			k.setMaxDate(k.max, false);
			k.setMinDate(k.min, false);
			if (k.selectionMode !== "range" && k.value && k.value.dateTime && k.min && k.max && (k.value.dateTime < k.min || k.value.dateTime > k.max)) {
				if (k.value.dateTime < k.min) {
					k.value.dateTime = k.min
				}
				if (k.value.dateTime > k.max) {
					k.value.dateTime = k.max
				}
				k._updateText()
			}
			if (k.selectionMode == "range") {
				if (l) {
					var v = k.host.attr("value");
					var t = v.substring(0, v.indexOf("-"));
					var s = v.substring(v.indexOf("-") + 1);
					var o = new Date(t);
					var b = new Date(s);
					if (o != undefined && !isNaN(o)) {
						if (b != undefined && !isNaN(b)) {
							k.setRange(o, b)
						}
					}
				} else {
					if (k.getDate() != null) {
						k.setRange(k.getDate(), k.getDate())
					}
				}
			}
		},
		_validateTimeRange: function () {
			if (this.timeRange) {
				var b = this.value.dateTime.getHours();
				var c = this.value.dateTime.getMinutes();
				if (b <= this.timeRange.minHour) {
					this.value._setHours(this.timeRange.minHour);
					if (c < this.timeRange.minMinute) {
						this.value._setMinutes(this.timeRange.minMinute);
						this._updateEditorsValue()
					} else {
						this._updateEditorsValue()
					}
				}
				if (b >= this.timeRange.maxHour) {
					this.value._setHours(this.timeRange.maxHour);
					if (c > this.timeRange.maxMinute) {
						this.value._setMinutes(this.timeRange.maxMinute);
						this._updateEditorsValue()
					} else {
						this._updateEditorsValue()
					}
				}
			}
		},
		_initTimeRange: function () {
			if (this.timeRange) {
				if (this.timeRange.min) {
					var c = null;
					if (this.timeRange.min.indexOf("AM") >= 0 || this.timeRange.min.indexOf("PM") >= 0) {
						c = this.timeRange.min.indexOf("AM") >= 0 ? "AM" : "PM"
					}
					var d = this.timeRange.min.split(":");
					var b = parseInt(d[0]);
					var f = parseInt(d[1]);
					if (c) {
						this.timeRange.minDefaultHour = b;
						this.timeRange.minMeridian = c
					}
					if (c && c == "PM") {
						b += 12
					}
					this.timeRange.minHour = b;
					this.timeRange.minMinute = f
				}
				if (this.timeRange.max) {
					var c = null;
					if (this.timeRange.max.indexOf("AM") >= 0 || this.timeRange.max.indexOf("PM") >= 0) {
						c = this.timeRange.max.indexOf("AM") >= 0 ? "AM" : "PM"
					}
					var e = this.timeRange.max.split(":");
					var b = parseInt(e[0]);
					var f = parseInt(e[1]);
					if (c) {
						this.timeRange.maxDefaultHour = b;
						this.timeRange.maxMeridian = c
					}
					if (c && c == "PM") {
						b += 12
					}
					this.timeRange.maxHour = b;
					this.timeRange.maxMinute = f
				}
			}
		},
		_format: function (d, e, b) {
			var f = false;
			try {
				if (Globalize != undefined) {
					f = true
				}
				if (document.Globalize) {
					Globalize = document.Globalize;
					f = true
				}
			} catch (c) {
				if (document.Globalize) {
					Globalize = document.Globalize;
					f = true
				}
			}
			if (document.Globalize) {
				Globalize = document.Globalize;
				f = true
			}
			if (a.global) {
				return a.global.format(d, e, this.culture)
			} else {
				if (f) {
					try {
						var e = Globalize.format(d, e, this.culture);
						return e
					} catch (c) {
						return Globalize.format(d, e)
					}
				} else {
					if (a.jqx.dataFormat) {
						if (d instanceof Date) {
							return a.jqx.dataFormat.formatdate(d, e, this.localization.calendar)
						} else {
							if (typeof d === "number") {
								return a.jqx.dataFormat.formatnumber(d, e, this.localization.calendar)
							} else {
								return a.jqx.dataFormat.formatdate(d, e, this.localization.calendar)
							}
						}
					} else {
						throw new Error("jqxDateTimeInput: Missing reference to globalize.js.")
					}
				}
			}
		},
		render: function () {
			var l = this;
			l._removeHandlers();
			l.element.innerHTML = "";
			l.host.attr({
				role: "textbox"
			});
			l.id = a.jqx.utilities.createId();
			var f = a.jqx.utilities.createId();
			var k = a.jqx.utilities.createId();
			l._setSize();
			if (l.width == null) {
				l.width = l.host.width();
				l.host.width(l.width)
			}
			l.touch = a.jqx.mobile.isTouchDevice();
			var c = a("<div class='jqx-max-size jqx-position-relative'></div>").appendTo(l.host);
			l.dateTimeInput = a("<input style='border: none; padding-left: 3px; padding-right: 3px;' class='jqx-position-absolute' id='input" + l.element.id + "' autocomplete='off' type='textarea'/>").appendTo(c);
			l.dateTimeInput.addClass(l.toThemeProperty("jqx-reset"));
			l.dateTimeInput.addClass(l.toThemeProperty("jqx-clear"));
			l.dateTimeInput.addClass(l.toThemeProperty("jqx-input-content"));
			l.dateTimeInput.addClass(l.toThemeProperty("jqx-widget-content"));
			l.dateTimeInput.addClass(l.toThemeProperty("jqx-rc-all"));
			if (!l.isMaterialized()) {
				l.dateTimeInput.attr("placeHolder", l.placeHolder)
			}
			if (l.renderMode != "full") {
				l.dateTimeInput.remove()
			}
			var d = l.host.attr("name");
			if (d) {
				l.dateTimeInput.attr("name", d)
			}
			if (l.host.attr("tabindex")) {
				l.dateTimeInput.attr("tabindex", l.host.attr("tabindex"));
				l.host.removeAttr("tabindex")
			}
			if (l.rtl) {
				l.dateTimeInput.css("direction", "rtl");
				l.dateTimeInput.addClass("jqx-rtl")
			}
			l.calendarButton = a("<div style='height: 100%;' class='jqx-position-absolute'><div></div></div>").appendTo(c);
			if (!l.rtl) {
				l.calendarButton.addClass(l.toThemeProperty("jqx-action-button"))
			} else {
				l.calendarButton.addClass(l.toThemeProperty("jqx-action-button-rtl"))
			}
			l.calendarButtonIcon = a(l.calendarButton.children()[0]);
			l.calendarButtonIcon.addClass(l.toThemeProperty("jqx-icon"));
			l.calendarButtonIcon.addClass(l.toThemeProperty("jqx-icon-calendar"));
			l.calendarButton.addClass(l.toThemeProperty("jqx-fill-state-normal"));
			if (!l.rtl) {
				if (!l.showTimeButton) {
					l.calendarButton.addClass(l.toThemeProperty("jqx-rc-r"))
				}
			} else {
				l.calendarButton.addClass(l.toThemeProperty("jqx-rc-l"))
			}
			l.timeButton = a("<div style='height: 100%;' class='jqx-position-absolute'><div></div></div>").appendTo(c);
			if (!l.rtl) {
				l.timeButton.addClass(l.toThemeProperty("jqx-action-button"))
			} else {
				l.timeButton.addClass(l.toThemeProperty("jqx-action-button-rtl"))
			}
			l.timeButtonIcon = a(l.timeButton.children()[0]);
			l.timeButtonIcon.addClass(l.toThemeProperty("jqx-icon"));
			l.timeButtonIcon.addClass(l.toThemeProperty("jqx-icon-time"));
			l.timeButton.addClass(l.toThemeProperty("jqx-fill-state-normal"));
			if (!l.rtl) {
				l.timeButton.addClass(l.toThemeProperty("jqx-rc-r"))
			} else {
				l.timeButton.addClass(l.toThemeProperty("jqx-rc-l"))
			}
			var n = this;
			l._arrange();
			if (a.jqx._jqxCalendar != null && a.jqx._jqxCalendar != undefined) {
				try {
					var j = "calendar" + l.id;
					var h = a(a.find("#" + j));
					if (h.length > 0) {
						h.remove()
					}
					a.jqx.aria(this, "aria-owns", j);
					a.jqx.aria(this, "aria-haspopup", true);
					a.jqx.aria(this, "aria-readonly", l.selectionMode == "range" ? true : false);
					var b = a("<div style='overflow: hidden; background: transparent; position: absolute;' id='calendar" + l.id + "'><div id='innerCalendar" + l.id + "'></div><div id='innerTime" + l.id + "'></div></div>");
					if (a.jqx.utilities.getBrowser().browser == "opera") {
						b.hide()
					}
					if (l.dropDownContainer == "element") {
						b.appendTo(l.host)
					} else {
						b.appendTo(document.body)
					}
					l.container = b;
					l.calendarContainer = a(a.find("#innerCalendar" + l.id)).jqxCalendar({
							titleFormat: this.titleFormat,
							restrictedDates: this.restrictedDates,
							changing: l.changing,
							change: l.change,
							enableViews: l.enableViews,
							selectableDays: l.selectableDays,
							views: l.views,
							rowHeaderWidth: l.rowHeaderWidth,
							titleHeight: l.titleHeight,
							columnHeaderHeight: l.columnHeaderHeight,
							_checkForHiddenParent: false,
							enableAutoNavigation: false,
							canRender: false,
							localization: l.localization,
							todayString: l.todayString,
							clearString: l.clearString,
							dayNameFormat: l.dayNameFormat,
							rtl: l.rtl,
							culture: l.culture,
							showFooter: l.showFooter,
							selectionMode: l.selectionMode,
							firstDayOfWeek: l.firstDayOfWeek,
							showWeekNumbers: l.showWeekNumbers,
							width: l.dropDownWidth,
							height: l.dropDownHeight,
							theme: l.theme
						});
					if (l.dropDownContainer == "element") {
						l.calendarContainer.css({
							position: "absolute",
							top: 0,
							left: 0
						})
					} else {
						l.calendarContainer.css({
							position: "absolute",
							zIndex: l.popupZIndex,
							top: 0,
							left: 0
						})
					}
					l.calendarContainer.addClass(l.toThemeProperty("jqx-popup"));
					if (a.jqx.browser.msie) {
						l.calendarContainer.addClass(l.toThemeProperty("jqx-noshadow"))
					}
					l.timeContainer = a(a.find("#innerTime" + l.id));
					l.timeContainer.css({
						position: "absolute",
						zIndex: l.popupZIndex,
						top: 0,
						left: 0
					});
					l.timeContainer.addClass(l.toThemeProperty("jqx-popup"));
					if (a.jqx.browser.msie) {
						l.timeContainer.addClass(l.toThemeProperty("jqx-noshadow"))
					}
					l._calendar = a.data(l.calendarContainer[0], "jqxCalendar").instance;
					var n = this;
					l._calendar.today = function () {
						n.today()
					};
					l._calendar.clear = function () {
						n.clear()
					};
					if (a.jqx.utilities.getBrowser().browser == "opera") {
						b.show()
					}
					b.height(parseInt(l.calendarContainer.height()) + 25);
					b.width(parseInt(l.calendarContainer.width()) + 25);
					if (l.selectionMode == "range") {
						l.readonly = true
					}
					if (l.animationType == "none") {
						l.container.css("display", "none")
					} else {
						l.container.hide()
					}
				} catch (m) {}
			}
			if (a.global) {
				a.global.preferCulture(l.culture)
			}
			l.selectedText = "";
			l._addHandlers();
			l.self = this;
			l.oldValue = l.getDate();
			l.items = new Array();
			l.editors = new Array();
			l._loadItems();
			l.editorText = "";
			if (l.readonly == true) {
				l.dateTimeInput.css("readonly", l.readonly)
			}
			l.dateTimeInput.css("text-align", l.textAlign);
			l.host.addClass(l.toThemeProperty("jqx-widget"));
			l.host.addClass(l.toThemeProperty("jqx-datetimeinput"));
			l.host.addClass(l.toThemeProperty("jqx-input"));
			l.host.addClass(l.toThemeProperty("jqx-overflow-hidden"));
			l.host.addClass(l.toThemeProperty("jqx-rc-all"));
			l.host.addClass(l.toThemeProperty("jqx-reset"));
			l.host.addClass(l.toThemeProperty("jqx-clear"));
			l.host.addClass(l.toThemeProperty("jqx-widget-content"));
			l.propertyChangeMap.disabled = function (e, q, p, r) {
				if (r) {
					e.host.addClass(n.toThemeProperty("jqx-input-disabled"));
					e.host.addClass(n.toThemeProperty("jqx-fill-state-disabled"))
				} else {
					e.host.removeClass(n.toThemeProperty("jqx-fill-state-disabled"));
					e.host.removeClass(n.toThemeProperty("jqx-input-disabled"))
				}
				a.jqx.aria(e, "aria-disabled", r)
			};
			if (l.disabled) {
				l.host.addClass(l.toThemeProperty("jqx-input-disabled"));
				l.host.addClass(l.toThemeProperty("jqx-fill-state-disabled"));
				l.dateTimeInput.attr("disabled", true)
			}
			if (l.host.parents("form").length > 0) {
				l.addHandler(l.host.parents("form"), "reset", function () {
					setTimeout(function () {
						n.setDate(new Date())
					}, 10)
				})
			}
			if (l.cookies) {
				var g = a.jqx.cookie.cookie("jqxDateTimeInput" + l.element.id);
				if (g != null) {
					l.setDate(new Date(g))
				}
			}
			if (a.jqx.browser.msie && a.jqx.browser.version < 8) {
				if (l.host.parents(".jqx-window").length > 0) {
					var o = l.host.parents(".jqx-window").css("z-index");
					l.container.css("z-index", o + 10);
					l.calendarContainer.css("z-index", o + 10)
				}
			}
			if (l.culture != "default") {
				l._applyCulture()
			}
			if (l.value) {
				if (l.calendarContainer.jqxCalendar("_isDisabled", l.value.dateTime)) {
					l.dateTimeInput.addClass(l.toThemeProperty("jqx-input-invalid"))
				} else {
					l.dateTimeInput.removeClass(l.toThemeProperty("jqx-input-invalid"))
				}
			}
			this._addBarAndLabel(this.dateTimeInput);
			this._updateHint(true);
			if (l.template) {
				l.bar.addClass(l.toThemeProperty("jqx-" + l.template));
				l.label.addClass(l.toThemeProperty("jqx-" + l.template));
				l.timeButton.addClass(l.toThemeProperty("jqx-" + l.template));
				l.calendarButton.addClass(l.toThemeProperty("jqx-" + l.template))
			}
			this._setSize();
			this._arrange()
		},
		val: function (c) {
			var b = this;
			if (arguments.length != 0) {
				if (c == null) {
					b.setDate(null)
				}
				if (b.selectionMode == "range") {
					b.setRange(arguments[0], arguments[1]);
					return b.getText()
				}
				if (c instanceof Date) {
					b.setDate(c)
				}
				if (typeof(c) == "string") {
					if (c == "date") {
						return b.getDate()
					}
					b.setDate(c)
				}
				if (b._calendar.getDate() != b.getDate()) {
					b._calendar.setDate(b.getDate())
				}
			}
			return b.getText()
		},
		_setSize: function () {
			var b = window.getComputedStyle(this.element);
			var c = parseInt(b.borderLeftWidth) * 2;
			var h = b.boxSizing;
			if (this.element.offsetWidth === 0) {
				c = 2
			}
			if (h === "border-box" || isNaN(c)) {
				c = 0
			}
			if (this.width != null && this.width.toString().indexOf("px") != -1) {
				this.element.style.width = parseInt(this.width) - c + "px"
			} else {
				if (this.width != undefined && !isNaN(this.width)) {
					this.element.style.width = parseInt(this.width) - c + "px"
				}
			}
			if (this.height != null && this.height.toString().indexOf("px") != -1) {
				this.element.style.height = parseInt(this.height) - c + "px"
			} else {
				if (this.height != undefined && !isNaN(this.height)) {
					this.element.style.height = parseInt(this.height) - c + "px"
				}
			}
			var g = false;
			if (this.width != null && this.width.toString().indexOf("%") != -1) {
				g = true;
				this.host.width(this.width);
				if (c > 0) {
					this.host.css("box-sizing", "border-box")
				}
			}
			if (this.height != null && this.height.toString().indexOf("%") != -1) {
				g = true;
				this.host.height(this.height)
			}
			var e = this;
			var f = function () {
				if (e.calendarContainer) {
					e._arrange()
				}
			};
			if (g) {
				if (this.calendarContainer) {
					this._arrange();
					var d = this.host.width();
					if (this.dropDownWidth != "auto") {
						d = this.dropDownWidth
					}
					this.calendarContainer.jqxCalendar({
						width: d
					});
					this.container.width(parseInt(d) + 25)
				}
			}
			a.jqx.utilities.resize(this.host, function () {
				f()
			})
		},
		_arrange: function () {
			if (this.height == null) {
				this.height = 27;
				this.host.height(27)
			}
			var e = parseInt(this.host.width());
			var m = parseInt(this.host.height());
			var j = window.getComputedStyle(this.element);
			var g = parseInt(j.borderLeftWidth) * 2;
			var f = j.boxSizing;
			if (f === "border-box" || isNaN(g)) {
				g = 0
			}
			var l = this.buttonSize;
			var h = 2;
			if (!this.showCalendarButton && !this.showTimeButton) {
				l = 0;
				buttonHeight = 0;
				this.calendarButton.hide();
				h = 0
			}
			if (!this.showCalendarButton) {
				this.calendarButton.hide()
			} else {
				this.calendarButton.show()
			}
			if (!this.showTimeButton) {
				this.timeButton.hide()
			} else {
				this.timeButton.show()
			}
			var b = e - l - 1 * h;
			if (this.showTimeButton && this.showCalendarButton) {
				var b = e - 2 * l - 1 * h
			} else {
				if (this.showTimeButton || this.showCalendarButton) {
					var b = e - l - 1 * h
				}
			}
			if (b > 0) {
				this.dateTimeInput[0].style.width = b + "px"
			}
			if (this.rtl) {
				this.dateTimeInput[0].style.width = (-1 + b + "px")
			}
			this.dateTimeInput[0].style.left = "0px";
			this.dateTimeInput[0].style.top = "0px";
			this.calendarButton[0].style.width = l + 1 + "px";
			this.calendarButton[0].style.left = 1 + b + "px";
			this.timeButton[0].style.width = l + 1 + "px";
			if (this.showCalendarButton) {
				this.timeButton[0].style.left = 1 + this.calendarButton.width() + b + "px"
			} else {
				this.timeButton[0].style.left = 1 + b + "px"
			}
			if (this.renderMode != "full") {
				this.calendarButton[0].style.width = "100%";
				this.calendarButton[0].style.left = "0px";
				this.calendarButton.css("border", "none");
				this.timeButton[0].style.width = "100%";
				this.timeButton[0].style.left = "0px";
				this.timeButton.css("border", "none")
			}
			var d = this.dateTimeInput.height();
			if (d == 0 && this.renderMode != "full") {
				d = parseInt(this.dateTimeInput.css("font-size")) + 3;
				this.calendarButton.addClass(this.toThemeProperty("jqx-rc-all"));
				this.timeButton.addClass(this.toThemeProperty("jqx-rc-all"))
			} else {
				d = 17
			}
			if (this.dateTimeInput[0].className.indexOf("jqx-rc-all") == -1) {
				this.dateTimeInput.addClass(this.toThemeProperty("jqx-rc-all"))
			}
			var k = parseInt(m) / 2 - parseInt(d) / 2;
			if (k > 0) {
				var n = this.dateTimeInput.css("font-size");
				if ("" == n) {
					n = 13
				}
				var k = m - 2 - parseInt(n) - 2;
				if (isNaN(k)) {
					k = 0
				}
				if (k < 0) {
					k = 0
				}
				var c = k / 2;
				if (a.jqx.browser.msie && a.jqx.browser.version < 8) {
					c = k / 4
				}
				this.dateTimeInput[0].style.paddingTop = Math.round(c) + "px";
				this.dateTimeInput[0].style.paddingBottom = Math.round(c) + "px"
			}
			if (this.rtl) {
				this.calendarButton[0].style.width = l + "px";
				this.timeButton[0].style.width = l + "px";
				this.calendarButton.css("left", "0px");
				if (this.showCalendarButton) {
					this.timeButton.css("left", l + "px")
				} else {
					this.timeButton.css("left", "0px")
				}
				this.dateTimeInput.css("left", this.calendarButton.width());
				if (this.showTimeButton && this.showCalendarButton) {
					this.dateTimeInput.css("left", this.timeButton.width() + this.calendarButton.width())
				}
				if (a.jqx.browser.msie && a.jqx.browser.version <= 8) {
					this.dateTimeInput.css("left", 1 + this.calendarButton.width());
					if (this.showTimeButton && this.showCalendarButton) {
						this.dateTimeInput.css("left", 1 + this.timeButton.width() + this.calendarButton.width())
					}
				}
			}
		},
		_removeHandlers: function () {
			var b = this;
			this.removeHandler(a(document), "mousedown." + this.id);
			if (this.dateTimeInput) {
				this.removeHandler(this.dateTimeInput, "keydown." + this.id);
				this.removeHandler(this.dateTimeInput, "blur");
				this.removeHandler(this.dateTimeInput, "focus");
				this.removeHandler(this.host, "focus");
				this.removeHandler(this.dateTimeInput, "mousedown");
				this.removeHandler(this.dateTimeInput, "mouseup");
				this.removeHandler(this.dateTimeInput, "keydown");
				this.removeHandler(this.dateTimeInput, "keyup");
				this.removeHandler(this.dateTimeInput, "keypress")
			}
			if (this.calendarButton != null) {
				this.removeHandler(this.calendarButton, "mousedown")
			}
			if (this.timeButton != null) {
				this.removeHandler(this.timeButton, "mousedown")
			}
			if (this.calendarContainer != null) {
				this.removeHandler(this.calendarContainer, "cellSelected");
				this.removeHandler(this.calendarContainer, "cellMouseDown")
			}
			this.removeHandler(a(window), "resize." + this.id)
		},
		isOpened: function () {
			var c = this;
			var b = a.data(document.body, "openedJQXCalendar" + this.id);
			if (b != null && b == c.calendarContainer) {
				return true
			}
			return false
		},
		wheel: function (d, c) {
			if (!c.isEditing) {
				return
			}
			c.changeType = "mouse";
			var e = 0;
			if (!d) {
				d = window.event
			}
			if (d.originalEvent && d.originalEvent.wheelDelta) {
				d.wheelDelta = d.originalEvent.wheelDelta
			}
			if (d.wheelDelta) {
				e = d.wheelDelta / 120
			} else {
				if (d.detail) {
					e = -d.detail / 3
				}
			}
			if (e) {
				var b = c._handleDelta(e);
				if (!b) {
					if (d.preventDefault) {
						d.preventDefault()
					}
					d.returnValue = false;
					return b
				} else {
					return false
				}
			}
			if (d.preventDefault) {
				d.preventDefault()
			}
			d.returnValue = false
		},
		_handleDelta: function (b) {
			if (b < 0) {
				this.spinDown()
			} else {
				this.spinUp()
			}
			return false
		},
		focus: function () {
			try {
				var c = this;
				c._firstFocusDate = c.getDate();
				this._setSelectionStart(0);
				this._selectGroup(-1);
				this.dateTimeInput.focus();
				setTimeout(function () {
					c._setSelectionStart(0);
					c._selectGroup(-1);
					c.dateTimeInput.focus()
				}, 25)
			} catch (b) {}
		},
		_addHandlers: function () {
			var e = this.element.id;
			var c = this.element;
			var d = this;
			if (this.host.parents()) {
				this.addHandler(this.host.parents(), "scroll.datetimeinput" + this.element.id, function (f) {
					var g = d.isOpened();
					if (g) {
						d.close()
					}
				})
			}
			this.addHandler(this.host, "mouseenter", function () {
				if (!d.disabled && d.enableHover) {
					hovered = true;
					d.calendarButtonIcon.addClass(d.toThemeProperty("jqx-icon-calendar-hover"));
					d.calendarButton.addClass(d.toThemeProperty("jqx-fill-state-hover"));
					if (d.showTimeButton) {
						d.timeButtonIcon.addClass(d.toThemeProperty("jqx-icon-time-hover"));
						d.timeButton.addClass(d.toThemeProperty("jqx-fill-state-hover"))
					}
				}
			});
			this.addHandler(this.host, "mouseleave", function () {
				if (!d.disabled && d.enableHover) {
					d.calendarButtonIcon.removeClass(d.toThemeProperty("jqx-icon-calendar-hover"));
					d.calendarButton.removeClass(d.toThemeProperty("jqx-fill-state-hover"));
					if (d.showTimeButton) {
						d.timeButtonIcon.removeClass(d.toThemeProperty("jqx-icon-time-hover"));
						d.timeButton.removeClass(d.toThemeProperty("jqx-fill-state-hover"))
					}
				}
			});
			this.addHandler(this.host, "mousewheel", function (f) {
				d.wheel(f, d)
			});
			this.addHandler(a(document), "mousedown." + this.id, this._closeOpenedCalendar, {
				me: this
			});
			if (a.jqx.mobile.isTouchDevice()) {
				this.addHandler(a(document), a.jqx.mobile.getTouchEventName("touchstart") + "." + this.id, this._closeOpenedCalendar, {
					me: this
				})
			}
			this.addHandler(this.dateTimeInput, "keydown." + this.id, function (h) {
				var g = a.data(document.body, "openedJQXCalendar" + d.id);
				if (g != null && g == d.calendarContainer) {
					var f = d.handleCalendarKey(h, d);
					return f
				}
			});
			if (this.calendarContainer != null) {
				this.addHandler(this.calendarContainer, "keydown", function (f) {
					if (f.keyCode == 13) {
						if (d.isOpened()) {
							if (!d._calendar._viewAnimating && d._calendar.view == "month") {
								d.hideCalendar("selected", "keyboard");
								d.dateTimeInput.focus();
								return false
							}
						}
						return true
					} else {
						if (f.keyCode == 9) {
							if (d.isOpened()) {
								d.hideCalendar("selected", "keyboard");
								return true
							}
						} else {
							if (f.keyCode == 27) {
								if (d.isOpened()) {
									d.hideCalendar(null, "keyboard");
									d.dateTimeInput.focus();
									return false
								}
								return true
							}
						}
					}
					d.timePopup = false;
					if (f.keyCode == 84) {
						d.timePopup = true
					}
					if (f.keyCode == 115) {
						if (d.isOpened()) {
							d.hideCalendar("keyboard", "keyboard");
							d.dateTimeInput.focus();
							return false
						} else {
							if (!d.isOpened()) {
								d.showCalendar("keyboard", "keyboard");
								d.dateTimeInput.focus();
								return false
							}
						}
					}
					if (f.altKey) {
						if (f.keyCode == 38) {
							if (d.isOpened()) {
								d.hideCalendar("keyboard", "keyboard");
								d.dateTimeInput.focus();
								return false
							}
						} else {
							if (f.keyCode == 40) {
								if (!d.isOpened()) {
									d.showCalendar("keyboard", "keyboard");
									d.dateTimeInput.focus();
									return false
								}
							}
						}
					}
				});
				this.addHandler(this.calendarContainer, "cellSelected", function (g) {
					if (d.closeCalendarAfterSelection) {
						var f = a.data(document.body, "openedJQXCalendarValue");
						if (g.args.selectionType == "mouse") {
							if (d.selectionMode != "range") {
								d.hideCalendar("selected", "mouse")
							} else {
								if (d._calendar._clicks == 0) {
									d.hideCalendar("selected", "mouse")
								}
							}
						}
					}
				});
				this.addHandler(this.calendarContainer, "cellMouseDown", function (f) {
					if (d.closeCalendarAfterSelection) {
						if (d._calendar.value) {
							a.data(document.body, "openedJQXCalendarValue", new a.jqx._jqxDateTimeInput.getDateTime(d._calendar.value.dateTime))
						}
					}
				})
			}
			this.addHandler(this.dateTimeInput, "blur", function (h) {
				d.bar.removeClass("focused");
				d.label.removeClass("focused");
				if (d.value != null) {
					d.isEditing = false;
					var g = d.value.dateTime.getDay();
					var f = d._oldDT;
					d._validateValue(true);
					if (h.stopPropagation) {
						h.stopPropagation()
					}
					d._updateText();
					d._raiseEvent(9, h)
				}
				if (!d.isOpened()) {
					d.host.removeClass(d.toThemeProperty("jqx-fill-state-focus"))
				}
			});
			this.addHandler(this.host, "focus", function (f) {
				d.focus()
			});
			this.addHandler(this.dateTimeInput, "focus", function (f) {
				d._firstFocusDate = d.getDate();
				if (d.value != null) {
					if (d.selectionMode != "range") {
						d._oldDT = new Date(d.value.dateTime)
					} else {
						d._oldDT = d.getRange()
					}
					setTimeout(function () {
						var g = d._selection();
						d.isEditing = true;
						d._validateValue();
						d._updateText();
						d._setSelectionStart(0);
						d._selectGroup(-1, g);
						d.host.addClass(d.toThemeProperty("jqx-fill-state-focus"))
					})
				} else {
					d._setSelectionStart(0);
					d._selectGroup(-1);
					d.host.addClass(d.toThemeProperty("jqx-fill-state-focus"))
				}
				if (f.stopPropagation) {
					f.stopPropagation()
				}
				d.bar.addClass("focused");
				d.label.addClass("focused");
				if (f.preventDefault) {
					f.preventDefault();
					return false
				}
			});
			var b = "mousedown";
			if (this.touch) {
				b = a.jqx.mobile.getTouchEventName("touchstart")
			}
			this.addHandler(this.calendarButton, b, function (g) {
				var h = d.container;
				var f = h.css("display") == "block";
				d.timePopup = false;
				d.calendarPopup = true;
				if (!d.disabled) {
					if (!d.isanimating) {
						if (f) {
							d.hideCalendar();
							return false
						} else {
							d.showCalendar("mouse");
							g.preventDefault()
						}
					}
				}
			});
			this.addHandler(this.timeButton, b, function (g) {
				var h = d.container;
				var f = h.css("display") == "block";
				d.timePopup = true;
				d.calendarPopup = false;
				if (!d.disabled) {
					if (!d.isanimating) {
						if (f) {
							d.hideCalendar("mouse", "mouse");
							return false
						} else {
							d.showCalendar("mouse");
							g.preventDefault()
						}
					}
				}
			});
			this.addHandler(this.dateTimeInput, "mousedown", function (f) {
				return d._raiseEvent(2, f)
			});
			this.addHandler(this.dateTimeInput, "mouseup", function (f) {
				return d._raiseEvent(3, f)
			});
			this.addHandler(this.dateTimeInput, "keydown", function (f) {
				return d._raiseEvent(4, f)
			});
			this.addHandler(this.dateTimeInput, "keyup", function (f) {
				return d._raiseEvent(5, f)
			});
			this.addHandler(this.dateTimeInput, "keypress", function (f) {
				return d._raiseEvent(6, f)
			})
		},
		createID: function () {
			var b = Math.random() + "";
			b = b.replace(".", "");
			b = "99" + b;
			b = b / 1;
			return "dateTimeInput" + b
		},
		setMaxDate: function (b, c) {
			if (b == null) {
				return
			}
			if (b != null && typeof(b) == "string") {
				b = new Date(b);
				if (!this._isValidDate(b)) {
					return
				}
			}
			this.maxDate = a.jqx._jqxDateTimeInput.getDateTime(b);
			if (this._calendar != null) {
				this._calendar.setMaxDate(b)
			}
			if (c != false) {
				if (this.getDate() != null && this.getDate() > b) {
					this.setDate(b)
				}
				a.jqx.aria(this, "aria-valuemax", b);
				this._refreshValue();
				this._updateText()
			}
		},
		getMaxDate: function () {
			if (this.maxDate != null && this.maxDate != undefined) {
				return this.maxDate.dateTime
			}
			return null
		},
		setMinDate: function (b, c) {
			if (b == null) {
				return
			}
			if (b != null && typeof(b) == "string") {
				b = new Date(b);
				if (!this._isValidDate(b)) {
					return
				}
			}
			this.minDate = a.jqx._jqxDateTimeInput.getDateTime(b);
			if (this._calendar != null) {
				this._calendar.setMinDate(b)
			}
			if (c != false) {
				if (this.getDate() != null && this.getDate() < b) {
					this.setDate(b)
				}
				a.jqx.aria(this, "aria-valuemin", b);
				this._refreshValue();
				this._updateText()
			}
		},
		getMinDate: function () {
			if (this.minDate != null && this.minDate != undefined) {
				return this.minDate.dateTime
			}
			return null
		},
		_applyCulture: function () {
			var d = false;
			try {
				if (Globalize != undefined) {
					d = true
				}
			} catch (c) {}
			try {
				if (a.global) {
					a.global.preferCulture(this.culture);
					this.localization.calendar = a.global.culture.calendar
				} else {
					if (d) {
						var b = Globalize.culture(this.culture);
						this.localization.calendar = b.calendar
					}
				}
				this._loadItems();
				if (this._calendar != null) {
					this._calendar.culture = this.culture;
					this._calendar.localization = this.localization;
					this._calendar.render()
				}
			} catch (c) {}
		},
		propertyMap: function (b) {
			if (b == "value") {
				if (this.selectionMode != "range") {
					return this.getDate()
				} else {
					return this.getRange()
				}
			}
			return null
		},
		propertiesChangedHandler: function (d, b, c) {
			if (c && c.width && c.height && Object.keys(c).length == 2) {
				d.refresh();
				d.close()
			}
		},
		propertyChangedHandler: function (c, d, f, e) {
			if (c.isInitialized == undefined || c.isInitialized == false) {
				return
			}
			if (c.batchUpdate && c.batchUpdate.width && c.batchUpdate.height && Object.keys(c.batchUpdate).length == 2) {
				return
			}
			if (d == "dropDownVerticalAlignment") {
				c.close()
			}
			if (d == "template") {
				c.bar.removeClass(c.toThemeProperty("jqx-" + f));
				c.label.removeClass(c.toThemeProperty("jqx-" + f));
				c.timeButton.removeClass(c.toThemeProperty("jqx-" + f));
				c.calendarButton.removeClass(c.toThemeProperty("jqx-" + f));
				c.bar.addClass(c.toThemeProperty("jqx-" + c.template));
				c.label.addClass(c.toThemeProperty("jqx-" + c.template));
				c.timeButton.addClass(c.toThemeProperty("jqx-" + c.template));
				c.calendarButton.addClass(c.toThemeProperty("jqx-" + c.template))
			}
			if (d == "restrictedDates") {
				c.calendarContainer.css({
					restrictedDates: e
				})
			}
			if (d == "popupZIndex") {
				c.calendarContainer.css({
					zIndex: e
				})
			}
			if (d == "showCalendarButton") {
				c._arrange()
			}
			if (d == "showTimeButton") {
				c._arrange();
				if (c.timePopupElement) {
					c.timePopupElement.remove();
					c.timePopupElement = null
				}
			}
			if (d == "selectionMode") {
				c._calendar.selectionMode = e;
				c.refreshValue()
			}
			if (d == "min") {
				if (typeof(e) == "string") {
					c.setMinDate(new Date(e))
				} else {
					c.setMinDate(e)
				}
			}
			if (d == "max") {
				if (typeof(e) == "string") {
					c.setMaxDate(new Date(e))
				} else {
					c.setMaxDate(e)
				}
			}
			if (d == "value") {
				if (e != null && e instanceof Date) {
					if (isNaN(e.getFullYear()) || isNaN(e.getMonth()) || isNaN(e.getDate())) {
						this.value = f;
						return
					}
					e = a.jqx._jqxDateTimeInput.getDateTime(e)
				} else {
					if (e != null && typeof(e) == "string") {
						var b = new Date(e);
						if (b != undefined && !isNaN(b)) {
							this.value = a.jqx._jqxDateTimeInput.getDateTime(b)
						}
					}
				}
			}
			if (d == "views") {
				c.calendarContainer.jqxCalendar({
					views: e
				})
			}
			if (d == "enableViews") {
				c.calendarContainer.jqxCalendar({
					enableViews: e
				})
			}
			if (d == "selectableDays") {
				c.calendarContainer.jqxCalendar({
					selectableDays: e
				})
			}
			if (d == "showFooter") {
				c.calendarContainer.jqxCalendar({
					showFooter: e
				})
			}
			if (d == "rtl") {
				c.calendarContainer.jqxCalendar({
					rtl: e
				});
				if (e) {
					c.dateTimeInput.css("direction", "rtl");
					c.dateTimeInput.addClass("jqx-rtl")
				} else {
					c.dateTimeInput.css("direction", "ltr");
					c.dateTimeInput.removeClass("jqx-rtl")
				}
			}
			if (d == "todayString" || d == "clearString") {
				c.calendarContainer.jqxCalendar({
					clearString: c.clearString,
					todayString: c.todayString
				})
			}
			if (d == "dayNameFormat") {
				c.calendarContainer.jqxCalendar({
					dayNameFormat: e
				})
			}
			if (d == "firstDayOfWeek") {
				c.calendarContainer.jqxCalendar({
					firstDayOfWeek: e
				})
			}
			if (d == "showWeekNumbers") {
				c.calendarContainer.jqxCalendar({
					showWeekNumbers: e
				})
			}
			if (d == "culture" || d == "localization") {
				c._applyCulture()
			} else {
				if (d == "formatString") {
					c.items = new Array();
					c._loadItems()
				}
			}
			if (d == "theme") {
				a.jqx.utilities.setTheme(f, e, c.host);
				c.calendarContainer.jqxCalendar({
					theme: e
				})
			}
			if (d == "width" || d == "height") {
				c.close();
				c.refresh();
				return
			}
			c._setOption(d, e, f);
			if (d == "dropDownWidth" || d == "dropDownHeight") {
				c.calendarContainer.jqxCalendar({
					width: c.dropDownWidth,
					height: c.dropDownHeight
				});
				c._calendar.render();
				c.container.height(c.calendarContainer.height());
				c.container.width(c.calendarContainer.width())
			}
		},
		clear: function () {
			if (this.allowNullDate) {
				if (this.selectionMode != "range") {
					this.setDate(null)
				} else {
					this._calendar._clicks = 1;
					this.setRange(null, null)
				}
				this._calendar._clicks = 0
			} else {
				if (this.selectionMode != "range") {
					this.setDate(me.getMinDate())
				} else {
					this._calendar._clicks = 1;
					this.setRange(me.getMinDate(), me.getMinDate());
					this._calendar._clicks = 0
				}
			}
			this.hideCalendar()
		},
		today: function () {
			var c = new Date();
			c.setHours(0, 0, 0, 0);
			if (this.selectionMode != "range") {
				this.setDate(c)
			} else {
				this._calendar._clicks = 0;
				var b = new Date();
				b.setHours(23, 59, 59, 0);
				this.setRange(c, b);
				this._calendar._clicks = 0
			}
			this.hideCalendar()
		},
		_isValidDate: function (b) {
			if (b == null) {
				return true
			}
			if (typeof(b) !== "object") {
				return false
			}
			if (b == "Invalid Date" || b.valueOf() < 0 || isNaN(b.valueOf())) {
				return false
			}
			return true
		},
		setDate: function (d) {
			var e = this.getDate();
			if (d != null && typeof(d) == "string") {
				var f = d;
				if (d.toString().indexOf(",") >= 0) {
					d = d.replace(/\,/g, "/");
					d = new Date(d);
					if (!this._isValidDate(d)) {
						d = f
					}
				}
				if (d.toString().indexOf("-") >= 0) {
					d = d.replace(/\-/g, "/");
					d = new Date(d);
					if (!this._isValidDate(d)) {
						d = f
					}
				}
				if (d != "") {
					var c = d;
					if (Globalize != undefined) {
						d = Globalize.parseDate(c, this.formatString, this.culture)
					} else {
						if (a.jqx.dataFormat) {
							d = a.jqx.dataFormat.parsedate(c, this.formatString, this.localization.calendar)
						} else {
							d = new Date(d)
						}
					}
					if (d === null && c !== null) {
						if (this._isValidDate(c)) {
							d = c
						}
					}
					if (!this._isValidDate(d)) {
						return
					}
				}
			}
			if (d == null || d == "null" || d == "undefined") {
				if (!this.allowNullDate) {
					d = this.min
				}
			}
			if (!this._isValidDate(d)) {
				d = null
			}
			if (d == null || d == "null" || d == "undefined" || d === "") {
				if (this.value != null) {
					this.value = null;
					this._calendar.setDate(null);
					this._refreshValue();
					if (this.cookies) {
						if (this.value != null) {
							a.jqx.cookie.cookie("jqxDateTimeInput" + this.element.id, this.value.dateTime.toString(), this.cookieoptions)
						}
					}
					this._setSelectionStart(0);
					this._selectGroup(-1);
					this._raiseEvent("0", d, e);
					this._raiseEvent("9", d, e)
				}
				return
			}
			if (d < this.getMinDate() || d > this.getMaxDate()) {
				return
			}
			if (this.value == null) {
				this.value = new a.jqx._jqxDateTimeInput.getDateTime(new Date());
				this.value._setHours(0);
				this.value._setMinutes(0);
				this.value._setSeconds(0);
				this.value._setMilliseconds(0)
			}
			if (d.getFullYear) {
				this.value._setYear(d.getFullYear());
				this.value._setDay(1);
				this.value._setMonth(d.getMonth() + 1);
				this.value._setHours(d.getHours());
				this.value._setMinutes(d.getMinutes());
				this.value._setSeconds(d.getSeconds());
				this.value._setMilliseconds(d.getMilliseconds());
				this.value._setDay(d.getDate())
			}
			this._validateTimeRange();
			this._refreshValue();
			if (this.cookies) {
				if (this.value != null) {
					a.jqx.cookie.cookie("jqxDateTimeInput" + this.element.id, this.value.dateTime.toString(), this.cookieoptions)
				}
			}
			var b = this.getDate();
			var g = (b - e);
			if (g != 0) {
				this._raiseEvent("0", d, e);
				this._raiseEvent("9", d, e);
				return true
			}
		},
		getDate: function () {
			if (this.value == undefined) {
				return null
			}
			return new Date(this.value.dateTime)
		},
		getText: function () {
			return this.dateTimeInput.val()
		},
		setRange: function (d, c) {
			if (typeof(d) == "object" && !this._isValidDate(d)) {
				d = null
			}
			if (typeof(c) == "object" && !this._isValidDate(c)) {
				c = null
			}
			if (d != null && typeof(d) == "string") {
				d = new Date(d);
				if (!this._isValidDate(d)) {
					return
				}
			}
			if (c != null && typeof(c) == "string") {
				c = new Date(c);
				if (!this._isValidDate(c)) {
					return
				}
			}
			if (d && isNaN(d) && d.toString() == "NaN" && typeof(d) != "string") {
				return
			}
			if (c && isNaN(c) && c.toString() == "NaN" && typeof(c) != "string") {
				return
			}
			this._calendar.setRange(d, c);
			if (c && d && (c.valueOf() != d.valueOf())) {
				this._range = {
					from: d,
					to: c
				}
			} else {
				this._range = this._calendar.getRange()
			}
			var b = d;
			if (b != null && b.getFullYear) {
				if (this.value == null) {
					this.value = new a.jqx._jqxDateTimeInput.getDateTime(new Date());
					this.value._setHours(0);
					this.value._setMinutes(0);
					this.value._setSeconds(0);
					this.value._setMilliseconds(0)
				}
				this.value._setYear(b.getFullYear());
				this.value._setMonth(b.getMonth() + 1);
				this.value._setHours(b.getHours());
				this.value._setMinutes(b.getMinutes());
				this.value._setSeconds(b.getSeconds());
				this.value._setMilliseconds(b.getMilliseconds());
				this.value._setDay(b.getDate())
			}
			this._refreshValue();
			if (this.value) {
				this._raiseEvent("0", this.value.dateTime)
			} else {
				this._raiseEvent("0", null)
			}
		},
		getRange: function () {
			var b = this._calendar.getRange();
			if (this._range) {
				var d = this._range.from;
				var c = this._range.to;
				if (c && d && (c.valueOf() != d.valueOf())) {
					if (b.from) {
						b.from.setHours(d.getHours(), d.getMinutes(), d.getSeconds(), d.getMilliseconds())
					}
					if (b.to) {
						b.to.setHours(c.getHours(), c.getMinutes(), c.getSeconds(), c.getMilliseconds())
					}
				}
			}
			return b
		},
		_validateValue: function (e) {
			var b = false;
			for (var d = 0; d < this.items.length; d++) {
				var c = this.editors[d].value;
				switch (this.items[d].type) {
				case "FORMAT_AMPM":
					if (c < 0) {
						c = 0
					} else {
						if (c > 1) {
							c = 1
						}
					}
					break;
				case "Character":
					break;
				case "Day":
					if (c < 1) {
						c = 1
					} else {
						if (c > 31) {
							c = 31
						}
					}
					break;
				case "FORMAT_hh":
					if (c < 1) {
						c = 1
					} else {
						if (c > 12) {
							c = 12
						}
					}
					break;
				case "FORMAT_HH":
					if (c < 0) {
						c = 0
					} else {
						if (c > 23) {
							c = 23
						}
					}
					break;
				case "Millisecond":
					if (c < 0) {
						c = 0
					} else {
						if (c > 999) {
							c = 999
						}
					}
					break;
				case "Minute":
					if (c < 0) {
						c = 0
					} else {
						if (c > 59) {
							c = 59
						}
					}
					break;
				case "Month":
					if (c < 1) {
						c = 1
					} else {
						if (c > 12) {
							c = 12
						}
					}
					break;
				case "ReadOnly":
					break;
				case "Second":
					if (c < 0) {
						c = 0
					} else {
						if (c > 59) {
							c = 59
						}
					}
					break;
				case "Year":
					if (c < this.minDate.year) {
						c = this.minDate.year
					} else {
						if (c > this.maxDate.year) {
							c = this.maxDate.year
						}
					}
					break
				}
				if (this.editors[d].value != c) {
					this.editors[d].value = c;
					b = true
				}
			}
			this.updateValue(e);
			if (this.value != null && e === true) {
				if (this.value.dateTime > this.maxDate.dateTime) {
					this._internalSetValue(this.maxDate);
					this._updateEditorsValue()
				} else {
					if (this.value.dateTime < this.minDate.dateTime) {
						this._internalSetValue(this.minDate);
						this._updateEditorsValue()
					}
				}
				this._updateText()
			}
		},
		spinUp: function () {
			var d = this.value;
			if (d == null) {
				return
			}
			if (this.activeEditor != null) {
				var b = this.editors.indexOf(this.activeEditor);
				if (b == -1) {
					return
				}
				if (this.items[b].type == "Day") {
					if (this.value != null) {
						this.activeEditor.maxValue = this.value._daysInMonth(this.value.year, this.value.month)
					}
				}
				var c = this.activeEditor.positions;
				this.activeEditor.increaseValue(this.enableAbsoluteSelection);
				this.activeEditor.positions = c
			}
			if (this.isEditing) {
				this.isEditing = false
			}
			this.updateValue();
			this.isEditing = true;
			this._updateText();
			var e = this.editors.indexOf(this.activeEditor);
			if (e >= 0) {
				this._selectGroup(e)
			}
		},
		spinDown: function () {
			var d = this.value;
			if (d == null) {
				return
			}
			if (this.activeEditor != null) {
				var b = this.editors.indexOf(this.activeEditor);
				if (b == -1) {
					return
				}
				if (this.items[b].type == "Day") {
					if (this.value != null) {
						this.activeEditor.maxValue = this.value._daysInMonth(this.value.year, this.value.month)
					}
				}
				var c = this.activeEditor.positions;
				this.activeEditor.decreaseValue(this.enableAbsoluteSelection);
				this.activeEditor.positions = c
			}
			if (this.isEditing) {
				this.isEditing = false
			}
			this.updateValue();
			this.isEditing = true;
			this._updateText();
			var e = this.editors.indexOf(this.activeEditor);
			if (e >= 0) {
				this._selectGroup(e)
			}
		},
		_passKeyToCalendar: function (c) {
			if (c.keyCode == 13 || c.keyCode == 9) {
				this.hideCalendar("selected", "keyboard");
				return true
			} else {
				if (c.keyCode == 27) {
					var e = this.calendarContainer;
					var d = this._calendar;
					var f = this.closeCalendarAfterSelection;
					this.closeCalendarAfterSelection = false;
					d.setDate(this.value.dateTime);
					this.closeCalendarAfterSelection = f;
					this.hideCalendar()
				}
			}
			var f = this.closeCalendarAfterSelection;
			this.closeCalendarAfterSelection = false;
			var b = this._calendar._handleKey(c);
			this.closeCalendarAfterSelection = f;
			return b
		},
		handleCalendarKey: function (f, e) {
			var c = a(f.target);
			var d = a.data(document.body, "openedJQXCalendar" + this.id);
			if (d != null) {
				if (d.length > 0) {
					var b = e._passKeyToCalendar(f);
					return b
				}
			}
			return true
		},
		_findPos: function (c) {
			if (c == null) {
				return
			}
			while (c && (c.type == "hidden" || c.nodeType != 1 || a.expr.filters.hidden(c))) {
				c = c.nextSibling
			}
			var b = a(c).coord(true);
			return [b.left, b.top]
		},
		testOffset: function (h, f, c) {
			var g = h.outerWidth();
			var k = h.outerHeight();
			var j = a(window).width() + a(window).scrollLeft();
			var e = a(window).height() + a(window).scrollTop();
			if (f.left + g > j) {
				if (g > this.host.width()) {
					var d = this.host.coord().left;
					var b = g - this.host.width();
					f.left = d - b + 2
				}
			}
			if (f.left < 0) {
				f.left = parseInt(this.host.coord().left) + "px"
			}
			f.top -= Math.min(f.top, (f.top + k > e && e > k) ? Math.abs(k + c + 23) : 0);
			return f
		},
		open: function (b) {
			if (b == "time") {
				this.timePopup = true
			} else {
				this.timePopup = false
			}
			this.showCalendar()
		},
		close: function (b) {
			this.hideCalendar()
		},
		_getBodyOffset: function () {
			var c = 0;
			var b = 0;
			if (a("body").css("border-top-width") != "0px") {
				c = parseInt(a("body").css("border-top-width"));
				if (isNaN(c)) {
					c = 0
				}
			}
			if (a("body").css("border-left-width") != "0px") {
				b = parseInt(a("body").css("border-left-width"));
				if (isNaN(b)) {
					b = 0
				}
			}
			return {
				left: b,
				top: c
			}
		},
		initTimePopup: function () {
			this.timePopupElement = a("<div style='border-style: solid; border-width: 0px;'></div>").appendTo(this.timeContainer);
			this.timePopupElement.addClass(this.toThemeProperty("jqx-widget-content jqx-widget jqx-date-time-input-popup"));
			var t = "";
			t += "<table><tbody><tr><td><a class='increment-hour-column' href='javascript:;' data-action='incrementHour'><div class='jqx-icon-up'></div></a></td><td class='separator'>&nbsp;</td><td><a class='increment-minute-column' href='javascript:;' data-action='incrementMinute'><div class='jqx-icon-up'></div></a></td><td class='separator'>&nbsp;</td><td><a class='increment-second-column' href='javascript:;' data-action='incrementSecond'><div class='jqx-icon-up'></div></a></td><td class='separator'>&nbsp;</td><td><a class='increment-millisecond-column' href='javascript:;' data-action='incrementMSSecond'><div class='jqx-icon-up'></div></a></td><td class='separator'>&nbsp;</td><td class='increment-meridian-column'><a href='javascript:;' data-action='toggleMeridian'><div class='jqx-icon-up'></div></a></td></tr><tr><td><input type='text' class='jqx-timepicker-hour' maxlength='2'></td><td class='separator'>:</td><td><input type='text' class='jqx-timepicker-minute' maxlength='2'></td><td class='separator'>:</td><td><input type='text' class='jqx-timepicker-second' maxlength='2'></td><td class='separator'>:</td><td><input type='text' class='jqx-timepicker-millisecond' maxlength='3'></td><td class='separator'>&nbsp;</td><td><input type='text' class='jqx-timepicker-meridian' maxlength='2'></td></tr><tr><td><a class='decrement-hour-column' href='javascript:;' data-action='decrementHour'><div class='jqx-icon-down'></div></a></td><td class='separator'></td><td><a class='decrement-minute-column' href='javascript:;' data-action='decrementMinute'><div class='jqx-icon-down'></div></a></td><td class='separator'></td><td><a class='decrement-second-column' href='javascript:;' data-action='decrementSecond'><div class='jqx-icon-down'></div></a></td><td class='separator'></td><td><a class='decrement-millisecond-column' href='javascript:;' data-action='decrementMillisecond'><div class='jqx-icon-down'></div></a></td><td class='separator'>&nbsp;</td><td><a class='decrement-meridian-column' href='javascript:;' data-action='toggleMeridian'><div class='jqx-icon-down'></div></a></td></tr></tbody></table>";
			var m = this._getFormatValue(this.formatString);
			if (this.selectionMode != "range") {
				this.timePopupElement[0].innerHTML = t
			} else {
				this.timePopupElement[0].innerHTML = "<table><tr><td>" + t + "</td><td>-</td><td>" + t + "</td></tr></table>"
			}
			this.timePopupElement.find(".jqx-icon-down").addClass(this.toThemeProperty("jqx-icon jqx-icon-arrow-down"));
			this.timePopupElement.find(".jqx-icon-up").addClass(this.toThemeProperty("jqx-icon jqx-icon-arrow-up"));
			var g = this.timePopupElement.find("input");
			g.addClass(this.toThemeProperty("jqx-input"));
			g.addClass(this.toThemeProperty("jqx-rc-all"));
			this.addHandler(g, "mousedown", function (v) {
				v.stopPropagation()
			});
			var e = function (v) {
				if (v.target.className.indexOf("hour") >= 0) {
					n._decrementHour(a(v.target))
				}
				if (v.target.className.indexOf("minute") >= 0) {
					n._decrementMinuteSecond(a(v.target))
				}
				if (v.target.className.indexOf("second") >= 0) {
					n._decrementMinuteSecond(a(v.target))
				}
				if (v.target.className.indexOf("millisecond") >= 0) {
					n._decrementMillisecond(a(v.target))
				}
				if (v.target.className.indexOf("meridian") >= 0) {
					n._decrementMeridian(a(v.target))
				}
			};
			var l = function (v) {
				if (v.target.className.indexOf("hour") >= 0) {
					n._incrementHour(a(v.target))
				}
				if (v.target.className.indexOf("minute") >= 0) {
					n._incrementMinuteSecond(a(v.target))
				}
				if (v.target.className.indexOf("second") >= 0) {
					n._incrementMinuteSecond(a(v.target))
				}
				if (v.target.className.indexOf("millisecond") >= 0) {
					n._incrementMillisecond(a(v.target))
				}
				if (v.target.className.indexOf("meridian") >= 0) {
					n._incrementMeridian(a(v.target))
				}
			};
			var s = function (w, v) {
				if (!v.isEditing) {
					return
				}
				var x = 0;
				if (!w) {
					w = window.event
				}
				if (w.originalEvent && w.originalEvent.wheelDelta) {
					w.wheelDelta = w.originalEvent.wheelDelta
				}
				if (w.originalEvent && w.originalEvent.deltaY != undefined) {
					x = -w.originalEvent.deltaY
				}
				if (w.wheelDelta) {
					x = w.wheelDelta / 120
				} else {
					if (w.detail) {
						x = -w.detail / 3
					}
				}
				if (x) {
					if (document.activeElement == w.target && w.target.nodeName.toLowerCase() == "input") {
						if (x < 0) {
							e(w)
						} else {
							l(w)
						}
					}
					if (w.preventDefault) {
						w.preventDefault()
					}
					w.returnValue = false
				}
				if (w.preventDefault) {
					w.preventDefault()
				}
				w.returnValue = false
			};
			this.addHandler(g, "wheel", function (v) {
				s(v, n)
			});
			this.addHandler(g, "keydown", function (w) {
				var v = a(w.target);
				if (w.ctrlKey) {
					if (w.keyCode == 38) {
						if (n.isOpened()) {
							n.hideCalendar("keyboard", "keyboard");
							n.dateTimeInput.focus();
							return false
						}
					} else {
						if (w.keyCode == 40) {
							if (!n.isOpened()) {
								n.showCalendar("keyboard", "keyboard");
								n.dateTimeInput.focus();
								return false
							}
						}
					}
				}
				if (w.keyCode == 40) {
					e(w);
					w.preventDefault()
				} else {
					if (w.keyCode == 38) {
						l(w);
						w.preventDefault()
					} else {
						if (w.keyCode == 13) {
							w.preventDefault();
							n.hideCalendar("keyboard", "keyboard");
							n.dateTimeInput.focus()
						} else {
							if (w.keyCode == 27) {
								w.preventDefault();
								n.hideCalendar("cancel");
								n.dateTimeInput.focus()
							}
						}
					}
				}
			});
			this.hourInput = a(g[0]);
			this.minuteInput = a(g[1]);
			this.secondInput = a(g[2]);
			this.mssecondInput = a(g[3]);
			this.meridianInput = a(g[4]);
			this.hourInput2 = a(g[5]);
			this.minuteInput2 = a(g[6]);
			this.secondInput2 = a(g[7]);
			this.mssecondInput2 = a(g[8]);
			this.meridianInput2 = a(g[9]);
			var n = this;
			var p = this.timePopupElement.find(".increment-hour-column");
			this.hourIncrement = a(p[0]);
			this.hourIncrement2 = a(p[1]);
			this.addHandler(g, "change", function (w) {
				var v = a(w.target);
				if (v.val().length <= 1) {
					v.val("0" + a(w.target).val())
				}
				if (w.target.className.indexOf("hour") >= 0) {
					var x = parseInt(a(w.target).val());
					if (m.indexOf("HH") >= 0) {
						while (x > 24) {
							x = x - 24
						}
					} else {
						while (x > 12) {
							x = x - 12
						}
					}
					if (x < 10) {
						x = "0" + x
					}
					if (v.val() != x) {
						v.val(x)
					}
				}
				if (w.target.className.indexOf("minute") >= 0 || w.target.className.indexOf("second") >= 0) {
					var x = parseInt(a(w.target).val());
					while (x > 59) {
						x--
					}
					if (x < 10) {
						x = "0" + x
					}
					if (v.val() != x) {
						v.val(x)
					}
				}
			});
			this._incrementHour = function (v) {
				var w = parseInt(v.val());
				w++;
				if (m.indexOf("HH") >= 0) {
					if (w > 23) {
						w = 0
					}
				} else {
					if (w > 12) {
						w = 1
					}
				}
				if (w < 10) {
					w = "0" + w
				}
				v.val(w)
			};
			this._incrementMinuteSecond = function (v) {
				var w = parseInt(v.val());
				w++;
				if (w > 59) {
					w = 0
				}
				if (w < 10) {
					w = "0" + w
				}
				v.val(w)
			};
			this._incrementMillisecond = function (v) {
				var w = parseInt(v.val());
				w++;
				if (w > 999) {
					w = 0
				}
				if (w < 10) {
					w = "0" + w
				}
				v.val(w)
			};
			this._incrementMeridian = function (v) {
				var w = v.val();
				if (w.toLowerCase().indexOf("a") >= 0) {
					w = "PM"
				} else {
					w = "AM"
				}
				v.val(w)
			};
			this._decrementHour = function (v) {
				var w = parseInt(v.val());
				w--;
				if (m.indexOf("HH") >= 0) {
					if (w < 0) {
						w = 23
					}
				} else {
					if (w < 1) {
						w = 12
					}
				}
				if (w < 10) {
					w = "0" + w
				}
				v.val(w)
			};
			this._decrementMinuteSecond = function (v) {
				var w = parseInt(v.val());
				w--;
				if (w < 0) {
					w = 59
				}
				if (w < 10) {
					w = "0" + w
				}
				v.val(w)
			};
			this._decrementMillisecond = function (v) {
				var w = parseInt(v.val());
				w--;
				if (w < 0) {
					w = 999
				}
				if (w < 10) {
					w = "0" + w
				}
				v.val(w)
			};
			this._decrementMeridian = function (v) {
				var w = v.val();
				if (w.toLowerCase().indexOf("a") >= 0) {
					w = "PM"
				} else {
					w = "AM"
				}
				v.val(w)
			};
			this.addHandler(this.hourIncrement, "mousedown", function (v) {
				v.stopPropagation();
				n._incrementHour(n.hourInput)
			});
			this.addHandler(this.hourIncrement2, "mousedown", function (v) {
				v.stopPropagation();
				n._incrementHour(n.hourInput2)
			});
			var q = this.timePopupElement.find(".increment-minute-column");
			this.minuteIncrement = a(q[0]);
			this.minuteIncrement2 = a(q[1]);
			this.addHandler(this.minuteIncrement, "mousedown", function (v) {
				v.stopPropagation();
				n._incrementMinuteSecond(n.minuteInput)
			});
			this.addHandler(this.minuteIncrement2, "mousedown", function (v) {
				v.stopPropagation();
				n._incrementMinuteSecond(n.minuteInput2)
			});
			var c = this.timePopupElement.find(".increment-second-column");
			this.secondIncrement = a(c[0]);
			this.secondIncrement2 = a(c[1]);
			this.addHandler(this.secondIncrement, "mousedown", function (v) {
				v.stopPropagation();
				n._incrementMinuteSecond(n.secondInput)
			});
			this.addHandler(this.secondIncrement2, "mousedown", function (v) {
				v.stopPropagation();
				n._incrementMinuteSecond(n.secondInput2)
			});
			var d = this.timePopupElement.find(".increment-millisecond-column");
			this.millisecondsIncrement = a(d[0]);
			this.millisecondsIncrement2 = a(d[1]);
			this.addHandler(this.millisecondsIncrement, "mousedown", function (v) {
				v.stopPropagation();
				n._incrementMillisecond(n.mssecondInput)
			});
			this.addHandler(this.millisecondsIncrement2, "mousedown", function (v) {
				v.stopPropagation();
				n._incrementMillisecond(n.mssecondInput2)
			});
			var j = this.timePopupElement.find(".increment-meridian-column");
			this.meridianIncrement = a(j[0]);
			this.meridianIncrement2 = a(j[1]);
			this.addHandler(this.meridianIncrement, "mousedown", function (v) {
				v.stopPropagation();
				n._incrementMeridian(n.meridianInput)
			});
			this.addHandler(this.meridianIncrement2, "mousedown", function (v) {
				v.stopPropagation();
				n._incrementMeridian(n.meridianInput2)
			});
			var o = this.timePopupElement.find(".decrement-hour-column");
			this.hourDecrement = a(o[0]);
			this.hourDecrement2 = a(o[1]);
			this.addHandler(this.hourDecrement, "mousedown", function (v) {
				v.stopPropagation();
				n._decrementHour(n.hourInput)
			});
			this.addHandler(this.hourDecrement2, "mousedown", function (v) {
				v.stopPropagation();
				n._decrementHour(n.hourInput2)
			});
			var k = this.timePopupElement.find(".decrement-minute-column");
			this.minuteDecrement = a(k[0]);
			this.minuteDecrement2 = a(k[1]);
			this.addHandler(this.minuteDecrement, "mousedown", function (v) {
				v.stopPropagation();
				n._decrementMinuteSecond(n.minuteInput)
			});
			this.addHandler(this.minuteDecrement2, "mousedown", function (v) {
				v.stopPropagation();
				n._decrementMinuteSecond(n.minuteInput2)
			});
			var u = this.timePopupElement.find(".decrement-second-column");
			this.secondDecrement = a(u[0]);
			this.secondDecrement2 = a(u[1]);
			this.addHandler(this.secondDecrement, "mousedown", function (v) {
				v.stopPropagation();
				n._decrementMinuteSecond(n.secondInput)
			});
			this.addHandler(this.secondDecrement2, "mousedown", function (v) {
				v.stopPropagation();
				n._decrementMinuteSecond(n.secondInput2)
			});
			var b = this.timePopupElement.find(".decrement-millisecond-column");
			this.millisecondsDecrement = a(b[0]);
			this.millisecondsDecrement2 = a(b[1]);
			this.addHandler(this.millisecondsDecrement, "mousedown", function (v) {
				v.stopPropagation();
				n._decrementMillisecond(n.mssecondInput)
			});
			this.addHandler(this.millisecondsDecrement2, "mousedown", function (v) {
				v.stopPropagation();
				n._decrementMillisecond(n.mssecondInput2)
			});
			var f = this.timePopupElement.find(".decrement-meridian-column");
			this.meridianDecrement = a(f[0]);
			this.meridianDecrement2 = a(f[1]);
			this.addHandler(this.meridianDecrement, "mousedown", function (v) {
				v.stopPropagation();
				n._decrementMeridian(n.meridianInput)
			});
			this.addHandler(this.meridianDecrement2, "mousedown", function (v) {
				v.stopPropagation();
				n._decrementMeridian(n.meridianInput2)
			});
			var r = this.timePopupElement.find("table");
			this.addHandler(this.timePopupElement, "mousedown", function (v) {
				v.stopPropagation()
			});
			var h = function (v) {
				var w = v.find("tr");
				if (m.indexOf("mm") == -1) {
					n.minuteInput.hide();
					n.minuteInput2.hide();
					a(a(w[0]).children()[1]).hide();
					a(a(w[0]).children()[2]).hide();
					a(a(w[1]).children()[1]).hide();
					a(a(w[1]).children()[2]).hide();
					a(a(w[2]).children()[1]).hide();
					a(a(w[2]).children()[2]).hide()
				}
				if (m.indexOf("ss") == -1) {
					n.secondInput.hide();
					n.secondInput2.hide();
					a(a(w[0]).children()[3]).hide();
					a(a(w[0]).children()[4]).hide();
					a(a(w[1]).children()[3]).hide();
					a(a(w[1]).children()[4]).hide();
					a(a(w[2]).children()[3]).hide();
					a(a(w[2]).children()[4]).hide()
				}
				if (m.indexOf("tt") == -1 && m.indexOf("hh") == -1) {
					n.meridianInput.hide();
					n.meridianInput2.hide();
					a(a(w[0]).children()[7]).hide();
					a(a(w[0]).children()[8]).hide();
					a(a(w[1]).children()[7]).hide();
					a(a(w[1]).children()[8]).hide();
					a(a(w[2]).children()[7]).hide();
					a(a(w[2]).children()[8]).hide()
				}
				if (m.indexOf("zz") == -1) {
					n.mssecondInput.hide();
					n.mssecondInput2.hide();
					a(a(w[0]).children()[5]).hide();
					a(a(w[0]).children()[6]).hide();
					a(a(w[1]).children()[5]).hide();
					a(a(w[1]).children()[6]).hide();
					a(a(w[2]).children()[5]).hide();
					a(a(w[2]).children()[6]).hide()
				}
			};
			if (r.length == 1) {
				h(r)
			} else {
				h(a(a(r)[1]));
				h(a(a(r)[2]))
			}
		},
		updateTimePopup: function () {
			var b = this._getFormatValue(this.formatString);
			if (this.selectionMode != "range") {
				var f = this.getDate();
				if (this.hourInput) {
					if (f) {
						var c = f.getHours();
						var h = f.getMinutes();
						var g = f.getHours();
						var e = f.getSeconds();
						var d = f.getMilliseconds()
					} else {
						var c = 0;
						var h = 0;
						var g = 0;
						var e = 0;
						var d = 0
					}
					if (c >= 12) {
						g = "PM";
						if (b.indexOf("HH") == -1) {
							c -= 12;
							if (c == 0) {
								c = 12
							}
						}
					} else {
						g = "AM"
					}
					if (this.meridianInput.css("display") != "none") {
						if (c == 0) {
							c = 12
						}
					}
					if (c < 10) {
						c = "0" + c
					}
					if (h < 10) {
						h = "0" + h
					}
					if (e < 10) {
						e = "0" + e
					}
					if (d < 10) {
						d = "0" + d
					}
					this.hourInput.val(c);
					this.minuteInput.val(h);
					this.secondInput.val(e);
					this.mssecondInput.val(d);
					this.meridianInput.val(g)
				}
			} else {
				var f = this.getRange().from;
				if (this.hourInput) {
					if (f) {
						var c = f.getHours();
						var h = f.getMinutes();
						var g = f.getHours();
						var e = f.getSeconds();
						var d = f.getMilliseconds()
					} else {
						var c = 0;
						var h = 0;
						var g = 0;
						var e = 0;
						var d = 0
					}
					if (c >= 12) {
						g = "PM";
						if (b.indexOf("HH") == -1) {
							c -= 12;
							if (c == 0) {
								c = 12
							}
						}
					} else {
						g = "AM"
					}
					if (this.meridianInput.css("display") != "none") {
						if (c == 0) {
							c = 12
						}
					}
					if (c < 10) {
						c = "0" + c
					}
					if (h < 10) {
						h = "0" + h
					}
					if (e < 10) {
						e = "0" + e
					}
					if (d < 10) {
						d = "0" + d
					}
					this.hourInput.val(c);
					this.minuteInput.val(h);
					this.secondInput.val(e);
					this.mssecondInput.val(d);
					this.meridianInput.val(g)
				}
				var f = this.getRange().to;
				if (this.hourInput2) {
					if (f) {
						var c = f.getHours();
						var h = f.getMinutes();
						var g = f.getHours();
						var e = f.getSeconds();
						var d = f.getMilliseconds()
					} else {
						var c = 0;
						var h = 0;
						var g = 0;
						var e = 0;
						var d = 0
					}
					if (c >= 12) {
						g = "PM";
						if (b.indexOf("HH") == -1) {
							c -= 12;
							if (c == 0) {
								c = 12
							}
						}
					} else {
						g = "AM"
					}
					if (this.meridianInput.css("display") != "none") {
						if (c == 0) {
							c = 12
						}
					}
					if (c < 10) {
						c = "0" + c
					}
					if (h < 10) {
						h = "0" + h
					}
					if (e < 10) {
						e = "0" + e
					}
					if (d < 10) {
						d = "0" + d
					}
					this.hourInput2.val(c);
					this.minuteInput2.val(h);
					this.secondInput2.val(e);
					this.mssecondInput2.val(d);
					this.meridianInput2.val(g)
				}
			}
		},
		showCalendar: function () {
			var o = this.calendarContainer;
			var s = this._calendar;
			a.jqx.aria(this, "aria-expanded", true);
			if (this.showTimeButton) {
				if (this.timePopup) {
					if (!this.timePopupElement) {
						this.initTimePopup()
					}
					this.calendarContainer.css("visibility", "hidden");
					this.timeContainer.css("visibility", "visible");
					this.updateTimePopup();
					var d = this.timeContainer.find("input");
					var v = 0;
					for (var z = 0; z < d.length; z++) {
						if (d[z].style.display != "none") {
							v += 50
						}
					}
					this.container.width(parseInt(v));
					if (!this.touch) {
						setTimeout(function () {
							d[0].focus();
							a(d[0]).select()
						}, 150 + this.openDelay)
					}
				} else {
					this.container.width(parseInt(this.calendarContainer.width()) + 25);
					this.timeContainer.css("visibility", "hidden");
					this.calendarContainer.css("visibility", "visible")
				}
			}
			if (this.value != null) {
				if (this.selectionMode != "range") {
					this._oldDT = new Date(this.value.dateTime)
				} else {
					this._oldDT = this.getRange()
				}
			} else {
				this._oldDT = null
			}
			if (!s.canRender) {
				s.canRender = true;
				s.render()
			}
			var l = this.container;
			var r = this;
			var g = a(window).scrollTop();
			var h = a(window).scrollLeft();
			var p = parseInt(this._findPos(this.host[0])[1]) + parseInt(this.host.outerHeight()) - 1 + "px";
			var e,
			u = parseInt(Math.round(this.host.coord(true).left));
			if (this.dropDownContainer === "element") {
				p = parseInt(this.host.outerHeight()) - 1 + "px";
				e = 0
			}
			e = u + "px";
			var A = a.jqx.mobile.isSafariMobileBrowser() || a.jqx.mobile.isWindowsPhone();
			if ((A != null && A)) {
				e = a.jqx.mobile.getLeftPos(this.element);
				p = a.jqx.mobile.getTopPos(this.element) + parseInt(this.host.outerHeight());
				if (a("body").css("border-top-width") != "0px") {
					p = parseInt(p) - this._getBodyOffset().top + "px"
				}
				if (a("body").css("border-left-width") != "0px") {
					e = parseInt(e) - this._getBodyOffset().left + "px"
				}
			}
			this.container.css("left", e);
			this.container.css("top", p);
			var c = this.closeCalendarAfterSelection;
			this.closeCalendarAfterSelection = false;
			this.isEditing = false;
			if (r.selectionMode == "default") {
				this._validateValue();
				this._updateText();
				var w = this.value != null ? this.value.dateTime : new Date();
				s.setDate(w)
			}
			this.closeCalendarAfterSelection = c;
			var b = false;
			if (this.dropDownHorizontalAlignment == "right" || this.rtl) {
				var k = this.container.outerWidth();
				var x = Math.abs(k - this.host.outerWidth() + 2);
				if (!this.rtl) {
					x -= 2
				}
				if (k > this.host.width()) {
					var f = 23;
					this.container.css("left", f + parseInt(Math.round(u)) - x + "px")
				} else {
					this.container.css("left", 25 + parseInt(Math.round(u)) + x + "px")
				}
			}
			if (this.dropDownVerticalAlignment == "top") {
				var y = o.height();
				if (this.timePopup) {
					this.timeContainer.css("top", this.container.height() - 75)
				}
				b = true;
				o.css("top", 23);
				o.addClass(this.toThemeProperty("jqx-popup-up"));
				var n = parseInt(this.host.outerHeight());
				var m = parseInt(p) - Math.abs(y + n + 23);
				this.container.css("top", m)
			}
			if (this.enableBrowserBoundsDetection) {
				var j = this.testOffset(o, {
						left: parseInt(this.container.css("left")),
						top: parseInt(p)
					}, parseInt(this.host.outerHeight()));
				if (parseInt(this.container.css("top")) != j.top) {
					b = true;
					o.css("top", 23);
					o.addClass(this.toThemeProperty("jqx-popup-up"))
				} else {
					o.css("top", 0)
				}
				this.container.css("top", j.top);
				if (parseInt(this.container.css("left")) != j.left) {
					this.container.css("left", j.left)
				}
			}
			this._raiseEvent(7, o);
			if (this.animationType != "none") {
				this.container.css("display", "block");
				var q = parseInt(o.outerHeight());
				o.stop();
				this.isanimating = true;
				this.opening = true;
				if (this.animationType == "fade") {
					o.css("margin-top", 0);
					o.css("opacity", 0);
					o.animate({
						opacity: 1
					}, this.openDelay, function () {
						r.isanimating = false;
						r.opening = false;
						a.data(document.body, "openedJQXCalendar" + r.id, o);
						r.calendarContainer.focus()
					});
					if (this.timePopup) {
						this.timeContainer.css("margin-top", 0);
						this.timeContainer.css("opacity", 0);
						this.timeContainer.animate({
							opacity: 1
						}, this.openDelay, function () {
							r.isanimating = false;
							r.opening = false;
							a.data(document.body, "openedJQXCalendar" + r.id, o);
							r.timeContainer.focus()
						})
					}
				} else {
					o.css("opacity", 1);
					if (this.timePopup) {
						this.timeContainer.css("opacity", 1)
					}
					if (b) {
						o.css("margin-top", q)
					} else {
						o.css("margin-top", -q)
					}
					if (this.timePopup) {
						if (b) {
							this.timeContainer.css("margin-top", q)
						} else {
							this.timeContainer.css("margin-top", -q)
						}
						this.timeContainer.animate({
							"margin-top": 0
						}, this.openDelay, function () {
							r.isanimating = false;
							r.opening = false;
							a.data(document.body, "openedJQXCalendar" + r.id, o);
							r.timeContainer.focus()
						})
					}
					o.animate({
						"margin-top": 0
					}, this.openDelay, function () {
						r.isanimating = false;
						r.opening = false;
						a.data(document.body, "openedJQXCalendar" + r.id, o);
						r.calendarContainer.focus()
					})
				}
			} else {
				o.stop();
				r.isanimating = false;
				r.opening = false;
				o.css("opacity", 1);
				o.css("margin-top", 0);
				this.container.css("display", "block");
				a.data(document.body, "openedJQXCalendar" + r.id, o);
				this.calendarContainer.focus();
				if (this.timePopup) {
					this.timeContainer.stop();
					this.timeContainer.css("opacity", 1);
					this.timeContainer.css("margin-top", 0);
					this.timeContainer.focus()
				}
			}
			if (this.value == null) {
				if (this._calendar && this._calendar._getSelectedCell()) {
					this._calendar._getSelectedCell().isSelected = false
				}
			}
			if (this.timePopup) {
				this.timeButtonIcon.addClass(this.toThemeProperty("jqx-icon-time-pressed"));
				this.timeButton.addClass(this.toThemeProperty("jqx-fill-state-hover"));
				this.timeButton.addClass(this.toThemeProperty("jqx-fill-state-pressed"));
				this.timeContainer.addClass(this.toThemeProperty("jqx-fill-state-focus"))
			} else {
				this.calendarButtonIcon.addClass(this.toThemeProperty("jqx-icon-calendar-pressed"));
				this.calendarButton.addClass(this.toThemeProperty("jqx-fill-state-hover"));
				this.calendarButton.addClass(this.toThemeProperty("jqx-fill-state-pressed"));
				this.calendarContainer.addClass(this.toThemeProperty("jqx-fill-state-focus"))
			}
			this.host.addClass(this.toThemeProperty("jqx-fill-state-focus"))
		},
		hideCalendar: function (k, p) {
			if (p) {
				this.changeType = p
			}
			var h = this.calendarContainer;
			var b = this.container;
			var q = this;
			a.jqx.aria(this, "aria-expanded", false);
			if (this.showTimeButton) {
				if (this.timeContainer.css("visibility") != "hidden" && k != "cancel") {
					if (this.selectionMode != "range" && this.hourInput) {
						var e = this.getDate();
						var g = parseInt(this.hourInput.val());
						var f = parseInt(this.minuteInput.val());
						var c = parseInt(this.secondInput.val());
						var r = parseInt(this.mssecondInput.val());
						var d = this.meridianInput.val();
						if (isNaN(g)) {
							g = 0
						}
						if (isNaN(f)) {
							f = 0
						}
						if (isNaN(c)) {
							c = 0
						}
						if (isNaN(r)) {
							r = 0
						}
						if (this.meridianInput.css("display") != "none") {
							if (d.toLowerCase().indexOf("p") >= 0) {
								if (g < 12) {
									g += 12
								}
							}
							if (d.toLowerCase().indexOf("a") >= 0) {
								if (g >= 12) {
									g -= 12
								}
							}
						}
						if (!e) {
							e = new Date()
						}
						e.setHours(g, f, c, r);
						this.setDate(e)
					} else {
						if (this.hourInput && k != "selected") {
							var j = this.getRange();
							var g = parseInt(this.hourInput.val());
							var f = parseInt(this.minuteInput.val());
							var c = parseInt(this.secondInput.val());
							var r = parseInt(this.mssecondInput.val());
							var d = this.meridianInput.val();
							if (isNaN(g)) {
								g = 0
							}
							if (isNaN(f)) {
								f = 0
							}
							if (isNaN(c)) {
								c = 0
							}
							if (isNaN(r)) {
								r = 0
							}
							if (this.meridianInput.css("display") != "none") {
								if (d.toLowerCase().indexOf("p") >= 0) {
									if (g < 12) {
										g += 12
									}
								}
								if (d.toLowerCase().indexOf("a") >= 0) {
									if (g >= 12) {
										g -= 12
									}
								}
							}
							var m = j.from;
							if (!m) {
								m = new Date()
							}
							m.setHours(g, f, c, r);
							var g = parseInt(this.hourInput2.val());
							var f = parseInt(this.minuteInput2.val());
							var c = parseInt(this.secondInput2.val());
							var r = parseInt(this.mssecondInput2.val());
							var d = this.meridianInput2.val();
							if (f == "") {
								f = 0
							}
							if (c == "") {
								c = 0
							}
							if (r == "") {
								r = 0
							}
							if (this.meridianInput2.css("display") != "none") {
								if (d.toLowerCase().indexOf("p") >= 0) {
									if (g < 12) {
										g += 12
									}
								}
								if (d.toLowerCase().indexOf("a") >= 0) {
									if (g >= 12) {
										g -= 12
									}
								}
							}
							var l = j.to;
							if (!l) {
								l = new Date()
							}
							l.setHours(g, f, c, r);
							if (l.valueOf() < m.valueOf()) {
								return false
							}
							this.setRange(m, l)
						} else {
							if (k == "selected") {
								return
							}
						}
					}
				}
			}
			a.data(document.body, "openedJQXCalendar" + this.id, null);
			if (this.animationType != "none") {
				var o = h.outerHeight();
				h.css("margin-top", 0);
				if (this.showTimeButton) {
					this.timeContainer.css("margin-top", 0)
				}
				this.isanimating = true;
				var n = -o;
				if (parseInt(this.container.coord().top) < parseInt(this.host.coord().top)) {
					n = o
				}
				if (this.animationType == "fade") {
					h.animate({
						opacity: 0
					}, this.closeDelay, function () {
						b.css("display", "none");
						q.isanimating = false
					})
				} else {
					h.animate({
						"margin-top": n
					}, this.closeDelay, function () {
						b.css("display", "none");
						q.isanimating = false
					})
				}
				if (this.showTimeButton) {
					if (this.animationType == "fade") {
						this.timeContainer.animate({
							opacity: 0
						}, this.closeDelay, function () {
							b.css("display", "none");
							q.isanimating = false
						})
					} else {
						this.timeContainer.animate({
							"margin-top": n
						}, this.closeDelay, function () {
							b.css("display", "none");
							q.isanimating = false
						})
					}
				}
			} else {
				b.css("display", "none")
			}
			if (k != undefined) {
				this._updateSelectedDate(k)
			}
			this.timeButtonIcon.removeClass(this.toThemeProperty("jqx-icon-time-pressed"));
			this.timeButton.removeClass(this.toThemeProperty("jqx-fill-state-hover"));
			this.timeButton.removeClass(this.toThemeProperty("jqx-fill-state-pressed"));
			this.calendarButtonIcon.removeClass(this.toThemeProperty("jqx-icon-calendar-pressed"));
			this.calendarButton.removeClass(this.toThemeProperty("jqx-fill-state-hover"));
			this.calendarButton.removeClass(this.toThemeProperty("jqx-fill-state-pressed"));
			this.host.removeClass(this.toThemeProperty("jqx-fill-state-focus"));
			this.timeContainer.removeClass(this.toThemeProperty("jqx-fill-state-focus"));
			this.calendarContainer.removeClass(this.toThemeProperty("jqx-fill-state-focus"));
			this._raiseEvent(8, h)
		},
		_updateSelectedDate: function () {
			var m = this.value;
			if (m == null) {
				m = new a.jqx._jqxDateTimeInput.getDateTime(new Date());
				m._setHours(0);
				m._setMinutes(0);
				m._setSeconds(0);
				m._setMilliseconds(0)
			}
			var g = m.hour;
			var f = m.minute;
			var c = m.second;
			var b = m.millisecond;
			if (this.selectionMode == "range" && this._calendar.getRange().from == null) {
				this.setDate(null);
				return
			}
			var d = new a.jqx._jqxDateTimeInput.getDateTime(this._calendar.value.dateTime);
			d._setHours(g);
			d._setMinutes(f);
			d._setSeconds(c);
			d._setMilliseconds(b);
			var n = this.setDate(d.dateTime);
			if (this.selectionMode == "range" && !n && this._oldDT) {
				var h = this.getRange();
				var j = this._oldDT;
				var l = false;
				var k = false;
				var e = this._oldDT.from;
				var d = h.from;
				if (d != null && e) {
					if (!(d.getFullYear() != e.getFullYear() || d.getMonth() != e.getMonth() || d.getDate() != e.getDate() || d.getHours() != e.getHours() || d.getMinutes() != e.getMinutes() || d.getSeconds() != e.getSeconds())) {
						l = true
					}
				}
				var d = h.to;
				if (d != null) {
					e = this._oldDT.to;
					if (e) {
						if (!(d.getFullYear() != e.getFullYear() || d.getMonth() != e.getMonth() || d.getDate() != e.getDate() || d.getHours() != e.getHours() || d.getMinutes() != e.getMinutes() || d.getSeconds() != e.getSeconds())) {
							k = true
						}
					}
				}
				if (l && k) {
					return true
				}
				this._raiseEvent(0, {});
				this._raiseEvent(9, {})
			}
		},
		_closeOpenedCalendar: function (b) {
			var e = a(b.target);
			var k = a.data(document.body, "openedJQXCalendar" + b.data.me.id);
			var d = false;
			a.each(e.parents(), function () {
				if (this.className && this.className.indexOf) {
					if (this.className.indexOf("jqx-calendar") != -1) {
						d = true;
						return false
					}
					if (this.className.indexOf("jqx-date-time-input-popup") != -1) {
						d = true;
						return false
					}
					if (this.className.indexOf("jqx-input") != -1) {
						return false
					}
				}
			});
			if (a(b.target).ischildof(b.data.me.host)) {
				return true
			}
			if (b.target != null && (b.target.tagName == "B" || b.target.tagName == "b")) {
				var l = b.data.me.host.coord();
				var n = b.data.me.host.width();
				var c = b.data.me.host.height();
				var m = parseInt(l.top);
				var g = parseInt(l.left);
				if (m <= b.pageY && b.pageY <= m + c) {
					if (g <= b.pageX && b.pageX <= g + n) {
						return true
					}
				}
			}
			if (k != null && !d) {
				if (k.length > 0) {
					var h = k[0].id.toString();
					var f = h.toString().substring(13);
					var j = a(document).find("#" + f);
					var o = b.data.me.hideCalendar();
					if (o !== false) {
						a.data(document.body, "openedJQXCalendar" + b.data.me.id, null)
					}
				}
			}
		},
		_loadItems: function () {
			if (this.value != null) {
				this.items = new Array();
				var d = this._getFormatValue(this.formatString);
				this.items = this._parseFormatValue(d);
				this.editors = new Array();
				for (var b = 0; b < this.items.length; b++) {
					var c = this.items[b].getDateTimeEditorByItemType(this.value, this);
					this.editors[b] = c
				}
			}
			this._updateEditorsValue();
			this._updateText()
		},
		_updateText: function () {
			var d = this;
			var e = "";
			if (d.items.length == 0 && d.value != null) {
				d._loadItems()
			}
			if (d.value != null) {
				if (d.items.length >= 1) {
					e = d.format(d.value, 0, d.items.length)
				}
				var b = d.dateTimeInput.val();
				if (b != e) {
					d._raiseEvent(1, d.value)
				}
			}
			if (d.selectionMode == "range") {
				var c = d.getRange();
				fromText = d.format(d.value, 0, d.items.length);
				if (c.to) {
					var g = a.jqx._jqxDateTimeInput.getDateTime(c.from);
					fromText = d.format(g, 0, d.items.length);
					var f = a.jqx._jqxDateTimeInput.getDateTime(c.to);
					toText = d.format(f, 0, d.items.length);
					var e = fromText + " - " + toText;
					if (e == " - ") {
						e = ""
					}
				} else {
					e = ""
				}
			}
			d.dateTimeInput.val(e)
		},
		format: function (g, h, f) {
			var b = "";
			for (var e = h; e < f; ++e) {
				var c = this.items[e].dateParser(g, this);
				if (this.isEditing && this.items[e].type != "ReadOnly") {
					if (this.selectionMode != "range") {
						var d = this.items[e].type == "Day" && this.items[e].format.length > 2;
						if (this.items[e].type == "FORMAT_AMPM") {
							d = true;
							if (this.editors[e].value == 0) {
								c = this.editors[e].amString
							} else {
								c = this.editors[e].pmString
							}
						}
						if (!d) {
							c = this.items[e].dateParserInEditMode(new Number(this.editors[e].value), "d" + this.editors[e].maxEditPositions, this);
							while (c.length < this.editors[e].maxEditPositions) {
								c = "0" + c
							}
						}
					}
				}
				b += c
			}
			return b
		},
		_getFormatValueGroupLength: function (b) {
			for (i = 1; i < b.toString().length; ++i) {
				if (b.substring(i, i + 1) != b.substring(0, 1)) {
					return i
				}
			}
			return b.length
		},
		_parseFormatValue: function (h) {
			var c = new Array();
			var f = h.toString();
			var e = 0;
			while (f.length > 0) {
				var d = this._getFormatValueGroupLength(f);
				var g = null;
				switch (f.substring(0, 1)) {
				case ":":
				case "/":
					d = 1;
					g = a.jqx._jqxDateTimeInput.DateTimeFormatItem._create(f.substring(0, 1), "ReadOnly", this.culture);
					break;
				case '"':
				case "'":
					var b = f.indexOf(f[0], 1);
					g = a.jqx._jqxDateTimeInput.DateTimeFormatItem._create(f.substring(1, 1 + Math.max(1, b - 1)), "ReadOnly", this.culture);
					d = Math.max(1, b + 1);
					break;
				case "\\":
					if (f.length >= 2) {
						g = a.jqx._jqxDateTimeInput.DateTimeFormatItem._create(f.substring(1, 1), "ReadOnly", this.culture);
						d = 2
					}
					break;
				case "d":
				case "D":
					if (d > 2) {
						g = a.jqx._jqxDateTimeInput.DateTimeFormatItem._create(f.substring(0, d), "Day", this.culture)
					} else {
						g = a.jqx._jqxDateTimeInput.DateTimeFormatItem._create(f.substring(0, d), "Day", this.culture)
					}
					break;
				case "f":
				case "F":
					if (d > 7) {
						d = 7
					}
					if (d > 3) {
						g = a.jqx._jqxDateTimeInput.DateTimeFormatItem._create(f.substring(0, d), "ReadOnly", this.culture)
					} else {
						g = a.jqx._jqxDateTimeInput.DateTimeFormatItem._create(f.substring(0, d), "Millisecond", this.culture)
					}
					break;
				case "g":
					g = a.jqx._jqxDateTimeInput.DateTimeFormatItem._create(f.substring(0, d), "ReadOnly", this.culture);
					break;
				case "h":
					g = a.jqx._jqxDateTimeInput.DateTimeFormatItem._create(f.substring(0, d), "FORMAT_hh", this.culture);
					break;
				case "H":
					g = a.jqx._jqxDateTimeInput.DateTimeFormatItem._create(f.substring(0, d), "FORMAT_HH", this.culture);
					break;
				case "m":
					g = a.jqx._jqxDateTimeInput.DateTimeFormatItem._create(f.substring(0, d), "Minute", this.culture);
					break;
				case "M":
					if (d > 4) {
						d = 4
					}
					g = a.jqx._jqxDateTimeInput.DateTimeFormatItem._create(f.substring(0, d), "Month", this.culture);
					break;
				case "s":
				case "S":
					g = a.jqx._jqxDateTimeInput.DateTimeFormatItem._create(f.substring(0, d), "Second", this.culture);
					break;
				case "t":
				case "T":
					g = a.jqx._jqxDateTimeInput.DateTimeFormatItem._create(f.substring(0, d), "FORMAT_AMPM", this.culture);
					break;
				case "y":
				case "Y":
					if (d > 1) {
						g = a.jqx._jqxDateTimeInput.DateTimeFormatItem._create(f.substring(0, d), "Year", this.culture)
					} else {
						d = 1;
						g = a.jqx._jqxDateTimeInput.DateTimeFormatItem._create(f.substring(0, 1), dateTimeFormatInfo, "ReadOnly", this.culture)
					}
					break;
				case "z":
					g = a.jqx._jqxDateTimeInput.DateTimeFormatItem._create(f.substring(0, d), "ReadOnly", this.culture);
					break;
				default:
					d = 1;
					g = a.jqx._jqxDateTimeInput.DateTimeFormatItem._create(f.substring(0, 1), "ReadOnly", this.culture);
					break
				}
				c[e] = a.extend(true, {}, g);
				f = f.substring(d);
				e++
			}
			return c
		},
		_getFormatValue: function (b) {
			if (b == null || b.length == 0) {
				b = "d"
			}
			if (b.length == 1) {
				switch (b.substring(0, 1)) {
				case "d":
					return this.localization.calendar.patterns.d;
				case "D":
					return this.localization.calendar.patterns.D;
				case "t":
					return this.localization.calendar.patterns.t;
				case "T":
					return this.localization.calendar.patterns.T;
				case "f":
					return this.localization.calendar.patterns.f;
				case "F":
					return this.localization.calendar.patterns.F;
				case "M":
					return this.localization.calendar.patterns.M;
				case "Y":
					return this.localization.calendar.patterns.Y;
				case "S":
					return this.localization.calendar.patterns.S
				}
			}
			if (b.length == 2 && b.substring(0, 1) == "%") {
				b = b.substring(1)
			}
			return b
		},
		_updateEditorsValue: function () {
			var j = this.value;
			if (j == null) {
				return
			}
			var g = j.year;
			var h = j.day;
			var d = j.hour;
			var l = j.millisecond;
			var b = j.second;
			var c = j.minute;
			var f = j.month;
			if (this.items == null) {
				return
			}
			for (var e = 0; e < this.items.length; e++) {
				switch (this.items[e].type) {
				case "FORMAT_AMPM":
					var k = d % 12;
					if (k == 0) {
						k = 12
					}
					if (d >= 0 && d < 12) {
						this.editors[e].value = 0
					} else {
						this.editors[e].value = 1
					}
					break;
				case "Day":
					this.editors[e].value = h;
					break;
				case "FORMAT_hh":
					var k = d % 12;
					if (k == 0) {
						k = 12
					}
					this.editors[e].value = k;
					break;
				case "FORMAT_HH":
					this.editors[e].value = d;
					break;
				case "Millisecond":
					this.editors[e].value = l;
					break;
				case "Minute":
					this.editors[e].value = c;
					break;
				case "Month":
					this.editors[e].value = f;
					break;
				case "Second":
					this.editors[e].value = b;
					break;
				case "Year":
					this.editors[e].value = g;
					break
				}
			}
		},
		updateValue: function (z) {
			if (this.isEditing) {
				return
			}
			if (this.items && this.items.length == 0) {
				return
			}
			var o = 0;
			var s = 1;
			var C = 1;
			var l = 0;
			var d = 0;
			var J = 0;
			var u = 0;
			var I = 1;
			var h = 0;
			var m = false;
			var r = false;
			var D = false;
			var c = false;
			var b = false;
			var q = false;
			var x = false;
			var t = new Array();
			var e = null;
			var y = 0;
			for (var B = 0; B < this.items.length; B++) {
				switch (this.items[B].type) {
				case "FORMAT_AMPM":
					h = this.editors[B].value;
					e = this.editors[B];
					break;
				case "Character":
					break;
				case "Day":
					if (this.items[B].format.length < 3) {
						C = this.editors[B].value;
						t[y++] = this.editors[B];
						if (C == 0) {
							C = 1
						}
						D = true
					}
					break;
				case "FORMAT_hh":
					var F = this.editors[B];
					l = F.value;
					c = true;
					break;
				case "FORMAT_HH":
					l = this.editors[B].value;
					c = true;
					break;
				case "Millisecond":
					d = this.editors[B].value;
					x = true;
					break;
				case "Minute":
					u = this.editors[B].value;
					b = true;
					break;
				case "Month":
					I = this.editors[B].value;
					r = true;
					if (I == 0) {
						I = 1
					}
					break;
				case "ReadOnly":
					break;
				case "Second":
					J = this.editors[B].value;
					q = true;
					break;
				case "Year":
					m = true;
					s = this.editors[B].value;
					var H = this.editors[B].getDateTimeItem().format;
					if (H.length < 3) {
						var w = "1900";
						if (w.Length == 4) {
							var v = "" + w[0] + w[1];
							var E;
							E = parseInt(v);
							s = s + (E * 100)
						}
					}
					if (s == 0) {
						s = 1
					}
					break
				}
			}
			var G = this.value != null ? new Date(this.value.dateTime) : null;
			if (s > 0 && I > 0 && C > 0 && u >= 0 && l >= 0 && J >= 0 && d >= 0) {
				var K = this.value;
				if (K != null) {
					if (!m) {
						s = K.year
					}
					if (!r) {
						I = K.month
					}
					if (!D) {
						C = K.day
					}
				}
				try {
					if (I > 12) {
						I = 12
					}
					if (I < 1) {
						I = 1
					}
					if (z && K._daysInMonth(s, I) <= C) {
						C = K._daysInMonth(s, I);
						if (t != null && t.length > 0) {
							for (B = 0; B < t.length; B++) {
								t[B].value = C
							}
						}
					}
					if (e != null) {
						if (e.value == 0) {
							if (l >= 12) {
								l -= 12
							}
						} else {
							if (l + 12 < 24) {
								l += 12
							}
						}
					}
					var g = this.value.dateTime.getDate();
					this.value._setYear(parseInt(s));
					this.value._setDay(C);
					this.value._setMonth(I);
					if (c) {
						this.value._setHours(l)
					}
					if (b) {
						this.value._setMinutes(u)
					}
					if (q) {
						this.value._setSeconds(J)
					}
					if (x) {
						this.value._setMilliseconds(d)
					}
					this._validateTimeRange()
				} catch (j) {
					this.value = K
				}
				if (G != null) {
					var A = this.value.dateTime.getFullYear() == G.getFullYear() && this.value.dateTime.getDate() == G.getDate() && this.value.dateTime.getMonth() == G.getMonth() && this.value.dateTime.getHours() == G.getHours() && this.value.dateTime.getMinutes() == G.getMinutes() && this.value.dateTime.getSeconds() == G.getSeconds();
					if (!A) {
						if (this.changing) {
							var n = this.changing(G, this.value.dateTime);
							if (n) {
								this.value = a.jqx._jqxDateTimeInput.getDateTime(n)
							}
						}
						this._raiseEvent("0", this.value.dateTime);
						if (this.cookies) {
							if (this.value != null) {
								a.jqx.cookie.cookie("jqxDateTimeInput" + this.element.id, this.value.dateTime.toString(), this.cookieoptions)
							}
						}
						if (this.change) {
							this.change(this.value.dateTime)
						}
					}
				}
			}
			var f = this.editors.indexOf(this.activeEditor);
			var p = this.items[f];
			if (this.value) {
				if (this.calendarContainer.jqxCalendar("_isDisabled", this.value.dateTime)) {
					this.dateTimeInput.addClass(this.toThemeProperty("jqx-input-invalid"))
				} else {
					this.dateTimeInput.removeClass(this.toThemeProperty("jqx-input-invalid"))
				}
			}
		},
		_internalSetValue: function (b) {
			this.value._setYear(parseInt(b.year));
			this.value._setDay(b.day);
			this.value._setMonth(b.month);
			this.value._setHours(b.hour);
			this.value._setMinutes(b.minute);
			this.value._setSeconds(b.second);
			this.value._setMilliseconds(b.milisecond)
		},
		_raiseEvent: function (c, o, f) {
			var n = this.events[c];
			var g = {};
			g.owner = this;
			if (o == null) {
				o = {}
			}
			if (f == null) {
				f = o
			}
			var m = o.charCode ? o.charCode : o.keyCode ? o.keyCode : 0;
			var p = true;
			var l = this.readonly;
			var b = new a.Event(n);
			b.owner = this;
			b.args = g;
			b.args.date = this.getDate();
			if (c == 9) {
				b.args.type = this.changeType;
				this.changeType = null
			}
			this.element.value = this.dateTimeInput.val();
			if (c == 9 && this.selectionMode != "range") {
				var d = b.args.date;
				if (this._oldDT) {
					if (d != null) {
						if (!(d.getFullYear() != this._oldDT.getFullYear() || d.getMonth() != this._oldDT.getMonth() || d.getDate() != this._oldDT.getDate() || d.getHours() != this._oldDT.getHours() || d.getMinutes() != this._oldDT.getMinutes() || d.getSeconds() != this._oldDT.getSeconds())) {
							return true
						}
					}
					a.jqx.aria(this, "aria-valuenow", this.getDate());
					a.jqx.aria(this, "aria-valuetext", this.getText());
					if (this.getDate() != null) {
						a.jqx.aria(this, "aria-label", "Current focused date is " + this.getDate().toLocaleString())
					} else {
						a.jqx.aria(this, "aria-label", "Current focused date is Null")
					}
				}
				b.args.oldValue = f;
				b.args.newValue = b.args.date;
				if (this._oldDT) {
					b.args.oldValue = this._oldDT
				}
			}
			if (this.selectionMode == "range") {
				b.args.date = this.getRange();
				if (this._oldDT) {
					var d = b.args.date.from;
					if (c == 9) {
						var k = false;
						var j = false;
						var e = this._oldDT.from;
						if (d != null && e) {
							if (!(d.getFullYear() != e.getFullYear() || d.getMonth() != e.getMonth() || d.getDate() != e.getDate() || d.getHours() != e.getHours() || d.getMinutes() != e.getMinutes() || d.getSeconds() != e.getSeconds())) {
								k = true
							}
						}
						var d = b.args.date.to;
						if (d != null) {
							e = this._oldDT.to;
							if (e) {
								if (!(d.getFullYear() != e.getFullYear() || d.getMonth() != e.getMonth() || d.getDate() != e.getDate() || d.getHours() != e.getHours() || d.getMinutes() != e.getMinutes() || d.getSeconds() != e.getSeconds())) {
									j = true
								}
							}
						}
						if (k && j) {
							return true
						}
						var k = b.args.date.from;
						if (k == null) {
							k = ""
						} else {
							k = k.toString()
						}
						var j = b.args.date.to;
						if (j == null) {
							j = ""
						} else {
							j = j.toString()
						}
						a.jqx.aria(this, "aria-valuenow", k + "-" + j);
						a.jqx.aria(this, "aria-valuetext", this.getText());
						if (k && j) {
							a.jqx.aria(this, "aria-label", "Current focused range is " + k.toLocaleString() + "-" + j.toLocaleString())
						}
					}
				}
				b.args.oldValue = f;
				b.args.newValue = b.args.date;
				if (this._oldDT) {
					b.args.oldValue = this._oldDT
				}
			}
			if (this.host.css("display") == "none") {
				return true
			}
			if (c != 2 && c != 3 && c != 4 && c != 5 && c != 6) {
				p = this.host.trigger(b);
				if (b.stopPropagation) {
					b.stopPropagation()
				}
			}
			var h = this;
			if (!l) {
				if (c == 2 && !this.disabled) {
					setTimeout(function () {
						h.isEditing = true;
						if (this.selectionMode == "range") {
							h._selectGroup(-1)
						} else {
							h._selectGroup(-1)
						}
					}, 25)
				}
			}
			if (c == 4) {
				if (l || this.disabled) {
					if (m == 8 || m == 46) {
						this.isEditing = false;
						if (this.allowKeyboardDelete) {
							if (this.allowNullDate) {
								this.setDate(null)
							} else {
								if (this.selectionMode != "range") {
									this.setDate(this.getMinDate())
								} else {
									this.setRange(this.getMinDate(), this.getMinDate())
								}
							}
						}
					}
					if (m == 9) {
						return true
					}
					if (!o.altKey) {
						return false
					}
				}
				p = this._handleKeyDown(o, m)
			} else {
				if (c == 5) {
					if (m == 9) {
						return true
					}
					if (l || this.disabled) {
						return false
					}
				} else {
					if (c == 6) {
						if (m == 9) {
							return true
						}
						if (l || this.disabled) {
							return false
						}
						p = this._handleKeyPress(o, m)
					}
				}
			}
			return p
		},
		_doLeftKey: function () {
			if (this.activeEditor != null) {
				if (!this.isEditing) {
					this.isEditing = true
				}
				var b = this.activeEditor;
				var d = false;
				var e = this.editors.indexOf(this.activeEditor);
				var c = e;
				if (this.enableAbsoluteSelection) {
					if (e >= 0 && this.activeEditor.positions > 0) {
						this.activeEditor.positions--;
						this._selectGroup(e);
						return
					}
				}
				while (e > 0) {
					this.activeEditor = this.editors[--e];
					this._selectGroup(e);
					if (this.items[e].type != "ReadOnly") {
						d = true;
						break
					}
				}
				if (!d) {
					if (c >= 0) {
						this.activeEditor = this.editors[c]
					}
				}
				if (this.activeEditor != null && b != this.activeEditor) {
					if (this.items[e].type != "ReadOnly") {
						if (this.enableAbsoluteSelection) {
							this.activeEditor.positions = this.activeEditor.maxEditPositions - 1
						} else {
							this.activeEditor.positions = 0
						}
					}
				}
				if (this.activeEditor != b) {
					this._validateValue();
					this._updateText();
					this._selectGroup(this.editors.indexOf(this.activeEditor));
					return true
				} else {
					return false
				}
			}
		},
		_doRightKey: function () {
			if (this.activeEditor != null) {
				if (!this.isEditing) {
					this.isEditing = true
				}
				var b = this.activeEditor;
				var d = false;
				var e = this.editors.indexOf(this.activeEditor);
				var c = e;
				if (this.enableAbsoluteSelection) {
					if (e >= 0 && this.activeEditor.positions < this.activeEditor.maxEditPositions - 1) {
						this.activeEditor.positions++;
						this._selectGroup(e);
						return
					}
				}
				while (e <= this.editors.length - 2) {
					this.activeEditor = this.editors[++e];
					this._selectGroup(e);
					if (this.items[e].type != "ReadOnly") {
						if (this.items[e].type == "Day" && this.items[e].format.length > 2) {
							break
						}
						d = true;
						break
					}
				}
				if (!d) {
					if (c >= 0) {
						this.activeEditor = this.editors[c]
					}
				}
				if (this.activeEditor != null && this.activeEditor != b) {
					if (this.items[e].type != "ReadOnly") {
						this.activeEditor.positions = 0
					}
				}
				if (this.activeEditor != b) {
					this._validateValue();
					this._updateText();
					this._selectGroup(this.editors.indexOf(this.activeEditor));
					return true
				} else {
					return false
				}
			}
		},
		_saveSelectedText: function () {
			var b = this._selection();
			var d = "";
			var c = this.dateTimeInput.val();
			if (b.start > 0 || b.length > 0) {
				for (i = b.start; i < b.end; i++) {
					d += c[i]
				}
			}
			if (window.clipboardData) {
				window.clipboardData.setData("Text", d)
			}
			return d
		},
		_selectWithAdvancePattern: function () {
			var f = this.editors.indexOf(this.activeEditor);
			var g = false;
			if (this.items[f].type != "ReadOnly") {
				g = true
			}
			if (!g) {
				return
			}
			var d = this.activeEditor;
			if (d != null) {
				var e = d.positions == d.maxEditPositions;
				if (e) {
					this.editorText = "";
					var c = d.value;
					var b = false;
					switch (this.items[f].type) {
					case "FORMAT_AMPM":
						if (c < 0) {
							c = 0
						} else {
							if (c > 1) {
								c = 1
							}
						}
						break;
					case "Character":
						break;
					case "Day":
						if (c < 1) {
							c = 1
						} else {
							if (c > 31) {
								c = 31
							}
						}
						break;
					case "FORMAT_hh":
						if (c < 1) {
							c = 1
						} else {
							if (c > 12) {
								c = 12
							}
						}
						break;
					case "FORMAT_HH":
						if (c < 0) {
							c = 0
						} else {
							if (c > 23) {
								c = 23
							}
						}
						break;
					case "Millisecond":
						if (c < 0) {
							c = 0
						} else {
							if (c > 99) {
								c = 99
							}
						}
						break;
					case "Minute":
						if (c < 0) {
							c = 0
						} else {
							if (c > 59) {
								c = 59
							}
						}
						break;
					case "Month":
						if (c < 1) {
							c = 1
						} else {
							if (c > 12) {
								c = 12
							}
						}
						break;
					case "ReadOnly":
						break;
					case "Second":
						if (c < 0) {
							c = 0
						} else {
							if (c > 59) {
								c = 59
							}
						}
						break;
					case "Year":
						if (c < this.minDate.year) {
							c = this.minDate.year
						} else {
							if (c > this.maxDate.year) {
								c = this.maxDate.year
							}
						}
						break
					}
					if (d.value != c) {
						b = true
					}
					if (!b) {
						this.isEditing = false;
						this._validateValue();
						this._updateText();
						this.isEditing = true;
						this._doRightKey();
						return true
					}
					return false
				}
			}
		},
		_handleKeyPress: function (k, o) {
			var n = this._selection();
			var b = this;
			var d = k.ctrlKey || k.metaKey;
			if ((d && o == 97) || (d && o == 65)) {
				return true
			}
			if (o == 8) {
				if (n.start > 0) {
					b._setSelectionStart(n.start)
				}
				return false
			}
			if (o == 46) {
				if (n.start < this.items.length) {
					b._setSelectionStart(n.start)
				}
				return false
			}
			if (o === 27) {
				if (this._firstFocusDate) {
					this.setDate(this._firstFocusDate);
					this._setSelectionStart(0);
					this._selectGroup(-1)
				}
				return false
			}
			if (n.start >= 0) {
				this.changeType = "keyboard";
				var f = String.fromCharCode(o);
				var l = parseInt(f);
				if (f == "p" || f == "a" || f == "A" || f == "P") {
					if (this.activeEditor.item.type == "FORMAT_AMPM") {
						if (this.activeEditor.value == 0 && (f == "p" || f == "P")) {
							this.spinUp()
						} else {
							if (this.activeEditor.value == 1 && (f == "a" || f == "A")) {
								this.spinDown()
							}
						}
					}
				}
				if (!isNaN(l)) {
					if (this.container.css("display") == "block") {
						this.hideCalendar()
					}
					this.updateValue();
					this._updateText();
					var h = false;
					var j = this.editors.indexOf(this.activeEditor);
					var c = null;
					this.isEditing = true;
					if (j.type != "ReadOnly") {
						c = this.activeEditor
					}
					if (c != null && c.positions == 0) {
						this.editorText = ""
					}
					if (this.activeEditor == null) {
						this.activeEditor = this.editors[0]
					}
					if (this.activeEditor == null) {
						return false
					}
					this.activeEditor.insert(f);
					if (c != null && this.editorText.length >= c.maxEditPositions) {
						this.editorText = ""
					}
					this.editorText += f;
					var p = this._selectWithAdvancePattern();
					if (this.activeEditor.positions == this.activeEditor.maxEditPositions) {
						var g = this._getLastEditableEditorIndex();
						if (this.editors.indexOf(this.activeEditor) == g && p && this.enableAbsoluteSelection) {
							this.activeEditor.positions = this.activeEditor.maxEditPositions - 1
						} else {
							this.activeEditor.positions = 0
						}
					}
					h = true;
					this.updateValue();
					this._updateText();
					this._selectGroup(this.editors.indexOf(this.activeEditor));
					return false
				}
			}
			var m = this._isSpecialKey(o);
			return m
		},
		_getLastEditableEditorIndex: function () {
			var b = 0;
			var c = this;
			for (itemIndex = this.items.length - 1; itemIndex >= 0; itemIndex--) {
				if (this.items[itemIndex].type != "ReadOnly") {
					return itemIndex
				}
			}
			return -1
		},
		_handleKeyDown: function (h, o) {
			var g = this;
			this.timePopup = false;
			if (o == 84) {
				this.timePopup = true
			}
			if (h.keyCode == 115) {
				if (g.isOpened()) {
					g.hideCalendar("keyboard", "keyboard");
					return false
				} else {
					if (!g.isOpened()) {
						g.showCalendar("keyboard", "keyboard");
						return false
					}
				}
			}
			if (h.altKey) {
				if (h.keyCode == 38) {
					if (g.isOpened()) {
						if (g.showTimeButton && !g.showCalendarButton) {
							g.timePopup = true
						}
						g.hideCalendar("keyboard", "keyboard");
						return false
					}
				} else {
					if (h.keyCode == 40) {
						if (!g.isOpened()) {
							if (g.showTimeButton && !g.showCalendarButton) {
								g.timePopup = true
							}
							g.showCalendar("keyboard", "keyboard");
							return false
						}
					}
				}
			} else {
				if (h.ctrlKey) {
					this.timePopup = true;
					if (h.keyCode == 38) {
						if (g.isOpened()) {
							g.hideCalendar("keyboard", "keyboard");
							return false
						}
					} else {
						if (h.keyCode == 40) {
							if (!g.isOpened()) {
								g.showCalendar("keyboard", "keyboard");
								return false
							}
						}
					}
				}
			}
			if (g.isOpened()) {
				if (h.keyCode == 9) {
					g.hideCalendar("selected", "keyboard");
					return true
				}
				return
			}
			var m = g._selection();
			var b = h.ctrlKey || h.metaKey;
			if ((b && o == 99) || (b && o == 67)) {
				g._saveSelectedText(h);
				return true
			}
			if ((b && o == 122) || (b && o == 90)) {
				return false
			}
			if ((b && o == 118) || (b && o == 86) || (h.shiftKey && o == 45)) {
				var l = g.val();
				var j = this;
				var c = a('<textarea style="position: absolute; left: -1000px; top: -1000px;"/>');
				a("body").append(c);
				c.select();
				setTimeout(function () {
					var e = c.val();
					j.setDate(e);
					c.remove()
				}, 100);
				return true
			}
			if (o == 8 || o == 46) {
				if (!h.altKey && !b && o == 46) {
					g.isEditing = false;
					if (g.allowKeyboardDelete) {
						g.changeType = "keyboard";
						if (g.allowNullDate) {
							g.setDate(null)
						} else {
							if (g.selectionMode != "range") {
								g.setDate(g.getMinDate())
							} else {
								g.setRange(g.getMinDate(), g.getMinDate())
							}
						}
					}
				} else {
					if (g.activeEditor != null) {
						var f = g.editors.indexOf(g.activeEditor);
						if (g.activeEditor.positions >= 0) {
							var d = g._format(Number(g.activeEditor.value), "d" + g.activeEditor.maxEditPositions, g.culture);
							tmp = d;
							tmp = tmp.substring(0, g.activeEditor.positions) + "0" + tmp.substring(g.activeEditor.positions + 1);
							if (parseInt(tmp) < g.activeEditor.minValue) {
								tmp = g._format(Number(g.activeEditor.minValue), "d" + g.activeEditor.maxEditPositions, g.culture)
							}
							if (g.enableAbsoluteSelection) {
								g.activeEditor.value = tmp
							} else {
								g.activeEditor.value = g.activeEditor.minValue
							}
							g._validateValue();
							g._updateText();
							g.changeType = "keyboard";
							if (o == 8) {
								var n = this;
								if (g.enableAbsoluteSelection && g.activeEditor.positions > 0) {
									setTimeout(function () {
										n.activeEditor.positions = n.activeEditor.positions - 1;
										n._selectGroup(f)
									}, 10)
								} else {
									setTimeout(function () {
										n._doLeftKey()
									}, 10)
								}
							} else {
								g._selectGroup(f)
							}
						} else {
							g._doLeftKey()
						}
					}
				}
				return false
			}
			if (o == 38) {
				this.spinUp();
				g.changeType = "keyboard";
				return false
			} else {
				if (o == 40) {
					this.spinDown();
					g.changeType = "keyboard";
					return false
				}
			}
			if (o == 9) {
				if (g.value == null) {
					return true
				}
				if (h.shiftKey) {
					var p = this._doLeftKey()
				} else {
					var p = this._doRightKey()
				}
				if (!p) {
					return true
				} else {
					return false
				}
			}
			if (o == 37) {
				if (this._editor) {
					var p = this._doLeftKey();
					if (!p) {
						this.isEditing = false;
						this._validateValue()
					}
					return !p
				} else {
					var p = this._doLeftKey();
					return false
				}
			} else {
				if (o == 39 || o == 191) {
					if (this._editor) {
						var p = this._doRightKey();
						if (!p) {
							this.isEditing = false;
							this._validateValue()
						}
						return !p
					} else {
						var p = this._doRightKey();
						return false
					}
				}
			}
			var k = this._isSpecialKey(o);
			if (this.value == null && (o >= 48 && o <= 57 || o >= 96 && o <= 105)) {
				g.changeType = "keyboard";
				if (new Date() >= this.getMinDate() && new Date() <= this.getMaxDate()) {
					this.setDate(new Date())
				} else {
					this.setDate(this.getMaxDate())
				}
			}
			if (!a.jqx.browser.mozilla) {
				return true
			}
			if (a.jqx.browser.mozilla && a.jqx.browser.version > 24) {
				return true
			}
			return k
		},
		_isSpecialKey: function (b) {
			if (b != 8 && b != 9 && b != 13 && b != 35 && b != 36 && b != 37 && b != 39 && b != 27 && b != 46) {
				return false
			}
			return true
		},
		_selection: function () {
			if ("selectionStart" in this.dateTimeInput[0]) {
				var f = this.dateTimeInput[0];
				var g = f.selectionEnd - f.selectionStart;
				return {
					start: f.selectionStart,
					end: f.selectionEnd,
					length: g,
					text: f.value
				}
			} else {
				var c = document.selection.createRange();
				if (c == null) {
					return {
						start: 0,
						end: f.value.length,
						length: 0
					}
				}
				var b = this.dateTimeInput[0].createTextRange();
				var d = b.duplicate();
				b.moveToBookmark(c.getBookmark());
				d.setEndPoint("EndToStart", b);
				var g = c.text.length;
				return {
					start: d.text.length,
					end: d.text.length + c.text.length,
					length: g,
					text: c.text
				}
			}
		},
		_selectGroup: function (k, m) {
			if (this.host.css("display") == "none") {
				return
			}
			if (this.readonly) {
				return
			}
			if (!m) {
				var m = this._selection()
			}
			var f = "";
			var b = "";
			var c = null;
			for (var d = 0; d < this.items.length; d++) {
				b = this.items[d].dateParser(this.value, this);
				if (this.isEditing && this.items[d].type != "ReadOnly") {
					var j = this.items[d].type == "Day" && this.items[d].format.length > 2;
					if (!j && this.items[d].type != "FORMAT_AMPM") {
						b = this.items[d].dateParserInEditMode(new Number(this.editors[d].value), "d" + this.editors[d].maxEditPositions, this);
						while (b.length < this.editors[d].maxEditPositions) {
							b = "0" + b
						}
					}
				}
				f += b;
				if (this.items[d].type == "ReadOnly") {
					continue
				}
				if (this.items[d].type == "Day" && this.items[d].format.length > 2) {
					continue
				}
				if (k != undefined && k != -1) {
					if (d >= k) {
						var l = f.length - b.length;
						var e = b.length;
						if (this.enableAbsoluteSelection) {
							if (!isNaN(parseInt(b)) && this.isEditing && k != -1) {
								e = 1;
								l += this.editors[d].positions
							}
						}
						if (l == this.dateTimeInput.val().length) {
							l--
						}
						this._setSelection(l, l + e);
						c = this.editors[d];
						this.activeEditor = c;
						break
					}
				} else {
					if (f.length >= m.start) {
						c = this.editors[d];
						this.activeEditor = c;
						var l = f.length - b.length;
						var e = 1;
						if (this.enableAbsoluteSelection) {
							if (!isNaN(parseInt(b)) && this.isEditing && k != -1) {
								e = 1;
								l += this.editors[d].positions
							}
						} else {
							e = b.length
						}
						this._setSelection(l, l + e);
						break
					}
				}
			}
			if (d < this.items.length && k == -1) {
				if (this.items[d].type != "ReadOnly") {
					this.activeEditor.positions = 0
				}
			}
			var h = this._selection();
			if (h.length == 0) {
				if (h.start > 0) {
					var g = this._getLastEditableEditorIndex();
					if (g >= 0) {}
				}
			}
		},
		_getLastEditableEditorIndex: function () {
			var b = -1;
			for (i = 0; i < this.editors.length; i++) {
				if (this.items[i].type == "ReadOnly") {
					continue
				}
				if (this.items[i].type == "Day" && this.items[i].format.length > 2) {
					continue
				}
				b = i
			}
			return b
		},
		_setSelection: function (e, b) {
			try {
				if ("selectionStart" in this.dateTimeInput[0]) {
					this.dateTimeInput[0].setSelectionRange(e, b)
				} else {
					var c = this.dateTimeInput[0].createTextRange();
					c.collapse(true);
					c.moveEnd("character", b);
					c.moveStart("character", e);
					c.select()
				}
			} catch (d) {}
		},
		_setSelectionStart: function (b) {
			this._setSelection(b, b)
		},
		destroy: function () {
			a.jqx.utilities.resize(this.host, null, true);
			this.host.removeClass("jqx-rc-all");
			if (this.timePopupElement) {
				this.timePopupElement.remove()
			}
			this._calendar.destroy();
			this.container.remove();
			this._removeHandlers();
			this.dateTimeInput.remove();
			this.host.remove()
		},
		refreshValue: function () {
			this._refreshValue()
		},
		refresh: function (b) {
			if (b != true) {
				this._setSize();
				this._arrange()
			}
		},
		resize: function (c, b) {
			this.width = c;
			this.height = b;
			this.refresh()
		},
		_setOption: function (b, c, d) {
			if (b === "value") {
				if (this.selectionMode != "range") {
					this._oldDT = null
				} else {
					this._oldDT = null
				}
				this.value = c;
				this._refreshValue();
				this._raiseEvent(9, {
					type: null
				})
			}
			if (b == "maxDate") {
				this._calendar.maxDate = c;
				this._raiseEvent(9, {
					type: null
				})
			}
			if (b == "minDate") {
				this._calendar.minDate = c;
				this._raiseEvent(9, {
					type: null
				})
			}
			if (b == "showCalendarButton") {
				if (c) {
					this.calendarButton.css("display", "block")
				} else {
					this.calendarButton.css("display", "none")
				}
			}
			if (b == "disabled") {
				this.dateTimeInput.attr("disabled", c)
			}
			if (b == "readonly") {
				this.readonly = c;
				this.dateTimeInput.css("readonly", c)
			}
			if (b == "textAlign") {
				this.dateTimeInput.css("text-align", c);
				this.textAlign = c
			}
			if (b == "width") {
				this.width = c;
				this.width = parseInt(this.width);
				this._arrange()
			} else {
				if (b == "height") {
					this.height = c;
					this.height = parseInt(this.height);
					this._arrange()
				}
			}
		},
		_updateHint: function () {
			var b = this;
			if (!b.hint) {
				return
			}
			if (b.isMaterialized()) {
				setTimeout(function () {
					if (b.dateTimeInput[0].value.length === 0) {
						b.element.removeAttribute("hint");
						b.label[0].innerHTML = b.placeHolder
					} else {
						if (b.hint) {
							b.element.setAttribute("hint", true)
						}
					}
				})
			}
		},
		_refreshValue: function () {
			this._updateEditorsValue();
			this.updateValue();
			this._validateValue();
			this._updateText();
			this._updateHint()
		}
	})
})(jqxBaseFramework);
(function (a) {
	a.jqx._jqxDateTimeInput.DateTimeFormatItem = {};
	a.extend(a.jqx._jqxDateTimeInput.DateTimeFormatItem, {
		_create: function (d, c, b) {
			this.format = d;
			this.type = c;
			this.culture = b;
			return this
		},
		_itemValue: function () {
			switch (this.format.length) {
			case 1:
				return 9;
			case 2:
				return 99;
			case 3:
			default:
				return 999
			}
		},
		_maximumValue: function () {
			switch (this.format.length) {
			case 1:
				return 9;
			case 2:
				return 99;
			case 3:
			default:
				return 999
			}
		},
		dateParser: function (b, c) {
			if (b == null) {
				return ""
			}
			var d = c._format(b.dateTime, this.format.length == 1 ? "%" + this.format : this.format, this.culture);
			return d
		},
		dateParserInEditMode: function (e, d, b) {
			if (e == null) {
				return ""
			}
			var c = b._format(e.toString(), d.length == 1 ? "%" + d : d, this.culture);
			return c
		},
		getDateTimeEditorByItemType: function (n, e) {
			switch (this.type) {
			case "FORMAT_AMPM":
				var f = a.jqx._jqxDateTimeInput.AmPmEditor._createAmPmEditor(this.format, n.hour / 12, e.localization.calendar.AM[0], e.localization.calendar.PM[0], this, e);
				var d = a.extend({}, f);
				return d;
			case "Character":
				return null;
			case "Day":
				var k = n.year;
				var s = n.month;
				var r;
				if (this.format.length == 3) {
					r = e.localization.calendar.days.namesAbbr
				} else {
					if (this.format.length > 3) {
						r = e.localization.calendar.days.names
					} else {
						r = null
					}
				}
				var t = n.day;
				if (r != null) {
					t = n.dayOfWeek + 1
				}
				var g = a.jqx._jqxDateTimeInput.DateEditor._createDayEditor(n, n.day, 1, n._daysInMonth(k, s), this.format.length == 1 ? 1 : 2, 2, r, this, e);
				var d = a.extend({}, g);
				return d;
			case "FORMAT_hh":
				var c = n.hour % 12;
				if (c == 0) {
					c = 12
				}
				var q = a.jqx._jqxDateTimeInput.NumberEditor._createNumberEditor(c, 1, 12, this.format.length == 1 ? 1 : 2, 2, this, e);
				var d = a.extend({}, q);
				return d;
			case "FORMAT_HH":
				var h = a.jqx._jqxDateTimeInput.NumberEditor._createNumberEditor(n.hour, 0, 23, this.format.length == 1 ? 1 : 2, 2, this, e);
				var d = a.extend({}, h);
				return d;
			case "Millisecond":
				var l = a.jqx._jqxDateTimeInput.NumberEditor._createNumberEditor(n.millisecond / this._itemValue(), 0, this._maximumValue(), this.format.length, this.format.length, this, e);
				var d = a.extend({}, l);
				return d;
			case "Minute":
				var o = a.jqx._jqxDateTimeInput.NumberEditor._createNumberEditor(n.minute, 0, 59, this.format.length == 1 ? 1 : 2, 2, this, e);
				var d = a.extend({}, o);
				return d;
			case "Month":
				var j;
				if (this.format.length == 3) {
					j = e.localization.calendar.months.namesAbbr
				} else {
					if (this.format.length > 3) {
						j = e.localization.calendar.months.names
					} else {
						j = null
					}
				}
				var m = a.jqx._jqxDateTimeInput.DateEditor._createMonthEditor(n.month, this.format.length == 2 ? 2 : 1, j, this, e);
				var d = a.extend({}, m);
				return d;
			case "ReadOnly":
				return a.jqx._jqxDateTimeInput.DisabledEditor._create(this.format.length, n.day, this, e);
			case "Second":
				var b = a.jqx._jqxDateTimeInput.NumberEditor._createNumberEditor(n.second, 0, 59, this.format.length == 1 ? 1 : 2, 2, this, e);
				var d = a.extend({}, b);
				return d;
			case "Year":
				var p = a.jqx._jqxDateTimeInput.DateEditor._createYearEditor(n.year, 4, this, e);
				var d = a.extend({}, p);
				return d
			}
			return null
		}
	})
})(jqxBaseFramework);
(function (a) {
	a.jqx._jqxDateTimeInput.DateEditor = a.extend(a.jqx._jqxDateTimeInput.DateEditor, {
			formatValueLength: 0,
			handleYears: false,
			handleDays: false,
			handleMonths: false,
			positions: 0,
			value: 0,
			minEditPositions: 0,
			maxEditPositions: 0,
			minValue: 0,
			maxValue: 0,
			item: null,
			dateTimeFormatInfo: null,
			days: null,
			dateTimeMonths: null,
			lastDayInput: null,
			minPositions: function () {
				if (this.handleYears) {
					if (this.formatValueLength == 4) {
						if (this.positions <= 1) {
							return 1
						} else {
							if (this.positions >= 4) {
								return 4
							}
						}
						return this.positions
					} else {
						return this.minEditPositions
					}
				}
				return this.minEditPositions
			},
			initializeFields: function (e, f, b, d, c) {
				this.minValue = e;
				this.maxValue = f;
				this.minEditPositions = b;
				this.maxEditPositions = d;
				this.updateActiveEditor(e);
				this.item = c
			},
			_createYearEditor: function (e, d, c, b) {
				a.jqx._jqxDateTimeInput.DateEditor = a.extend(true, {}, this);
				this.initializeFields(d <= 4 ? 0 : 0, d < 4 ? 99 : 9999, (d == 2) ? 2 : 1, d > 3 ? 4 : 2, c);
				this.initializeYearEditor(e, d, c.culture);
				this.handleYears = true;
				this.that = b;
				return this
			},
			initializeYearEditor: function (d, c, e) {
				this.formatValueLength = c;
				this.dateTimeFormatInfo = e;
				var b = d;
				b = Math.min(b, 9999);
				b = Math.max(b, 1);
				b = this.formatValueLength < 4 ? b % 100 : b;
				this.updateActiveEditor(b);
				this.value = b
			},
			updateActiveEditor: function (b) {
				this.value = b;
				this.positions = 0
			},
			_createDayEditor: function (b, j, h, e, c, f, g, k, d) {
				a.jqx._jqxDateTimeInput.DateEditor = a.extend(true, {}, this);
				this.initializeFields(h, e, 1, f, k);
				this.currentValue = b;
				this.value = j;
				this.days = g;
				this.handleDays = true;
				this.that = d;
				return this
			},
			getDayOfWeek: function (b) {
				if (typeof this.currentValue == a.jqx._jqxDateTimeInput.DateTime) {
					this.currentValue.dayOfWeek()
				}
				return b
			},
			defaultTextValue: function () {
				var d = this.value;
				var e = this.minEditPositions;
				var b = e;
				var c = this.that._format(this.value, "d" + b, "");
				return c
			},
			textValue: function () {
				if (this.handleDays) {
					if (this.days == null) {
						return this.defaultTextValue()
					} else {
						var b = (this.value % 7) + 1;
						b = this.getDayOfWeek(b);
						return this.days[b]
					}
				} else {
					if (this.handleMonths) {
						if (this.dateTimeMonths == null || this.value < 1 || this.value > 12) {
							return this.defaultTextValue()
						} else {
							return this.dateTimeMonths[this.value - 1]
						}
					}
				}
				return this.defaultTextValue()
			},
			defaultInsertString: function (c) {
				if (c == null) {
					return this.deleteValue()
				}
				if (c.length == 0) {
					return this.deleteValue()
				}
				var g = c.substring(0, 1);
				if (isNaN(g)) {
					return
				}
				var e = true;
				var d;
				var b = 1;
				var f = this.that._format(Number(this.value), "d" + this.maxEditPositions, this.culture);
				d = f;
				if (this.positions >= this.maxEditPositions) {
					this.positions = 0
				}
				d = d.substring(0, this.positions) + g + d.substring(this.positions + 1);
				d = this.setValueByString(d, b);
				return true
			},
			setValueByString: function (d, b) {
				d = this.fixValueString(d);
				var c = new Number(d);
				this.value = c;
				this.positions += b;
				return d
			},
			fixValueString: function (b) {
				if (b.length > this.maxEditPositions) {
					b = b.substring(b.length - this.maxEditPositions)
				}
				return b
			},
			initializeValueString: function (c) {
				var b;
				b = "";
				if (this.hasDigits()) {
					b = c
				}
				return b
			},
			deleteValue: function () {
				if (this.value == this.minValue && this.hasDigits() == false) {
					return false
				}
				this.updateActiveEditor(this.minValue);
				return true
			},
			hasDigits: function () {
				return this.positions > 0
			},
			insert: function (b) {
				if (this.handleDays) {
					if (this.days != null) {
						var c = false;
						c = this.insertLongString(b, c);
						if (c) {
							return c
						}
						c = this.insertShortString(b, c);
						if (c) {
							return c
						}
					}
					if (this.value == 1 && this.lastDayInput != null && this.lastDayInput.toString().length > 0 && this.lastDayInput.toString() == "0") {
						this.value = 0
					}
					this.lastDayInput = b;
					return this.defaultInsertString(b)
				} else {
					if (this.handleMonths) {
						if (this.dateTimeMonths != null) {
							var c = false;
							c = this.insertLongString2(b, c);
							if (c) {
								return c
							}
							c = this.insertShortString2(b, c);
							if (c) {
								return c
							}
						}
					}
				}
				return this.defaultInsertString(b)
			},
			insertShortString: function (d, e) {
				if (d.length == 1) {
					for (i = 0; i < 6; ++i) {
						var c = (this.value + i) % 7 + 1;
						var b = this.days[c - 1];
						if (b.substring(0, 1) == d) {
							this.updateActiveEditor(c);
							e = true;
							return e
						}
					}
				}
				return e
			},
			insertLongString: function (c, d) {
				if (c.length > 0) {
					for (i = 0; i < 6; ++i) {
						var b = (this.value + i) % 7 + 1;
						if (this.days[b - 1] == c) {
							this.updateActiveEditor(b);
							d = true;
							return d
						}
					}
				}
				return d
			},
			_createMonthEditor: function (d, c, b, f, e) {
				a.jqx._jqxDateTimeInput.DateEditor = a.extend(true, {}, this);
				this.initializeFields(1, 12, c, 2, f);
				this.dateTimeMonths = b;
				this.value = d;
				if (this.dateTimeMonths != null && this.dateTimeMonths[12] != null && this.dateTimeMonths[12].length > 0) {
					this.dateTimeMonths = null
				}
				this.handleMonths = true;
				this.that = e;
				return this
			},
			insertLongString2: function (b, c) {
				if (b.length > 0) {
					for (i = 0; i < 11; ++i) {
						month = (this.value + i) % 12 + 1;
						if (this.dateTimeMonths[month - 1] == b) {
							this.updateActiveEditor(month);
							c = true;
							return c
						}
					}
				}
				return c
			},
			insertShortString2: function (c, d) {
				if (c.length == 1) {
					for (i = 0; i < 11; ++i) {
						var e = (this.value + i) % 12 + 1;
						var b = this.dateTimeMonths[e - 1];
						if (b.substring(0, 1) == c) {
							this.updateActiveEditor(e);
							d = true;
							return d
						}
					}
				}
				return d
			},
			correctMaximumValue: function (b) {
				if (b > this.maxValue) {
					b = this.minValue
				}
				return b
			},
			correctMinimumValue: function (b) {
				if (b < this.minValue) {
					b = this.maxValue
				}
				return b
			},
			increaseValue: function (e) {
				var c = this.that._format(Number(this.value), "d" + this.maxEditPositions, this.culture);
				var f = c.toString()[this.positions];
				f = parseInt(f) + 1;
				if (f > 9) {
					f = 0
				}
				if (!e) {
					var b = this.value + 1;
					b = this.correctMaximumValue(b);
					this.updateActiveEditor(b);
					return true
				}
				var d = c.substring(0, this.positions) + f + c.substring(this.positions + 1);
				if (d != this.value || this.hasDigits()) {
					this.updateActiveEditor(d);
					return true
				} else {
					return false
				}
			},
			decreaseValue: function (e) {
				var c = this.that._format(Number(this.value), "d" + this.maxEditPositions, this.culture);
				var f = c.toString()[this.positions];
				f = parseInt(f) - 1;
				if (f < 0) {
					f = 9
				}
				if (!e) {
					var b = this.value - 1;
					b = this.correctMinimumValue(b);
					this.updateActiveEditor(b);
					return true
				}
				var d = c.substring(0, this.positions) + f + c.substring(this.positions + 1);
				if (d != this.value || this.hasDigits()) {
					this.updateActiveEditor(d);
					return true
				} else {
					return false
				}
			},
			getDateTimeItem: function () {
				return this.item
			}
		})
})(jqxBaseFramework);
(function (a) {
	a.jqx._jqxDateTimeInput.NumberEditor = {};
	a.extend(a.jqx._jqxDateTimeInput.NumberEditor, {
		formatValueLength: 0,
		positions: 0,
		value: 0,
		minEditPositions: 0,
		maxEditPositions: 0,
		minValue: 0,
		maxValue: 0,
		item: null,
		minPositions: function () {
			if (this.handleYears) {
				if (this.formatValueLength == 4) {
					if (this.positions <= 1) {
						return 1
					} else {
						if (this.positions >= 4) {
							return 4
						}
					}
					return this.positions
				} else {
					return this.minEditPositions
				}
			}
			return this.minEditPositions
		},
		_createNumberEditor: function (g, f, h, b, e, d, c) {
			a.jqx._jqxDateTimeInput.NumberEditor = a.extend(true, {}, this);
			this.initializeFields(f, h, b, e, d);
			this.that = c;
			return this
		},
		initializeFields: function (e, f, b, d, c) {
			this.minValue = e;
			this.maxValue = f;
			this.minEditPositions = b;
			this.maxEditPositions = d;
			this.updateActiveEditor(e);
			this.item = c
		},
		updateActiveEditor: function (b) {
			this.value = b;
			this.positions = 0
		},
		getDayOfWeek: function (b) {
			if (typeof this.currentValue == a.jqx._jqxDateTimeInput.DateTime) {
				this.currentValue.dayOfWeek()
			}
			return b
		},
		textValue: function () {
			var d = this.value;
			var e = this.minEditPositions;
			var b = e;
			var c = this.that._format(this.value, "d" + b, "");
			return c
		},
		insert: function (c) {
			if (c == null) {
				return this.deleteValue()
			}
			if (c.length == 0) {
				return this.deleteValue()
			}
			var g = c.substring(0, 1);
			if (isNaN(g)) {
				return
			}
			var e = true;
			var d;
			var b = 1;
			var f = this.that._format(Number(this.value), "d" + this.maxEditPositions, this.culture);
			d = f;
			if (this.positions >= this.maxEditPositions) {
				this.positions = 0
			}
			d = d.substring(0, this.positions) + g + d.substring(this.positions + 1);
			d = this.setValueByString(d, b);
			return true
		},
		setValueByString: function (d, b) {
			d = this.fixValueString(d);
			var c = new Number(d);
			this.value = c;
			this.positions += b;
			return d
		},
		fixValueString: function (b) {
			if (b.length > this.maxEditPositions) {
				b = b.substring(b.length - this.maxEditPositions)
			}
			return b
		},
		initializeValueString: function (c) {
			var b;
			b = "";
			if (this.hasDigits()) {
				b = c
			}
			return b
		},
		deleteValue: function () {
			if (this.value == this.minValue && this.hasDigits() == false) {
				return false
			}
			this.updateActiveEditor(this.minValue);
			return true
		},
		hasDigits: function () {
			return this.positions > 0
		},
		correctMaximumValue: function (b) {
			if (b > this.maxValue) {
				b = this.minValue
			}
			return b
		},
		correctMinimumValue: function (b) {
			if (b < this.minValue) {
				b = this.maxValue
			}
			return b
		},
		increaseValue: function (e) {
			var c = this.that._format(Number(this.value), "d" + this.maxEditPositions, this.culture);
			var f = c.toString()[this.positions];
			f = parseInt(f) + 1;
			if (f > 9) {
				f = 0
			}
			if (!e) {
				var b = this.value + 1;
				b = this.correctMaximumValue(b);
				this.updateActiveEditor(b);
				return true
			}
			var d = c.substring(0, this.positions) + f + c.substring(this.positions + 1);
			if (d != this.value || this.hasDigits()) {
				this.updateActiveEditor(d);
				return true
			} else {
				return false
			}
		},
		decreaseValue: function (e) {
			var c = this.that._format(Number(this.value), "d" + this.maxEditPositions, this.culture);
			var f = c.toString()[this.positions];
			f = parseInt(f) - 1;
			if (f < 0) {
				f = 9
			}
			if (!e) {
				var b = this.value - 1;
				b = this.correctMinimumValue(b);
				this.updateActiveEditor(b);
				return true
			}
			var d = c.substring(0, this.positions) + f + c.substring(this.positions + 1);
			if (d != this.value || this.hasDigits()) {
				this.updateActiveEditor(d);
				return true
			} else {
				return false
			}
		},
		getDateTimeItem: function () {
			return this.item
		}
	})
})(jqxBaseFramework);
(function (a) {
	a.jqx._jqxDateTimeInput.DisabledEditor = {};
	a.extend(a.jqx._jqxDateTimeInput.DisabledEditor, {
		_create: function (g, c, f, b, e, d) {
			this.format = g;
			this.value = -1;
			this.item = e;
			this.that = d;
			return this
		},
		textValue: function () {
			return ""
		},
		insert: function (b) {
			return false
		},
		deleteValue: function () {
			return false
		},
		increaseValue: function () {
			return false
		},
		decreaseValue: function () {
			return false
		},
		getDateTimeItem: function () {
			return this.item
		}
	})
})(jqxBaseFramework);
(function (a) {
	a.jqx._jqxDateTimeInput.AmPmEditor = {};
	a.extend(a.jqx._jqxDateTimeInput.AmPmEditor, {
		_createAmPmEditor: function (g, c, f, b, e, d) {
			this.format = g;
			this.value = c;
			this.minValue = 0;
			this.amString = f;
			this.pmString = b;
			this.item = e;
			this.that = d;
			if (f == b) {
				this.amString = "<" + f;
				this.pmString = ">" + b
			}
			return this
		},
		textValue: function () {
			var b = this.amString;
			if (this.value != 0) {
				b = this.pmString
			}
			if (this.format.length == 1 && b.length > 1) {
				b = b.substring(0, 1)
			}
			return b
		},
		insert: function (f) {
			var d = f.toString();
			if (d.Length == 0) {
				return this.deleteValue()
			}
			var c = false;
			if (this.amString.Length > 0 && this.pmString.Length > 0) {
				var g = amString[0];
				var b = d[0];
				var e = pmString[0];
				if (g.toString() == b.toString()) {
					this.value = 0;
					c = true
				} else {
					if (e.toString() == b.toString()) {
						this.value = 1;
						c = true
					}
				}
			} else {
				if (this.pmString.Length > 0) {
					this.value = 1;
					c = true
				} else {
					if (this.amString.Length > 0) {
						this.value = 0;
						c = true
					}
				}
			}
			return c
		},
		deleteValue: function () {
			var b = true;
			if (this.amString.Length == 0 && this.pmString.Length != 0) {
				if (this.value == 0) {
					return false
				}
				this.value = 0
			} else {
				if (this.value == 1) {
					return false
				}
				this.value = 1
			}
			return b
		},
		increaseValue: function () {
			this.value = 1 - this.value;
			return true
		},
		decreaseValue: function () {
			this.increaseValue();
			return true
		},
		getDateTimeItem: function () {
			return this.item
		}
	})
})(jqxBaseFramework);
(function (a) {
	a.jqx._jqxDateTimeInput.getDateTime = function (c) {
		var b = {
			dateTime: new Date(c),
			daysPer4Years: 1461,
			daysPerYear: 365,
			daysToMonth365: {
				0: 0,
				1: 31,
				2: 59,
				3: 90,
				4: 120,
				5: 151,
				6: 181,
				7: 212,
				8: 243,
				9: 273,
				10: 304,
				11: 334,
				12: 365
			},
			daysToMonth366: {
				0: 0,
				1: 31,
				2: 60,
				3: 91,
				4: 121,
				5: 152,
				6: 182,
				7: 213,
				8: 244,
				9: 274,
				10: 305,
				11: 335,
				12: 366
			},
			maxValue: 3155378976000000000,
			millisPerDay: 86400000,
			millisPerHour: 3600000,
			millisPerMinute: 60000,
			millisPerSecond: 1000,
			minTicks: 0,
			minValue: 0,
			ticksPerDay: 864000000000,
			ticksPerHour: 36000000000,
			ticksPerMillisecond: 10000,
			ticksPerMinute: 600000000,
			ticksPerSecond: 10000000,
			hour: c.getHours(),
			minute: c.getMinutes(),
			day: c.getDate(),
			second: c.getSeconds(),
			month: 1 + c.getMonth(),
			year: c.getFullYear(),
			millisecond: c.getMilliseconds(),
			dayOfWeek: c.getDay(),
			isWeekend: function (d) {
				if (d == undefined || d == null) {
					d = this.dateTime
				}
				var e = d.getDay() % 6 == 0;
				return e
			},
			dayOfYear: function (e) {
				if (e == undefined || e == null) {
					e = this.dateTime
				}
				var d = new Date(e.getFullYear(), 0, 1);
				return Math.ceil((e - d) / 86400000)
			},
			_setDay: function (d) {
				if (d == undefined || d == null) {
					d = 0
				}
				this.dateTime.setDate(d);
				this.day = this.dateTime.getDate()
			},
			_setMonth: function (d) {
				if (d == undefined || d == null) {
					d = 0
				}
				this.dateTime.setMonth(d - 1);
				this.month = 1 + this.dateTime.getMonth()
			},
			_setYear: function (d) {
				if (d == undefined || d == null) {
					d = 0
				}
				this.dateTime.setFullYear(d);
				this.year = this.dateTime.getFullYear()
			},
			_setHours: function (d) {
				if (d == undefined || d == null) {
					d = 0
				}
				this.dateTime.setHours(d);
				this.hour = this.dateTime.getHours()
			},
			_setMinutes: function (d) {
				if (d == undefined || d == null) {
					d = 0
				}
				this.dateTime.setMinutes(d);
				this.minute = this.dateTime.getMinutes()
			},
			_setSeconds: function (d) {
				if (d == undefined || d == null) {
					d = 0
				}
				this.dateTime.setSeconds(d);
				this.second = this.dateTime.getSeconds()
			},
			_setMilliseconds: function (d) {
				if (d == undefined || d == null) {
					d = 0
				}
				this.dateTime.setMilliseconds(d);
				this.millisecond = this.dateTime.getMilliseconds()
			},
			_addDays: function (f) {
				var d = this.dateTime;
				var e = d.getDate();
				d.setDate(d.getDate() + f);
				if (e === d.getDate()) {
					d.setHours(d.getHours() + d.getTimezoneOffset() / 60)
				}
				return d
			},
			_addWeeks: function (e) {
				var d = this.dateTime;
				d.setDate(d.getDate() + 7 * e);
				return d
			},
			_addMonths: function (e) {
				var d = this.dateTime;
				d.setMonth(d.getMonth() + e);
				return d
			},
			_addYears: function (e) {
				var d = this.dateTime;
				d.setFullYear(d.getFullYear() + e);
				return d
			},
			_addHours: function (e) {
				var d = this.dateTime;
				d.setHours(d.getHours() + e);
				return d
			},
			_addMinutes: function (e) {
				var d = this.dateTime;
				d.setMinutes(d.getMinutes() + e);
				return d
			},
			_addSeconds: function (e) {
				var d = this.dateTime;
				d.setSeconds(d.getSeconds() + e);
				return d
			},
			_addMilliseconds: function (e) {
				var d = this.dateTime;
				d.setMilliseconds(d.getMilliseconds() + e);
				return d
			},
			_isLeapYear: function (d) {
				if ((d < 1) || (d > 9999)) {
					throw "invalid year"
				}
				if ((d % 4) != 0) {
					return false
				}
				if ((d % 100) == 0) {
					return ((d % 400) == 0)
				}
				return true
			},
			_dateToTicks: function (f, h, e) {
				if (((f >= 1) && (f <= 9999)) && ((h >= 1) && (h <= 12))) {
					var d = this._isLeapYear(f) ? this.daysToMonth366 : this.daysToMonth365;
					if ((e >= 1) && (e <= (d[h] - d[h - 1]))) {
						var f = f - 1;
						var g = ((((((f * 365) + (f / 4)) - (f / 100)) + (f / 400)) + d[h - 1]) + e) - 1;
						return (g * 864000000000)
					}
				}
			},
			_daysInMonth: function (e, f) {
				if ((f < 1) || (f > 12)) {
					throw ("Invalid month.")
				}
				var d = this._isLeapYear(e) ? this.daysToMonth366 : this.daysToMonth365;
				return (d[f] - d[f - 1])
			},
			_timeToTicks: function (d, g, e) {
				var f = ((d * 3600) + (g * 60)) + e;
				return (f * 10000000)
			},
			_equalDate: function (d) {
				if (this.year == d.getFullYear() && this.day == d.getDate() && this.month == d.getMonth() + 1) {
					return true
				}
				return false
			}
		};
		return b
	}
})(jqxBaseFramework);
