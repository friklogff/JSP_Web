package com.example.testbean;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class Logo extends TagSupport {
    @Override
    public int doStartTag() throws JspException {
        try {
            pageContext.getOut().println("<img src='resource/logo.png' alt='Logo'>");
        } catch (Exception e) {
            System.out.println("Error in Logo tag: " + e.getMessage());
        }
        return SKIP_BODY;
    }
}
