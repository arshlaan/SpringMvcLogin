package com.springmvc.exception;

@SuppressWarnings("serial")
public class InvalidUserIdException extends Exception{
	public InvalidUserIdException(String s){
		super(s);
	}
}
