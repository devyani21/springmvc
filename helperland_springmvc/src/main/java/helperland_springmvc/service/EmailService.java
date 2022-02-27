package helperland_springmvc.service;

public interface EmailService {
	public void sendEmail(String message, String subject, String to, String from);
}
