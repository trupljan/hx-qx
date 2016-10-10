package qx.locale;

/**
 * Static class that provides localized date information (like names of week
 * days, AM/PM markers, start of week, etc.).
 *
 * @cldr()
 */
@:native("qx.locale.Manager")
extern class Date
{	
    /**
     * Get AM marker for time definitions
     *
     * @param locale {String} optional locale to be used
     * @return {String} translated AM marker.
     */
    static function getAmMarker(locale: std.String): std.String;


    /**
     * Get PM marker for time definitions
     *
     * @param locale {String} optional locale to be used
     * @return {String} translated PM marker.
     */
    static function getPmMarker(locale: std.String): std.String;


    /**
     * Return localized names of day names
     *
     * @param length {String} format of the day names.
     *       Possible values: "abbreviated", "narrow", "wide"
     * @param locale {String} optional locale to be used
     * @param context {String} (default: "format") intended context.
     *       Possible values: "format", "stand-alone"
     * @param withFallback {Boolean?} if true, the previous parameter's other value is tried
     * in order to find a localized name for the day
     * @return {String[]} array of localized day names starting with sunday.
     */
    static function getDayNames(length: std.String, locale: std.String, ?context: std.String, ?withFallback: Bool): Array<std.String>;


    /**
     * Return localized name of a week day name
     *
     * @param length {String} format of the day name.
     *       Possible values: "abbreviated", "narrow", "wide"
     * @param day {Integer} day number. 0=sunday, 1=monday, ...
     * @param locale {String} optional locale to be used
     * @param context {String} (default: "format") intended context.
     *       Possible values: "format", "stand-alone"
     * @param withFallback {Boolean?} if true, the previous parameter's other value is tried
     * in order to find a localized name for the day
     * @return {String} localized day name
     */
    static function getDayName(length: std.String, day: Int, ?locale: std.String, ?context: std.String, ?withFallback: Bool): std.String;


    /**
     * Return localized names of month names
     *
     * @param length {String} format of the month names.
     *       Possible values: "abbreviated", "narrow", "wide"
     * @param locale {String} optional locale to be used
     * @param context {String} (default: "format") intended context.
     *       Possible values: "format", "stand-alone"
     * @param withFallback {Boolean?} if true, the previous parameter's other value is tried
     * in order to find a localized name for the month
     * @return {String[]} array of localized month names starting with january.
     */
    static function getMonthNames(length: std.String, ?locale: std.String, ?context: std.String, ?withFallback: Bool): Array<std.String>;


    /**
     * Return localized name of a month
     *
     * @param length {String} format of the month names.
     *       Possible values: "abbreviated", "narrow", "wide"
     * @param month {Integer} index of the month. 0=january, 1=february, ...
     * @param locale {String} optional locale to be used
     * @param context {String} (default: "format") intended context.
     *       Possible values: "format", "stand-alone"
     * @param withFallback {Boolean?} if true, the previous parameter's other value is tried
     * in order to find a localized name for the month
     * @return {String} localized month name
     */
    static function getMonthName(length: std.String, month: Int, ?locale: std.String, ?context: std.String, ?withFallback: Bool): std.String;

    /**
     * Return localized date format string to be used with {@link qx.util.format.DateFormat}.
     *
     * @param size {String} format of the date format.
     *      Possible values: "short", "medium", "long", "full"
     * @param locale {String?} optional locale to be used
     * @return {String} localized date format string
     */
    static function getDateFormat(size: std.String, ?locale: std.String): std.String;


    /**
     * Try to localize a date/time format string. For format string possibillities see
     * <a href="http://cldr.unicode.org/translation/date-time">Date/Time Symbol reference</a>
     * at CLDR - Unicode Common Locale Data Repository.
     *
     * If no localization is available take the fallback format string.
     *
     * @param canonical {String} format string containing only field information, and in a canonical order.
     *       Examples are "yyyyMMMM" for year + full month, or "MMMd" for abbreviated month + day.
     * @param fallback {String} fallback format string if no localized version is found
     * @param locale {String} optional locale to be used
     * @return {String} best matching format string
     */
    static function getDateTimeFormat(canonical: std.String, fallback: std.String, locale: std.String): std.String;


    /**
     * Return localized time format string to be used with {@link qx.util.format.DateFormat}.
     *
     * @param size {String} format of the time pattern.
     *      Possible values: "short", "medium", "long", "full"
     * @param locale {String} optional locale to be used
     * @return {String} localized time format string
     */
    static function getTimeFormat(size: std.String, ?locale: std.String): std.String;


    /**
     * Return the day the week starts with
     *
     * Reference: Common Locale Data Repository (cldr) supplementalData.xml
     *
     * @param locale {String} optional locale to be used
     * @return {Integer} index of the first day of the week. 0=sunday, 1=monday, ...
     */
    static function getWeekStart(?locale: std.String): Int;
	
	/**
     * Return the day the weekend starts with
     *
     * Reference: Common Locale Data Repository (cldr) supplementalData.xml
     *
     * @param locale {String} optional locale to be used
     * @return {Integer} index of the first day of the weekend. 0=sunday, 1=monday, ...
     */
    static function getWeekendStart(?locale: std.String): Int;
	
	    /**
     * Return the day the weekend ends with
     *
     * Reference: Common Locale Data Repository (cldr) supplementalData.xml
     *
     * @param locale {String} optional locale to be used
     * @return {Integer} index of the last day of the weekend. 0=sunday, 1=monday, ...
     */
    static function getWeekendEnd(?locale: std.String): Int;
	
	
	   /**
     * Returns whether a certain day of week belongs to the week end.
     *
     * @param day {Integer} index of the day. 0=sunday, 1=monday, ...
     * @param locale {String} optional locale to be used
     * @return {Boolean} whether the given day is a weekend day
     */
    static function isWeekend(day: Int, ?locale: std.String): Bool;
	
	    /**
     * Extract the territory part from a locale
     *
     * @param locale {String} the locale
     * @return {String} territory
     */
    static function _getTerritory(locale: std.String): std.String;
	
}