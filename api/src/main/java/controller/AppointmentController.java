package controller;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.rest.model.AppointmentModel;

import DBConnector.Connector;

public class AppointmentController {

	Connector con = Connector.getInstance();

	private AppointmentController() {

	}

	private static final AppointmentController ac = new AppointmentController();

	public static AppointmentController getInstance() {
		return ac;
	}

	public void save(AppointmentModel obj) throws Exception {
		con.getConnection();
		con.aud("INSERT INTO appointment(Name,date,time,doctor_name,email,contactNum,Hospital_Name) VALUES ('" + obj.getName() + "', "
				+ "'" + obj.getDate() + "', '" + obj.getTime() + "', '" + obj.getDoctor_name() + "', '" + obj.getEmail()
				+ "', " + "'" + obj.getContactNum() + "', '" + obj.getHospitalName() + "')");
	}
	
	public void update(AppointmentModel obj) throws Exception {
		con.getConnection();
		con.aud("UPDATE appointment SET Name = '" + obj.getName() + "', date = '" + obj.getDate() + "', time = '"
				+ obj.getTime() + "'," + "doctor_name = '" + obj.getDoctor_name() + "', email='" + obj.getEmail()
				+ "', contactNum='" + obj.getContactNum() + "', Hospital_Name='" + obj.getHospitalName() + "' " + "WHERE appointmentId='" + obj.getAppointementId()
				+ "'");
	}
	

	public void delete(AppointmentModel obj) throws Exception {
		con.getConnection();
		con.aud("DELETE FROM appointment WHERE appointmentId='" + obj.getAppointementId() + "'");
	}
	
	public List<AppointmentModel> searchAll() throws Exception {
		List<AppointmentModel> list = new ArrayList<AppointmentModel>();
		con.getConnection();
		ResultSet rset = con.srh("SELECT * FROM appointment");
		while (rset.next()) {
			AppointmentModel obj = new AppointmentModel();
			obj.setAppointementId(rset.getInt(1));
			obj.setName(rset.getString(2));
			obj.setDate(rset.getString(3));
			obj.setTime(rset.getString(4));
			obj.setDoctor_name(rset.getString(5));
			obj.setEmail(rset.getString(6));
			obj.setContactNum(rset.getString(7));
			obj.setHospitalName(rset.getString(8));

			list.add(obj);
		}
		return list;
	}

	public AppointmentModel search(int appointmentId) throws Exception {
		con.getConnection();
		AppointmentModel obj = null;
		ResultSet rset = con.srh("SELECT * FROM appointment WHERE appointmentId='" + appointmentId + "'");
		while (rset.next()) {
			obj = new AppointmentModel();
			obj.setAppointementId(rset.getInt(1));
			obj.setName(rset.getString(2));
			obj.setDate(rset.getString(3));
			obj.setTime(rset.getString(4));
			obj.setDoctor_name(rset.getString(5));
			obj.setEmail(rset.getString(6));
			obj.setContactNum(rset.getString(7));
			obj.setHospitalName(rset.getString(8));

		}
		return obj;
	}         

}
