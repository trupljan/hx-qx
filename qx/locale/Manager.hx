package qx.locale;
import haxe.extern.EitherType;
import haxe.extern.Rest;

/**
 * The qx.locale.Manager provides static translation methods (like tr()) and
 * general locale information.
 *
 * @require(qx.event.dispatch.Direct)
 * @require(qx.locale.LocalizedString)
 * @require(qx.bom.client.Locale)
 *
 * @cldr()
 */
@:native("qx.locale.Manager")
extern class Manager
extends qx.core.Object
{
	
	/** Singleton */
	public function getInstance(): qx.locale.Manager;
	
	/** Construct. */
	//public function new();
	
	
	/** current locale. locale is an language code like de, de_AT, en, en_GB, fr, ... */
	public var locale(get, set): std.String;
	inline function get_locale(): std.String { return untyped this.getLocale(); }
	inline function set_locale(value: std.String): std.String { setLocale(value, get_locale()); return value; }
	function resetLocale(): std.String;
	function getLocale(): std.String;
	function setLocale(value: std.String, old: std.String): Void;
	
	
	/**
     * Get the language code of the current locale
     *
     * This is the first part of a locale definition. The language for "de_DE" would be "de"
     *
     * @return {String} language code
     */
    function getLanguage(): std.String;


    /**
     * Get the territory code of the current locale
     *
     * This is the second part of a locale definition. The territory for "de_DE" would be "DE"
     *
     * @return {String} territory code
     */
    function getTerritory(): std.String;


    /**
     * Return the available application locales
     *
     * This corresponds to the LOCALES setting in config.json. Without argument,
     * it only returns the currently loaded locales, with an argument of true
     * all locales that went into the build. This is particularly interesting if
     * locales were generated as dedicated I18N parts, and have to be loaded
     * explicitly before being available.
     *
     * @param includeNonloaded {Boolean?null} include locales not yet loaded
     * @return {String[]} array of available locales
     */
    function getAvailableLocales(?includeNonloaded: Bool): Array<std.String>;
	

	/** property apply */
    function _applyLocale(value: std.String, old: std.String): Void;


    /**
     * Add a translation to the translation manager.
     *
     * If <code>languageCode</code> already exists, its map will be updated with
     * <code>translationMap</code> (new keys will be added, existing keys will be
     * overwritten).
     *
     * @param languageCode {String} language code of the translation like <i>de, de_AT, en, en_GB, fr, ...</i>
     * @param translationMap {Map} mapping of message identifiers to message strings in the target
     *                             language, e.g. <i>{"greeting_short" : "Hello"}</i>. Plural forms
     *                             are separate keys.
     */
    function addTranslation(languageCode: std.String, translationMap: Dynamic): Void;


    /**
     * Add a localization to the localization manager.
     *
     * If <code>localeCode</code> already exists, its map will be updated with
     * <code>localeMap</code> (new keys will be added, existing keys will be overwritten).
     *
     * @param localeCode {String} locale code of the translation like <i>de, de_AT, en, en_GB, fr, ...</i>
     * @param localeMap {Map} mapping of locale keys to the target locale values, e.g.
     *                        <i>{"cldr_date_format_short" : "M/d/yy"}</i>.
     */
    function addLocale(localeCode: std.String, localeMap: Dynamic): Void;


    /**
     * Translate a message using the current locale and apply format string to the arguments.
     *
     * Implements the lookup chain locale (e.g. en_US) -> language (e.g. en) ->
     * default locale (e.g. C). Localizes the arguments if possible and splices
     * them into the message. If qx.dynlocale is on, returns a {@link
     * LocalizedString}.
     *
     * @param messageId {String} message id (may contain format strings)
     * @param args {Object[]} array of objects, which are inserted into the format string
     * @param locale {String ? #locale} locale to be used; if not given, defaults to the value of {@link #locale}
     * @return {String | LocalizedString} translated message or localized string
     */
    function translate(messageId: std.String, args: Array<Dynamic>, ?locale: std.String): EitherType<std.String, qx.locale.LocalizedString>;


    /**
     * Provide localisation (CLDR) data.
     *
     * Implements the lookup chain locale (e.g. en_US) -> language (e.g. en) ->
     * default locale (e.g. C). Localizes the arguments if possible and splices
     * them into the message. If qx.dynlocale is on, returns a {@link
     * LocalizedString}.
     *
     * @param messageId {String} message id (may contain format strings)
     * @param args {Object[]} array of objects, which are inserted into the format string
     * @param locale {String ? #locale} locale to be used; if not given, defaults to the value of {@link #locale}
     * @return {String | LocalizedString} translated message or localized string
     */
    function localize(messageId: std.String, args: Array<Dynamic>, ?locale: std.String): EitherType<std.String, qx.locale.LocalizedString>;

	
    /**
     * Translate a message
     * Mark the message for translation.
     *
     * @param messageId {String} message id (may contain format strings)
     * @param varargs {Object} variable number of arguments applied to the format string
     * @return {String | LocalizedString} The translated message or localized string
	 * @see qx.lang.String.format
     */
    static function tr(messageId: std.String, varargs: Rest<Dynamic>): EitherType<std.String, qx.locale.LocalizedString>;


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
     * @see qx.lang.String.format
	 */
    static function trn(singularMessageId: std.String, pluralMessageId: std.String, count: Int, varargs: Rest<Dynamic>): EitherType<std.String, qx.locale.LocalizedString>;


    /**
     * Translate a message with translation hint
     * Mark the messages for translation.
     *
     * @param hint {String} hint for the translator of the message. Will be included in the .po file.
     * @param messageId {String} message id (may contain format strings)
     * @param varargs {Object} variable number of arguments applied to the format string
     * @return {String | LocalizedString} The translated message or localized string
     * @see qx.lang.String.format
	 */
    static function trc(hint: std.String, messageId: std.String, varargs: Rest<Dynamic>): EitherType<std.String, qx.locale.LocalizedString>;


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
     * @see qx.lang.String.format
	 */
    static function trnc(hint: std.String, singularMessageId: std.String, pluralMessageId: std.String, count: Int, varargs: Rest<Dynamic>): EitherType<std.String, qx.locale.LocalizedString>;


    /**
     * Mark the message for translation but return the original message.
     *
     * @param messageId {String} the message ID
     * @return {String} messageId
     */
    static function marktr(messageId: std.String): std.String;
	
	
}