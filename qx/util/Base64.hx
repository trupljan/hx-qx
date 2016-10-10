package qx.util;

@:native("qx.util.Base64")
extern class Base64 {
	
    /**
     * Decode a base64 string (http://en.wikipedia.org/wiki/Base64).
     *
     * @param input {String} the input string to decode
     *
     * @param is8bit {Boolean?} Whether the character set is 8-bit, not
     *   multi-byte.  If this parameter is not provided, the character set is
     *   determined from the 'document' object.
     *
     * @return {String} The decoded input string.
     */
    static function decode(input: std.String, ?is8Bit: Bool): std.String;

	
   /**
     * Encode a string using base64 encoding (http://en.wikipedia.org/wiki/Base64).
     *
     * @param input {String} the input string to encode
     *
     * @param is8bit {Boolean?} Whether the character set is 8-bit, not
     *   multi-byte.  If this parameter is not provided, the character set is
     *   determined from the 'document' object.
     *
     * @return {String} The base64 encoded input string.
     */
    static function encode(input: std.String, ?is8bit: Bool): std.String;
	
}