<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>REST</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="robots" content="all,follow">
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<!-- Google fonts - Popppins for copy-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,800">
<!-- orion icons-->
<link rel="stylesheet" href="css/orionicons.css">
<!-- theme stylesheet-->
<link rel="stylesheet" href="css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="css/custom.css">
<!-- Favicon-->
<link rel="shortcut icon" href="img/favicon.png?3">
<!-- Tweaks for older IEs-->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<body onload="load()">
	<!-- navbar-->
	<header class="header">
		<nav class="navbar navbar-expand-lg px-4 py-2 bg-white shadow">
			<a href="#" class="sidebar-toggler text-gray-500 mr-4 mr-lg-5 lead"><i
				class="fas fa-align-left"></i></a><a href="index.html"
				class="navbar-brand font-weight-bold text-uppercase text-base">HealthCare</a>
			<ul class="ml-auto d-flex align-items-center list-unstyled mb-0">


			</ul>
		</nav>
	</header>
	<div class="d-flex align-items-stretch">
		<div id="sidebar" class="sidebar py-3">
			<div
				class="text-gray-400 text-uppercase px-3 px-lg-4 py-4 font-weight-bold small headings-font-family">MAIN</div>
			<ul class="sidebar-menu list-unstyled">
				<li class="sidebar-list-item"><a href="index.jsp"
					class="sidebar-link text-muted active"><i
						class="o-home-1 mr-3 text-gray"></i><span>Appointment</span></a></li>
				<li class="sidebar-list-item"><a href="doctor.jsp"
					class="sidebar-link text-muted"><i
						class="o-home-1 mr-3 text-gray"></i><span>Doctor</span></a></li>
			</ul>
		</div>
		<div class="page-holder w-100 d-flex flex-wrap">
			<div class="container-fluid px-xl-5">
				<section class="py-5">
					<div class="row">

						<!-- Horizontal Form-->
						<div class="col-lg-12 mb-5">
							<div class="card">
								<div class="card-header">
									<h3 class="h6 text-uppercase mb-0">Form</h3>
								</div>
								<div class="card-body">
									<form class="form-horizontal" id="form">
										<div class="form-group row">
											<label class="col-md-3 form-control-label">Name</label>
											<div class="col-md-9">
												<input id="appointmentId" type="hidden" value="0"
													class="form-control form-control-success"> <input
													id="Name" type="text" onkeypress="validateName()"
													class="form-control form-control-success">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 form-control-label">Date</label>
											<div class="col-md-9">
												<input id="date" type="date"
													class="form-control form-control-warning">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 form-control-label">Time</label>
											<div class="col-md-9">
												<input id="time" type="time"
													class="form-control form-control-warning">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 form-control-label">Doctor
												Name</label>
											<div class="col-md-9">
												<input id="doctor_name" type="text" onkeypress="validateName()"
													class="form-control form-control-warning">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 form-control-label">Email</label>
											<div class="col-md-9">
												<input id="email" type="text"
													class="form-control form-control-warning">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 form-control-label">Contact Number</label>
											<div class="col-md-9">
												<input id="contactNum" type="number"
													class="form-control form-control-warning">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 form-control-label">Hospital_Name</label>
											<div class="col-md-9">
												<input id="Hospital_Name" type="text"
													class="form-control form-control-warning">
											</div>
										</div>
										<div class="form-group row">
											<div class="col-md-4 ml-auto">
												<button onclick="save()" type="button"
													class="btn btn-info btn-fill">Save</button>
											</div>
											<div class="col-md-4 ml-auto">
												<button type="reset" class="btn btn-info btn-fill">Reset</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>

						<div class="col-lg-12 mb-5">
							<div class="card">
								<div class="card-header">
									<h6 class="text-uppercase mb-0">Table</h6>
								</div>
								<div class="card-body">
									<table class="table" id="table">
										<thead>
											<tr>
												<th>#</th>
												<th>Appointment ID</th>
												<th>Name</th>
												<th>Date</th>
												<th>Time</th>
												<th>Doctor Name</th>
												<th>Email</th>
												<th>Contact Number</th>
												<th>Hospital</th>
											</tr>
										</thead>
									</table>
								</div>
							</div>
						</div>

						<div class="col-lg-12 mb-5">
							<div class="card">
								<div class="card-header">
									<div class="input-group mb-3">
										<input id="searchID" type="Number" class="form-control"
											placeholder="Search by ID" aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button onclick="search()" class="btn btn-outline-secondary"
												type="button">Search</button>
										</div>
									</div>
								</div>
								<div class="card-body">
									<table class="table" id="idTable">
										<thead>
											<tr>
												<th>#</th>
												<th>Appointment ID</th>
												<th>Name</th>
												<th>Date</th>
												<th>Time</th>
												<th>Doctor Name</th>
												<th>Email</th>
												<th>Contact Number</th>
												<th>Hospital</th>
											</tr>
										</thead>
									</table>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
			<footer
				class="footer bg-white shadow align-self-end py-3 px-xl-5 w-100">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-6 text-center text-md-left text-primary">
							<p class="mb-2 mb-md-0">SLIIT &copy; 2018-2020</p>
						</div>
						<div class="col-md-6 text-center text-md-right text-gray-400">
							<p class="mb-0">
								Design by <a href="#" class="external text-gray-400">SLIIT
									3RD YEAR</a>
							</p>
							<!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>

	<script src="ajax/ajax.js"></script>
	<script src="sweetalert/sw.js"></script>
	<script src="ajax/jquery.3.2.1.min.js"></script>
	<script type="text/javascript">
		function getRow() {
			var table = document.getElementById('table');
			for (var i = 0; i < table.rows.length; i++) {
				table.rows[i].onclick = function() {
					document.getElementById("appointmentId").value = this.cells[1].textContent;
					document.getElementById("Name").value = this.cells[2].textContent;
					document.getElementById("date").value = this.cells[3].textContent;
					document.getElementById("time").value = this.cells[4].textContent;
					document.getElementById("doctor_name").value = this.cells[5].textContent;
					document.getElementById("email").value = this.cells[6].textContent;
					document.getElementById("contactNum").value = this.cells[7].textContent;
					document.getElementById("Hospital_Name").value = this.cells[8].textContent;
				};
			}
		}

		function getRowSearch() {
			var table = document.getElementById('idTable');
			for (var i = 0; i < table.rows.length; i++) {
				table.rows[i].onclick = function() {
					document.getElementById("appointmentId").value = this.cells[1].textContent;
					document.getElementById("Name").value = this.cells[2].textContent;
					document.getElementById("date").value = this.cells[3].textContent;
					document.getElementById("time").value = this.cells[4].textContent;
					document.getElementById("doctor_name").value = this.cells[5].textContent;
					document.getElementById("email").value = this.cells[6].textContent;
					document.getElementById("contactNum").value = this.cells[7].textContent;
					document.getElementById("Hospital_Name").value = this.cells[8].textContent;
				};
			}
		}

		function getID() {
			var table = document.getElementById('table');
			for (var i = 0; i < table.rows.length; i++) {
				table.rows[i].onclick = function() {
					document.getElementById("appointmentId").value = this.cells[1].textContent;
				};
			}
		}

		function getIDserch() {
			var table = document.getElementById('idTable');
			for (var i = 0; i < table.rows.length; i++) {
				table.rows[i].onclick = function() {
					document.getElementById("appointmentId").value = this.cells[1].textContent;
				};
			}
		}

		function resetForm() {
			document.getElementById("appointmentId").value = "0";
			document.getElementById("Name").value = "";
			document.getElementById("date").value = "";
			document.getElementById("time").value = "";
			document.getElementById("doctor_name").value = "";
			document.getElementById("email").value = "";
			document.getElementById("contactNum").value = "";
			document.getElementById("Hospital_Name").value = "";
		}

		function save() {
			var appointmentId = $('#appointmentId').val();
			appointmentId = parseInt(appointmentId);
			if (appointmentId === 0) {
				if (ValidInput()) {
					$
							.ajax({
								url : 'http://localhost:8021/rest.api/webresources/AppointmentResources/Appointment',
								method : 'POST',
								headers : {
									"Content-Type" : "application/json"
								},
								data : getJSON(),
								success : function(data) {
									$("#idTable").find("tr:gt(0)").remove();
									$("#table").find("tr:gt(0)").remove();
									load();
									resetForm();
									alert(data);
								},
								error : function(jqXHR, exception) {
									alert("error");
								}
							});
				}
			} else {
				if (ValidInput()) {
					$
							.ajax({
								url : 'http://localhost:8021/rest.api/webresources/AppointmentResources/Appointment',
								method : 'PUT',
								headers : {
									"Content-Type" : "application/json"
								},
								data : getJSON(),
								success : function(data) {
									$("#idTable").find("tr:gt(0)").remove();
									$("#table").find("tr:gt(0)").remove();
									load();
									resetForm();
									alert(data);
								},
								error : function(jqXHR, exception) {
									alert("error");
								}
							});
				} else {
					alert("Fill form");
				}
			}
		}

		function delet() {
			getID();
			swal({
                title: "Are you sure?",
                text: "Do you realy want to Delete this?",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
                    .then((willDelete) => {
                        if (willDelete) {
                            $.ajax({
                                url: 'http://localhost:8021/rest.api/webresources/AppointmentResources/Appointment/' + $('#appointmentId').val(),
                                method: 'DELETE',
                                success: function (resultText) {
                                    $("#table").find("tr:gt(0)").remove();
                                    $("#idTable").find("tr:gt(0)").remove();
                                    
                                    load();
                                    swal("Deleted!", {
                                        icon: "success",
                                    });
                                },
                                error: function (jqXHR, exception) {
                                    swal("fail");
                                }
                            });
                        } else {
                            swal("Safe!");
                        }
                    });
		}

		function deletSearch() {
			getIDserch();
			swal({
                title: "Are you sure?",
                text: "Do you realy want to Delete this?",
                icon: "warning",
                buttons: true,
                dangerMode: true,
            })
                    .then((willDelete) => {
                        if (willDelete) {
                            $.ajax({
                                url: 'http://localhost:8021/rest.api/webresources/AppointmentResources/Appointment/' + $('#appointmentId').val(),
                                method: 'DELETE',
                                success: function (resultText) {
                                    $("#table").find("tr:gt(0)").remove();
                                    $("#idTable").find("tr:gt(0)").remove();
                                    
                                    load();
                                    swal("Deleted!", {
                                        icon: "success",
                                    });
                                },
                                error: function (jqXHR, exception) {
                                    swal("fail");
                                }
                            });
                        } else {
                            swal("Safe!");
                        }
                    });
		}

		function load() {
			$
					.ajax({
						url : 'http://localhost:8021/rest.api/webresources/AppointmentResources/Appointments',
						method : 'GET',
						headers : {
							Accept : "application/json",
							"Content-Type" : "application/json"
						},
						success : function(data, textStatus, errorThrown) {
							console.log(data);
							var items = [];
							$
									.each(
											data.appointment,
											function(key, val) {
												var index = key + 1;
												items.push("<tr>");
												items.push("<td>" + index
														+ "</td>");
												items.push("<td>"
														+ val.appointmentId
														+ "</td>");
												items.push("<td>" + val.name
														+ "</td>");
												items.push("<td>" + val.date
														+ "</td>");
												items.push("<td>" + val.time
														+ "</td>");
												items.push("<td>"
														+ val.doctor_name
														+ "</td>");
												items.push("<td>" + val.email
														+ "</td>");
												items.push("<td>"
														+ val.contactNum
														+ "</td>");
												items.push("<td>"
														+ val.hospital_Name
														+ "</td>");
												items
														.push("<td><button onclick='getRow()' type='button' class='btn btn-info btn-fill'>Edit</button></td>");
												items
														.push("<td><button onclick='delet()' type='button' class='btn btn-danger btn-fill'>Delete</button></td>");
												items.push("</tr>");
											});

							$("<tbody/>", {
								html : items.join("")
							}).appendTo("#table");
						},
						error : function(jqXHR, textStatus, errorThrown) {
							alert("Ajax request fail");
						},
						timeout : 120000,
					});
		}

		function getJSON() {
			return JSON.stringify({
				"appointmentId" : $('#appointmentId').val(),
				"name" : $('#Name').val(),
				"date" : $('#date').val(),
				"time" : $('#time').val(),
				"doctor_name" : $('#doctor_name').val(),
				"email" : $('#email').val(),
				"contactNum" : $('#contactNum').val(),
				"hospital_Name" : $('#Hospital_Name').val(),
			});
		}

		function ValidInput() {
			var appointmentId = $('#appointmentId').val();
			var Name = $('#Name').val();
			var date = $('#date').val();
			var time = $('#time').val();
			var doctor_name = $('#doctor_name').val();
			var email = $('#email').val();
			var contactNum = $('#contactNum').val();
			var Hospital_Name = $('#Hospital_Name').val();
			if (appointmentId === "" || Name === "" || date === ""
					|| time === "" || doctor_name === "" || email === ""
					|| contactNum === "" || Hospital_Name === "") {

				alert("Fill Form");
				return false;
			} 
			if(contactValidation()){
				return false;
			}
			if(ValidateEmail()){
				return false;
			}
			return true;
		}
		
		function contactValidation() {
            var contactNum = $('#contactNum').val();
            if (contactNum.length === 10) {
                return false;
            } else {
                alert("Invalid contact Number");
                return true;
            }
        }
		
		function ValidateEmail() {

            if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/igm.test($('#email').val()))
            {
                return false;
            }
            alert("Invlid Email");
            return true;

        }
		
		function validateName(evt) {
            var theEvent = evt || window.event;
            // Handle paste
            if (theEvent.type === 'paste') {
                key = event.clipboardData.getData('text/plain');
            } else {
                // Handle key press
                var key = theEvent.keyCode || theEvent.which;
                key = String.fromCharCode(key);
            }
            var regex = /^[a-zA-Z\s]+$/;
            if (!regex.test(key)) {
                theEvent.returnValue = false;
                if (theEvent.preventDefault)
                    theEvent.preventDefault();
            }

        }

		function search() {
			var searchID = $('#searchID').val();
			if (searchID === "") {
				alert("Please Enter ID")
			} else {
				$
						.ajax({
							url : 'http://localhost:8021/rest.api/webresources/AppointmentResources/Appointment/'
									+ searchID,
							method : 'GET',
							headers : {
								Accept : "application/json",
								"Content-Type" : "application/json"
							},
							success : function(data, textStatus, errorThrown) {
								$("#idTable").find("tr:gt(0)").remove();
								var items = [];
								items.push("<tr>");
								items.push("<td>" + 1 + "</td>");
								items.push("<td>" + data.appointmentId
										+ "</td>");
								items.push("<td>" + data.name + "</td>");
								items.push("<td>" + data.date + "</td>");
								items.push("<td>" + data.time + "</td>");
								items.push("<td>" + data.doctor_name + "</td>");
								items.push("<td>" + data.email + "</td>");
								items.push("<td>" + data.contactNum + "</td>");
								items.push("<td>" + data.hospital_Name
										+ "</td>");
								items
										.push("<td><button onclick='getRowSearch()' type='button' class='btn btn-info btn-fill'>Edit</button></td>");
								items
										.push("<td><button onclick='deletSearch()' type='button' class='btn btn-danger btn-fill'>Delete</button></td>");
								items.push("</tr>");
								$("<tbody/>", {
									html : items.join("")
								}).appendTo("#idTable");
							},
							error : function(jqXHR, textStatus, errorThrown) {
								alert("Ajax request fail");
							},
							timeout : 120000,
						});
			}
		}
	</script>


</body>
</html>