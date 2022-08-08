package mockproject.utils;

import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class DateTimeFormat {
	
	public static Timestamp getNow() {
		LocalDateTime now = LocalDateTime.now();
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("uuuu-MM-dd HH:mm:ss");
		Timestamp returnValue = Timestamp.valueOf(dtf.format(now).toString());
		return returnValue;
	}
}
