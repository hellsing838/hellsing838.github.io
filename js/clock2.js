
var clockWidthHeight;
var clockDiv;
var secondHand;
var minuteHand;
var hourHand;
var imgsLoaded = 0;
var secondHandSpeed;
var smoothRotation = false;
var useSecondHand = true;
var imagesToLoad = 4;
var callInterval = 1000;
var retina = false;

AnalogClock = function(config){
	
	clockDiv = $("#" + config.divId);
	clockWidthHeight = config.clockWidthAndHeight;
	secondHandSpeed = config.secondHandSpeed;
	
	if(config.useSecondHand == "false"){
		useSecondHand = false;
		imagesToLoad = 3;
	}	
	
	if(config.smoothRotation == "true" && useSecondHand){
		smoothRotation = true;
		callInterval = 50;
	}

	clockDiv.css({"height":clockWidthHeight + "px", "width":clockWidthHeight + "px", "position":"relative"});
	
	retina = window.devicePixelRatio > 1;
	
	if(retina){
		
		clockDiv.append("<img id='bg' src=" + config.clockFaceHighResImg + " height="+clockWidthHeight+" width="+clockWidthHeight+" />");
		clockDiv.append("<img id='hourHand' src=" + config.hourHandHighResImg + " />");
		clockDiv.append("<img id='minuteHand' src=" + config.minuteHandHighResImg + " />");
		if(useSecondHand)clockDiv.append("<img id='secondHand' src=" + config.secondHandHighResImg + " />");
		
	}else{
	
		clockDiv.append("<img id='bg' src=" + config.clockFaceImg + " /><img id='hourHand' src=" + config.hourHandImg + " /><img id='minuteHand' src=" + config.minuteHandImg + " />");
		if(useSecondHand)clockDiv.append("<img id='secondHand' src=" + config.secondHandImg + " />");
	
	}
	
	if(useSecondHand)secondHand = $("#secondHand");
	minuteHand = $("#minuteHand");
	hourHand = $("#hourHand");
	
	$('#bg').load(function() {   checkIfImagesLoaded();  });
	if(useSecondHand)secondHand.load(function() {   checkIfImagesLoaded();  });
	minuteHand.load(function() {   checkIfImagesLoaded();  });
	hourHand.load(function() {   checkIfImagesLoaded();  });
	
	var handIds = $("#" + config.divId + " #bg, #hourHand, #minuteHand, #secondHand");
	handIds.css({"position":"absolute"});
};


function checkIfImagesLoaded(){
	
	imgsLoaded++;
	if(imgsLoaded == imagesToLoad){
		
		
		if(retina){
			if(useSecondHand)secondHand.css( { "height":secondHand.height(), "width":secondHand.width() } );
			minuteHand.css( { "height":minuteHand.height(), "width":minuteHand.width() } );
			hourHand.css( { "height":hourHand.height(), "width":hourHand.width() } );
		}
		
		if(useSecondHand)secondHand.css( { "left": (clockWidthHeight - secondHand.width())/2 + "px", "top": (clockWidthHeight - secondHand.height())/2 + "px" });//set x and y pos
		minuteHand.css( { "left": (clockWidthHeight - minuteHand.width())/2 + "px", "top": (clockWidthHeight - minuteHand.height())/2 + "px" });//set x and y pos
		hourHand.css( { "left": (clockWidthHeight - hourHand.width())/2 + "px", "top": (clockWidthHeight - hourHand.height())/2 + "px" });//set x and y pos		
		if(useSecondHand)setSecondStart();
		

		setInterval(function(){
		
			rotateHands();
			
		}, callInterval);
			
		rotateHands();
		
	}
	
}

function setSecondStart(){
	var now = new Date();
	var secondAngle = 6 * now.getSeconds();
	secondHand.rotate(secondAngle, 'abs');
}


function rotateHands(){
	
	var now = new Date();
		
	var secondAngle = 6 * now.getSeconds();
	if(useSecondHand){
		
		if(smoothRotation){
			var smoothSecondAngle = now.getMilliseconds()/1000 * 6 + secondAngle;
			secondHand.rotate(smoothSecondAngle, 'abs');
		}else{
			if(secondAngle == 0){
				secondHand.rotate(-6, 'abs');
			}
			secondHand.rotate({ animateTo:secondAngle, duration:secondHandSpeed}, 'abs');
		}
	}
	
	var minuteAngle = 6 * now.getMinutes() + secondAngle/60;
	minuteHand.rotate(minuteAngle, 'abs');
	
	var hourAngle = 360/12 * now.getHours();
	hourHand.rotate((hourAngle + minuteAngle/12)%360, 'abs');
		
}