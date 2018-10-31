package beans;

import java.util.Enumeration;
import javax.servlet.ServletContext;

public class LoggedInUsers {
	ServletContext context;
	String name = new String();
	String username = new String();
	boolean found;

	public LoggedInUsers(ServletContext ctxt, String username) {
		this.context = ctxt;
		this.username = username;
	}

	public boolean getExistingUser() {
		Enumeration enumeration = this.context.getAttributeNames();

		while (enumeration.hasMoreElements()) {
			this.name = enumeration.nextElement().toString();
			String name2 = this.context.getAttribute(this.name).toString();
			if (name2.equals(this.username)) {
				this.found = true;
			}
		}

		return this.found;
	}
}