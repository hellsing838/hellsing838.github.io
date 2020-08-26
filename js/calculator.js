function calcthis(a)
{ 
var perc = document.getElementById("percent").value;

var planperc=new Array(0,0,0,0,0,0);
var depo = document.getElementById("deposit").value;

if (perc == "perc1") {planperc=Array(103.14 , 103.14 , 103.14 , 103.14 , 103.14 , 103.14); min=300; max=1000;};
if (perc == "perc2") {planperc=Array(103 , 104 , 106 , 108 , 112 , 120); min=10; max=100000;};
if (perc == "perc3") {planperc=Array(113 , 118 , 130 , 140 , 160 , 200); min=10; max=100000;};
if (perc == "perc4") {planperc=Array(135 , 148 , 170 , 200 , 300 , 500); min=10; max=100000;};
if (perc == "perc5") {planperc=Array(250 , 350 , 500 , 700 , 1000 , 1400); min=10; max=100000;};
if (perc == "perc6") {planperc=Array(106 , 106 , 106 , 106 , 106 , 106); min=2000; max=5000;};
if (perc == "perc7") {planperc=Array(1000 , 1000 , 1000 , 1000 , 1000 , 1000); min=2000; max=100000;};
if (perc == "perc8") {planperc=Array(2000 , 2000 , 2000 , 2000 , 2000 , 2000); min=1000; max=5000;};

if (depo < min)
  {
	document.getElementById("inpvar1").innerHTML = "n/a";
	document.getElementById("inpvar2").innerHTML = "n/a";						
	alert ("Minimal deposit is $"+min);	
  } 
else
if (depo > max)
  {
	document.getElementById("inpvar1").innerHTML = "n/a";
	document.getElementById("inpvar2").innerHTML = "n/a";						
	alert ("Maximal deposit is $"+max);	
  } 

else
  {
	  document.getElementById("inpvar1").innerHTML = planperc[0] + "%";
	  document.getElementById("inpvar2").innerHTML = planperc[0] * depo / 100 + "$";
	
	if ( depo >1000)
	  {
		document.getElementById("inpvar1").innerHTML = planperc[1] + "%";
		document.getElementById("inpvar2").innerHTML = planperc[1] * depo / 100 + "$";
		if ( depo > 2000)
		  {
			document.getElementById("inpvar1").innerHTML = planperc[2] + "%";
			document.getElementById("inpvar2").innerHTML = planperc[2] * depo / 100 + "$";
			if ( depo > 5000)
			  {
				document.getElementById("inpvar1").innerHTML = planperc[3] + "%";
				document.getElementById("inpvar2").innerHTML = planperc[3] * depo / 100 + "$";
				if ( depo > 10000)
				  {
					document.getElementById("inpvar1").innerHTML = planperc[4] + "%";
					document.getElementById("inpvar2").innerHTML = planperc[4] * depo / 100 + "$";
					if ( depo > 20000)
					  {
						document.getElementById("inpvar1").innerHTML = planperc[5] + "%";
						document.getElementById("inpvar2").innerHTML = planperc[5] * depo / 100 + "$";
					  }
				  }
			  }
		  }
	  }
  }

}