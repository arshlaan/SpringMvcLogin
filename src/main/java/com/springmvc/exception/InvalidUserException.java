package com.springmvc.exception;

@SuppressWarnings("serial")
public class InvalidUserException extends Exception{
	public InvalidUserException(String s) {
		super(s);
	}
	public InvalidUserException() {
		super();
	}
}
