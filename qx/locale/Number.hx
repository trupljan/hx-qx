package qx.locale;

/**
 * Provides information about locale-dependent number formatting (like the decimal
 * separator).
 *
 * @cldr()
 */
@:native("qx.locale.Number")
extern class Number
{
    /**
     * Get decimal separator for number formatting
     *
     * @param locale {String} optional locale to be used
     * @return {String} decimal separator.
     */
    static function getDecimalSeparator(?locale: String): String;


    /**
     * Get thousand grouping separator for number formatting
     *
     * @param locale {String} optional locale to be used
     * @return {String} group separator.
     */
    static function getGroupSeparator(?locale: String): String;


    /**
     * Get percent format string
     *
     * @param locale {String} optional locale to be used
     * @return {String} percent format string.
     */
    static function getPercentFormat(?locale: String): String;
	
}