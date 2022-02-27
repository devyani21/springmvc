package helperland_springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import helperland_springmvc.model.User;
import helperland_springmvc.model.Zipcode;

public class BookServiceDaoImpl implements BookServiceDao {
	
	@Autowired
	DataSource dataSource;
	@Autowired
	JdbcTemplate jdbcTemplate;

	public boolean validateZipcode(String zipcode) {
		// TODO Auto-generated method stub
		System.out.println("validate zipcode...");
		System.out.println(zipcode);
		String query = "select * from zipcode where zip_code_value ='" + zipcode + "'";
		List<Zipcode> zipcodes = jdbcTemplate.query(query, new ZipcodeMapper());
		return zipcodes.size() > 0;
		
	}
	
	class ZipcodeMapper implements RowMapper<Zipcode> {
		public Zipcode mapRow(ResultSet rs, int args1) throws SQLException {
			Zipcode zipcode = new Zipcode();
			zipcode.setZip_code_value(rs.getString("zip_code_value"));	
			return zipcode;
		}

}
}
