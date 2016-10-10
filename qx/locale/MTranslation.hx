package qx.locale;
import haxe.extern.EitherType;
import haxe.extern.Rest;

/**
 * This mixin contains the methods needed to use the translation features
 * of qooxdoo.
 *
 * @ignore(qx.locale.Manager)
 */
@:native("qx.locale.MTranslation")
extern interface MTranslation 
{
    /**
     * Translate a message
     * Mark the message for translation.
     *
     * @param messageId {String} message id (may contain format strings)
     * @param varargs {Object} variable number of arguments applied to the format string
     * @return {String | LocalizedString} The translated message or localized string
     */
    function tr(messageId: std.String, varargs: Rest<Dynamic>): EitherType<std.String, qx.locale.LocalizedString>;


    /**
     * Translate a plural message
     * Mark the messages for translation.
     *
     * Depending on the third argument the plural or the singular form is chosen.
     *
     * @param singularMessageId {String} message id of the singular form (may contain format strings)
     * @param pluralMessageId {String} message id of the plural form (may contain format strings)
     * @param count {Integer} if greater than 1 the plural form otherwise the singular form is returned.
     * @param varargs {Object} variable number of arguments applied to the format string
     * @return {String | LocalizedString} The translated message or localized string
     */
    function trn(singularMessageId: std.String, pluralMessageId: std.String, count: Int, varargs: Rest<Dynamic>): EitherType<std.String, qx.locale.LocalizedString>;


    /**
     * Translate a message with translation hint
     * Mark the messages for translation.
     *
     * @param hint {String} hint for the translator of the message. Will be included in the .po file.
     * @param messageId {String} message id (may contain format strings)
     * @param varargs {Object} variable number of arguments applied to the format string
     * @return {String | LocalizedString} The translated message or localized string
     */
    function trc(hint: std.String, messageId: std.String, varargs: Rest<Dynamic>): EitherType<std.String, qx.locale.LocalizedString>;


    /**
     * Translate a plural message with translation hint
     * Mark the messages for translation.
     *
     * Depending on the third argument the plural or the singular form is chosen.
     *
     * @param hint {String} hint for the translator of the message. Will be included in the .po file.
     * @param singularMessageId {String} message id of the singular form (may contain format strings)
     * @param pluralMessageId {String} message id of the plural form (may contain format strings)
     * @param count {Integer} if greater than 1 the plural form otherwise the singular form is returned.
     * @param varargs {Object} variable number of arguments applied to the format string
     * @return {String | LocalizedString} The translated message or localized string
     */
    function trnc(hint: std.String, singularMessageId: std.String, pluralMessageId: std.String, count: Int, varargs: Rest<Dynamic>): EitherType<std.String, qx.locale.LocalizedString>;


    /**
     * Mark the message for translation but return the original message.
     *
     * @param messageId {String} the message ID
     * @return {String} messageId
     */
    function marktr(messageId: std.String): std.String;
  
}