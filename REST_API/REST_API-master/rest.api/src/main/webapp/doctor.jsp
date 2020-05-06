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
					class="sidebar-link text-muted"><i
						class="o-home-1 mr-3 text-gray"></i><span>Appointment</span></a></li>
				<li class="sidebar-list-item"><a href="doctor.jsp"
					class="sidebar-link text-muted active"><i
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
												<input id="doctorId" type="hidden" value="0"
													class="form-control form-control-success"> <input
													id="Name" type="text" onkeypress="validateName()"
													class="form-control form-control-success">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 form-control-label">UserName</label>
											<div class="col-md-9">
												<input id="UserName" type="text"
													class="form-control form-control-warning">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 form-control-label">ContactNum</label>
											<div class="col-md-9">
												<input id="ContactNum" type="number"
													class="form-control form-control-warning">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 form-control-label">Email</label>
											<div class="col-md-9">
												<input id="Email" type="text"
													class="form-control form-control-warning">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 form-control-label">Sex</label>
											<div class="col-md-9">
												<select id="Sex" class="form-control">
													<option>Male</option>
													<option>Female</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 form-control-label">Address</label>
											<div class="col-md-9">
												<input id="Address" type="text"
													class="form-control form-control-warning">
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-3 form-control-label">Password</label>
											<div class="col-md-9">
												<input id="Password" type="text"
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
												<th>Doctor ID</th>
												<th>Name</th>
												<th>Username</th>
												<th>Contact</th>
												<th>Email</th>
												<th>Sex</th>
												<th>Address</th>
												<th>Password</th>
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
												<th>Doctor ID</th>
												<th>Name</th>
												<th>Username</th>
												<th>Contact</th>
												<th>Email</th>
												<th>Sex</th>
												<th>Address</th>
												<th>Password</th>
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
					document.getElementById("doctorId").value = this.cells[1].textContent;
					document.getElementById("Name").value = this.cells[2].textContent;
					document.getElementById("UserName").value = this.cells[3].textContent;
					document.getElementById("ContactNum").value = this.cells[4].textContent;
					document.getElementById("Email").value = this.cells[5].textContent;
					document.getElementById("Sex").value = this.cells[6].textContent;
					document.getElementById("Address").value = this.cells[7].textContent;
					document.getElementById("Password").value = this.cells[8].textContent;
				};
			}
		}

		function getRowSearch() {
			var table = document.getElementById('idTable');
			for (var i = 0; i < table.rows.length; i++) {
				table.rows[i].onclick = function() {
					document.getElementById("doctorId").value = this.cells[1].textContent;
					document.getElementById("Name").value = this.cells[2].textContent;
					document.getElementById("UserName").value = this.cells[3].textContent;
					document.getElementById("ContactNum").value = this.cells[4].textContent;
					document.getElementById("Email").value = this.cells[5].textContent;
					document.getElementById("Sex").value = this.cells[6].textContent;
					document.getElementById("Address").value = this.cells[7].textContent;
					document.getElementById("Password").value = this.cells[8].textContent;
				};
			}
		}

		function getID() {
			var table = document.getElementById('table');
			for (var i = 0; i < table.rows.length; i++) {
				table.rows[i].onclick = function() {
					document.getElementById("doctorId").value = this.cells[1].textContent;
				};
			}
		}

		function getIDserch() {
			var table = document.getElementById('idTable');
			for (var i = 0; i < table.rows.length; i++) {
				table.rows[i].onclick = function() {
					document.getElementById("doctorId").value = this.cells[1].textContent;
				};
			}
		}

		function resetForm() {
			document.getElementById("doctorId").value = "0";
			document.getElementById("Name").value = "";
			document.getElementById("UserName").value = "";
			document.getElementById("ContactNum").value = "";
			document.getElementById("Email").value = "";
			document.getElementById("Sex").value = "";
			document.getElementById("Address").value = "";
			document.getElementById("Password").value = "";
		}

		function save() {
			var doctorId = $('#doctorId').val();
			doctorId = parseInt(doctorId);
			if (doctorId === 0) {
				if (ValidInput()) {
					$
							.ajax({
								url : 'http://localhost:8021/rest.api/webresources/DoctorResources/Doctor',
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
				} else {
					alert("Fill form");
				}
			} else {
				if (ValidInput()) {
					$
							.ajax({
								url : 'http://localhost:8021/rest.api/webresources/DoctorResources/Doctor/',
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
                                url: 'http://localhost:8021/rest.api/webresources/DoctorResources/Doctor/'+$('#doctorId').val(),
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
                                url: 'http://localhost:8021/rest.api/webresources/DoctorResources/Doctor/'+$('#doctorId').val(),
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
						url : 'http://localhost:8021/rest.api/webresources/DoctorResources/Doctors',
						method : 'GET',
						headers : {
							Accept : "application/json",
							"Content-Type" : "application/json"
						},
						success : function(data, textStatus, errorThrown) {
							var items = [];
							$
									.each(
											data.doctor,
											function(key, val) {
												var index = key + 1;
												items.push("<tr>");
												items.push("<td>" + index
														+ "</td>");
												items.push("<td>"
														+ val.doctorId
														+ "</td>");
												items.push("<td>" + val.name
														+ "</td>");
												items.push("<td>"
														+ val.userName
														+ "</td>");
												items.push("<td>"
														+ val.contactNum
														+ "</td>");
												items.push("<td>" + val.email
														+ "</td>");
												items.push("<td>" + val.sex
														+ "</td>");
												items.push("<td>" + val.address
														+ "</td>");
												items.push("<td>"
														+ val.password
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
				"doctorId" : $('#doctorId').val(),
				"name" : $('#Name').val(),
				"userName" : $('#UserName').val(),
				"contactNum" : $('#ContactNum').val(),
				"email" : $('#Email').val(),
				"sex" : $('#Sex').val(),
				"address" : $('#Address').val(),
				"password" : $('#Password').val(),
			});
		}

		function ValidInput() {
			var doctorId = $('#doctorId').val();
			var Name = $('#Name').val();
			var UserName = $('#UserName').val();
			var ContactNum = $('#ContactNum').val();
			var Email = $('#Email').val();
			var Sex = $('#Sex').val();
			var Address = $('#Address').val();
			var Password = $('#Password').val();
			if (doctorId === "" || Name === "" || UserName === ""
					|| ContactNum === "" || Email === "" 
					|| Address === "" || Password === "") {
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
            var ContactNum = $('#ContactNum').val();
            if (ContactNum.length === 10) {
                return false;
            } else {
                alert("Invalid contact Number");
                return true;
            }
        }
		
		function ValidateEmail() {

            if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/igm.test($('#Email').val()))
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
							url : 'http://localhost:8021/rest.api/webresources/DoctorResources/Doctor/'+searchID,
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
								items.push("<td>" + data.doctorId + "</td>");
								items.push("<td>" + data.name + "</td>");
								items.push("<td>" + data.userName + "</td>");
								items.push("<td>" + data.contactNum + "</td>");
								items.push("<td>" + data.email + "</td>");
								items.push("<td>" + data.sex + "</td>");
								items.push("<td>" + data.address + "</td>");
								items.push("<td>" + data.password + "</td>");
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