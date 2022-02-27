package helperland_springmvc.service;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailServiceImpl implements EmailService {

	public void sendEmail(String message, String subject, String to, String from) {
		// TODO Auto-generated method stub
		String host = "smtp.gmail.com";

		Properties properties = System.getProperties();
		System.out.println("Properties:-" + properties);

		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", "465");
		properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.smtp.auth", "true");

		Session session = Session.getInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("helperlandproject@gmail.com", "12345@abc");
			}
		});

		session.setDebug(true);
		
		MimeMessage m = new MimeMessage(session);
		
		try {
			
			//from email
			m.setFrom(from);
			
			//adding recipient to message
			m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			
			//adding subject to message
			m.setSubject(subject);
		
			
			//adding text to message
			m.setText(message);
			
			//send 
			
			//Step 3 : send the message using Transport class
			Transport.send(m);
			
			System.out.println("Sent success...................");
			
			
			}catch (Exception e) {
				e.printStackTrace();
			}

	}
}
