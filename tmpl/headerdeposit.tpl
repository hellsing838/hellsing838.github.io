
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
     <!-- Favicons  -->
	<link rel="apple-touch-icon" href="styles/images/favicon.png">
    <link rel="shortcut icon" type="image/x-icon" href="styles/images/favicon.png">
    <title>Digital Global Banks - Mineria inteligente de Bitcoin</title>
    <!-- Bootstrap Core CSS -->
    <link href="styles/extra/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="styles/extra/css/style.css" rel="stylesheet">
    <!-- You can change the theme colors from here -->
    <link href="styles/extra/css/colors/blue.css" id="theme" rel="stylesheet">

        <link href="styles/extra/assets/css/bootstrap-table.css" rel="stylesheet" type="text/css" /> 
        <link href="styles/extra/plugins/sweetalert/sweet-alert.css" rel="stylesheet" type="text/css">
        <link href="styles/extra/plugins/toastr/toastr.min.css" rel="stylesheet" type="text/css">
        <link href="styles/extra/assets/css/depos.css" rel="stylesheet" type="text/css" /> 
	    <link href="styles/extra/assets/css/media-queries.css" rel="stylesheet" type="text/css" /> 
        <link type="text/css" rel="stylesheet" href="styles/extra/lib/jajbox-0.01/jajbox.css">
        <link rel="stylesheet" type="text/css" href="styles/extra/lib/mCustomScrollbar/jquery.mCustomScrollbar.css">
        <link rel="stylesheet" type="text/css" href="styles/extra/styles/main.css">
	
	
	


	{literal}	
	<script type="text/javascript">

	var tday=new Array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sabado");
	var tmonth=new Array("Enero","Febrebrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
	
	function GetClock(){
	var tzOffset = 0;//set this to the number of hours offset from UTC
	
	var d=new Date();
	var dx=d.toGMTString();
	dx=dx.substr(0,dx.length -3);
	d.setTime(Date.parse(dx))
	d.setHours(d.getHours()+tzOffset);
	var nday=d.getDay(),nmonth=d.getMonth(),ndate=d.getDate();
	var nhour=d.getHours(),nmin=d.getMinutes(),ap;
	if(nhour==0){ap=" AM";nhour=12;}
	else if(nhour<12){ap=" AM";}
	else if(nhour==12){ap=" PM";}
	else if(nhour>12){ap=" PM";nhour-=12;}
	
	if(nmin<=9) nmin="0"+nmin;
	
	document.getElementById('clockbox').innerHTML=""+tday[nday]+", "+tmonth[nmonth]+" "+ndate+" "+nhour+":"+nmin+ap+"";
	}
	
	window.onload=function(){
	GetClock();
	setInterval(GetClock,1000);
	}
	</script>
	
	    <script type="text/javascript">
             
           function showtrans(id) {
               
        $.jajModal('modals/idtransaction.php?id='+id);  
               
        }
    </script>
	
{/literal}	
	

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>




<body class="fix-header card-no-border fix-sidebar">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="loader">
            <div class="loader__figure"></div>
            <p class="loader__label">Digital Global Banks</p>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
       <header class="topbar">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
             <div class="navbar-header" style="">
                    <a class="navbar-brand" href="?a=account">
                        <!-- Logo icon --><b>
                            
                            
                            
                            
                           
                        </b>
                        
                        <span style="display: inline;">
                         <!-- dark Logo text -->
                         
                         <!-- Light Logo text -->    
                         <img src="styles/css/img/logos/etherlablogo.png" style="max-width: 200px;" class="light-logo" alt="homepage"></span> </a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav mr-auto">
                        <!-- This is  -->
                        <li class="nav-item"> <a class="nav-link nav-toggler hidden-md-up waves-effect waves-dark" href="javascript:void(0)"><i class="ti-menu"></i></a> </li>
                        <li class="nav-item hidden-sm-down"></li>
                    </ul>

<ul class="navbar-nav my-lg-0">
    
    <li class="nav-item dropdown">
                            

<a class="nav-link dropdown-toggle waves-effect waves-dark " href="?a=account" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    
    <font style="
    color: #d6d6d6;
    font-size: 13px;
"> <i class="fa fa-bitcoin" style="
    margin-right: 5px;
"></i> Bitcoin = <span id="btcPriceApi"></font></a>

<a class="nav-link dropdown-toggle waves-effect waves-dark stats-bar" href="?a=account" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    
    <font style="
    color: #d6d6d6;
    font-size: 13px;
"> <i class="mdi mdi-arrow-up-bold-circle-outline" style="
    margin-right: 5px;
"></i> Soporte : admin@DigitalGlobalBanks.com | +52 (11) 5677 1234567 </font></a>
		
	<a class="nav-link dropdown-toggle waves-effect waves-dark stats-bar" href="?a=account" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    
    <font id="clockbox" style="
    color: #d6d6d6;
    font-size: 13px;
"> <i class="mdi mdi-arrow-up-bold-circle-outline" style="
    margin-right: 5px;
"></i> 0</font></a>


                            
                        </li>
</ul>
           
    
    
                    <!-- ============================================================== -->
                    <!-- User profile and search -->
                    <!-- ============================================================== -->
                  
                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <aside class="left-sidebar">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar">
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav">
                    <ul id="sidebarnav">
                        <li class="nav-devider"></li>
                        <li class="nav-small-cap">PERSONAL</li>
                        <li> <a class="has-arrow waves-effect waves-dark" href="?a=account" aria-expanded="false"><i class="mdi mdi-gauge"></i><span class="hide-menu">Escritorio</span></a>
                           
                        </li>


                        <li> <a class="has-arrow waves-effect waves-dark" href="?a=earnings" aria-expanded="false"><i class="mdi mdi-elevation-rise"></i><span class="hide-menu">Transacciones</span></a>
                           
                        </li>

                        <li> <a class="has-arrow waves-effect waves-dark" href="?a=referals" aria-expanded="false"><i class="mdi mdi-account-star"></i><span class="hide-menu">Referidos</span></a>
                           
                        </li>

                        <li> <a class="has-arrow waves-effect waves-dark" href="?a=edit_account" aria-expanded="false"><i class="mdi mdi-account-star"></i><span class="hide-menu">Ajustes</span></a>
                           
                        </li>

                        <li> <a class="has-arrow waves-effect waves-dark" href="?a=logout" aria-expanded="false"><i class="mdi mdi-power"></i><span class="hide-menu">Salir</span></a>
                           
                        </li>
                                                             
                        
                        
                        
                        
                        
                    </ul>
                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>
        <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
          
                <!-- ============================================================== -->
                <!-- End Bread crumb and right sidebar toggle -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                
				
				
				
<div class="row" style="
">
    <input type="hidden" name="user_btc_deposits" id="user_btc_deposits" value="14DbGaxb9cvP6cj3EShTSetvKHMfgDgZcM">
                    
<div class="col-12" style="">
                        
                        <center style="padding: 20px;margin-bottom: 60px;/* text-align: left; */border-bottom: 2px solid #ececec;"> <font style="font-size: 20px;color: #00017a;    line-height: 30px;">Realizar Pago</font></center>
             
           </div>
    </div>


             <div class="row">
				 
                 <div class="col-lg-3 col-md-12 col-sm-12">

    
    </div>