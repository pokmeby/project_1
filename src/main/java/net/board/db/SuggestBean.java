package net.board.db;

import java.sql.Date;

public class SuggestBean {
private String SUGGEST_NICKNAME;
private String SUGGEST_CONTENT;
private Date SUGGEST_DATE;


public String getSUGGEST_NICKNAME() {
	return SUGGEST_NICKNAME;
}
public void setSUGGEST_NICKNAME(String sUGGEST_NICKNAME) {
	SUGGEST_NICKNAME = sUGGEST_NICKNAME;
}
public String getSUGGEST_CONTENT() {
	return SUGGEST_CONTENT;
}
public void setSUGGEST_CONTENT(String sUGGEST_CONTENT) {
	SUGGEST_CONTENT = sUGGEST_CONTENT;
}
public Date getSUGGEST_DATE() {
	return SUGGEST_DATE;
}
public void setSUGGEST_DATE(Date sUGGEST_DATE) {
	SUGGEST_DATE = sUGGEST_DATE;
}


}
