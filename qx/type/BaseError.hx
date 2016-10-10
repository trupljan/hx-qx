package qx.type;

/**
 * This class is the common super class for all error classes in qooxdoo.
 *
 * It has a comment and a fail message as members. The toString method returns
 * the comment and the fail message separated by a colon.
 */
@:native("qx.type.BaseError")
extern class BaseError
{
	
  /** Default message */
  static var DEFAULTMESSAGE(default, null): String; // "error"	

  
  /**
   * @param comment {String} Comment passed to the assertion call
   * @param failMessage {String} Fail message provided by the assertion
   */
  function new(comment: String, failMessage: String);
  
  
  /** @type {String} Fail message provided by the assertion */
  var message(default, null): String;
  
  /**
   * Comment passed to the assertion call
   *
   * @return {String} The comment passed to the assertion call
   */
  function getComment(): String;
  
   
  /**
   * Get the error message
   *
   * @return {String} The error message
   */
  function toString(): String;
  
}