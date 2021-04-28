package com.springmvc.exception;

@SuppressWarnings("serial")
public class InvalidUserPasswordException extends Exception{
	public InvalidUserPasswordException(String s){
		super(s);
	}
}
