/* YUI 3.9.0 (build 5827) Copyright 2013 Yahoo! Inc. http://yuilibrary.com/license/ */
YUI.add("series-line-stacked",function(e,t){e.StackedLineSeries=e.Base.create("stackedLineSeries",e.LineSeries,[e.StackingUtil],{setAreaData:function(){e.StackedLineSeries.superclass.setAreaData.apply(this),this._stackCoordinates.apply(this)}},{ATTRS:{type:{value:"stackedLine"}}})},"3.9.0",{requires:["series-stacked","series-line"]});