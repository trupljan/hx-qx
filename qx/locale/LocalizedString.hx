package qx.locale;

/**
 * This class contains the translation of a message and all information
 * to translate it again into a different language.
 */
@:native("qx.locale.LocalizedString")
extern class LocalizedString
extends qx.type.BaseString
{
 /**
   * @param translation {String} The translated message
   * @param messageId {String} The messageId to translate
   * @param args {Array} list of arguments passed used as values for format strings
   */
	public function new(translation: std.String, messageId: std.String, args: std.Array<Dynamic>);


  	/**
     * Get a translation of the string using the current locale.
     *
     * @return {LocalizedString} This string translated using the current
     *    locale.
     */
    function translate(): qx.locale.LocalizedString;

    /**
     * Returns the messageId.
     *
     * @return {String} The messageId of this localized String
     */
    function getMessageId(): std.String;
	
}