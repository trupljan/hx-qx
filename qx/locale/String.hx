package qx.locale;

/**
 * Provides information about locale-dependent string formatting (like quotation
 * signs).
 *
 * @cldr()
 */
@:native("qx.locale.String")
extern class String
{
    /**
     * Get quotation start sign
     *
     * @param locale {String} optional locale to be used
     * @return {String} quotation start sign
     */
    static function getQuotationStart(?locale: std.String): std.String;


    /**
     * Get quotation end sign
     *
     * @param locale {String} optional locale to be used
     * @return {String} quotation end sign
     */
    static function getQuotationEnd(?locale: std.String): std.String;


    /**
     * Get quotation alternative start sign
     *
     * @param locale {String} optional locale to be used
     * @return {String} alternative quotation start sign
     */
    static function getAlternateQuotationStart(?locale: std.String): std.String;


    /**
     * Get quotation alternative end sign
     *
     * @param locale {String} optional locale to be used
     * @return {String} alternative quotation end sign
     */
    static function getAlternateQuotationEnd(?locale: std.String): std.String;
}