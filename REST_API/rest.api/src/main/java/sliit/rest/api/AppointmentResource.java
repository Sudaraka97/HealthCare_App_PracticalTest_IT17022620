//Generated by 24HRS
package sliit.rest.api;


import Models.Appointment;
import Controllers.AppointmentController;

import java.util.List;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("AppointmentResources")
public class AppointmentResource {

	@GET
	@Path("Appointments")
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON })
	public List<Appointment> getAllAppointments() throws Exception {
		return AppointmentController.getInstance().SearchAll();
	}

	@GET
	@Path("Appointment/{appointmentId}")
	@Produces({ MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON })
	public Appointment getAppointment(@PathParam("appointmentId") int appointmentId) throws Exception {
		return AppointmentController.getInstance().Search(appointmentId);
	}

	@POST
	@Path("Appointment")
	public String saveAppointment(Appointment obj) throws Exception {
		AppointmentController.getInstance().Save(obj);
		return "Appointment Saved";
	}

	@PUT
	@Path("Appointment")
	public String updateAppointment(Appointment obj) throws Exception {
		AppointmentController.getInstance().Update(obj);
		return "Appointment Updated";
	}

	@DELETE
	@Path("Appointment/{appointmentId}")
	public String deleteAppointment(@PathParam("appointmentId") int appointmentId) throws Exception {
		Appointment obj = new Appointment();
		obj.setAppointmentId(appointmentId);
		AppointmentController.getInstance().Delete(obj);
		return "Appointment Deleted";
	}
}