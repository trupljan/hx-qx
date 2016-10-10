package qx.type;
import haxe.extern.EitherType;
import haxe.extern.Rest;

/**
 * This class emulates the built-in JavaScript String class. It can be used as
 * base class for classes, which need to derive from String.
 *
 * Instances of this class can be used in any place a JavaScript string can.
 */
@:native("qx.type.BaseString")
extern class BaseString
{
  /**
   * @param txt {String?""} Initialize with this string
   */
   function new(?txt: String); 
   
	/** Length. */
	public var length(default, default): Int;
	
    /**
     * Returns a string representing the specified object.
     *
     * The valueOf method of String returns the primitive value of a String
     * object as a string data type.
     * This method is usually called internally by JavaScript and not
     * explicitly in code.
     *
     * @return {String} A new string containing the string value.
     */
    function toString(): String;


    /**
     *  Returns the specified character from a string.
     *
     * Characters in a string are indexed from left to right. The index of the
     * first character is 0, and the index of the last character in a string
     * called stringName is stringName.length - 1. If the index you supply is
     * out of range, JavaScript returns an empty string.
     *
     * @signature function(index)
     * @param index {Integer} An integer between 0 and 1 less than the length
     *   of the string.
     * @return {String} The character.
     */
    function charAt(index: Int): String;


    /**
     * Returns the primitive value of a String object.
     *
     * The valueOf method of String returns the primitive value of a String
     * object as a string data type.
     * This method is usually called internally by JavaScript and not
     * explicitly in code.
     *
     * @signature function()
     * @return {String} A new string containing the primitive value.
     */
    function valueOf(): String;


    /**
     * Returns a number indicating the Unicode value of the character at the given index.
     *
     * @signature function(index)
     * @param index {Integer} An integer greater than 0 and less than the length
     *   of the string; if it is not a number, it defaults to 0.
     * @return {Integer} The number.
     */
    function charCodeAt(index: Int): Int;


    /**
     * Combines the text of two or more strings and returns a new string.
     * Changes to the text in one string do not affect the other string.
     *
     * @signature function(stringN)
     * @param stringN {String} One or more strings to be combined.
     * @return {String} The combined string.
     */
    function concat(stringN: String): String;


    /**
     * Returns the index within the calling String object of the first
     * occurrence of the specified value, starting the search at fromIndex,
     * returns -1 if the value is not found.
     *
     * @signature function(index, offset)
     * @param index {String} A string representing the value to search for.
     * @param offset {Integer?0} The location within the calling string to start
     *   the search from. It can be any integer between 0 and the length of the
     *   string. The default value is 0.
     * @return {Integer} The index or -1.
     */
    function indexOf(index: String, ?offset: Int): Int;


    /**
     * Returns the index within the calling String object of the last occurrence
     * of the specified value, or -1 if not found. The calling string is
     * searched backward, starting at fromIndex.
     *
     * @signature function(index, offset)
     * @param index {String} A string representing the value to search for.
     * @param offset {Integer?0} The location within the calling string to start
     *   the search from, indexed from left to right. It can be any integer
     *   between 0 and the length of the string. The default value is the length
     *    of the string.
     * @return {Integer} The index or -1.
     */
    function lastIndexOf(index: String, ?offset: Int) : Int;

    /**
     * Used to retrieve the matches when matching a string against a regular
     * expression.
     *
     * If the regular expression does not include the g flag, returns the same
     * result as regexp.exec(string). If the regular expression includes the g
     * flag, the method returns an Array containing all matches.
     *
     * @signature function(regexp)
     * @param regexp {Object} A regular expression object. If a non-RegExp object
     *  obj is passed, it is implicitly converted to a RegExp by using
     *   new RegExp(obj).
     * @return {Object} The matching RegExp object or an array containing all
     *   matches.
     */
    function match(regexp: Dynamic): Dynamic;

    /**
     * Finds a match between a regular expression and a string, and replaces the
     * matched substring with a new substring.
     *
     * @signature function(regexp, aFunction)
     * @param regexp {Object} A RegExp object. The match is replaced by the
     *   return value of parameter #2. Or a String that is to be replaced by
     *   newSubStr.
     * @param aFunction {Function} A function to be invoked to create the new
     *   substring (to put in place of the substring received from parameter
     *   #1).
     * @return {String} The new substring.
     */
    function replace(regexp: Dynamic, aFunction: haxe.Constraints.Function): String;


    /**
     * Executes the search for a match between a regular expression and this
     * String object.
     *
     * If successful, search returns the index of the regular expression inside
     * the string. Otherwise, it returns -1.
     *
     * @signature function(regexp)
     * @param regexp {Object} A regular expression object. If a non-RegExp object
     *  obj is passed, it is implicitly converted to a RegExp by using
     *   new RegExp(obj).
     * @return {Object} The matching RegExp object or -1.
     *   matches.
     */
    function search(regex: Dynamic): Dynamic;

    /**
     * Extracts a section of a string and returns a new string.
     *
     * Slice extracts the text from one string and returns a new string. Changes
     * to the text in one string do not affect the other string.
     * As a negative index, endSlice indicates an offset from the end of the
     * string.
     *
     * @signature function(beginslice, endSlice)
     * @param beginslice {Integer} The zero-based index at which to begin
     *   extraction.
     * @param endSlice {Integer?null} The zero-based index at which to end
     *   extraction. If omitted, slice extracts to the end of the string.
     * @return {String} The extracted string.
     */
    function slice(beginslice: Int, ?endSlice: Int): String;

    /**
     * Splits a String object into an array of strings by separating the string
     * into substrings.
     *
     * When found, separator is removed from the string and the substrings are
     * returned in an array. If separator is omitted, the array contains one
     * element consisting of the entire string.
     *
     * If separator is a regular expression that contains capturing parentheses,
     * then each time separator is matched the results (including any undefined
     * results) of the capturing parentheses are spliced into the output array.
     * However, not all browsers support this capability.
     *
     * Note: When the string is empty, split returns an array containing one
     *
     * @signature function(separator, limit)
     * @param separator {String?null} Specifies the character to use for
     *   separating the string. The separator is treated as a string or a regular
     *   expression. If separator is omitted, the array returned contains one
     *   element consisting of the entire string.
     * @param limit {Integer?null} Integer specifying a limit on the number of
     *   splits to be found.
     * @return {Array} The Array containing substrings.
     */
    function split(?separator: String, ?limit: Int): Dynamic; // TODO: type

   /**
    * Returns the characters in a string beginning at the specified location
    * through the specified number of characters.
    *
    * Start is a character index. The index of the first character is 0, and the
    * index of the last character is 1 less than the length of the string. substr
    *  begins extracting characters at start and collects length characters
    * (unless it reaches the end of the string first, in which case it will
    * return fewer).
    * If start is positive and is greater than or equal to the length of the
    * string, substr returns an empty string.
    *
    * @signature function(start, length)
    * @param start {Integer} Location at which to begin extracting characters
    *   (an integer between 0 and one less than the length of the string).
    * @param length {Integer?null} The number of characters to extract.
    * @return {String} The substring.
    */
    function substr(start: Int, ?length: Int): String;

    /**
     * Returns a subset of a String object.
     *
     * substring extracts characters from indexA up to but not including indexB.
     * In particular:
     * If indexA equals indexB, substring returns an empty string.
     * If indexB is omitted, substring extracts characters to the end of the
     * string.
     * If either argument is less than 0 or is NaN, it is treated as if it were
     * 0.
     * If either argument is greater than stringName.length, it is treated as if
     * it were stringName.length.
     * If indexA is larger than indexB, then the effect of substring is as if
     * the two arguments were swapped; for example, str.substring(1, 0) == str.substring(0, 1).
     *
     * @signature function(indexA, indexB)
     * @param indexA {Integer} An integer between 0 and one less than the
     *   length of the string.
     * @param indexB {Integer?null} (optional) An integer between 0 and the
     *   length of the string.
     * @return {String} The subset.
     */
    function substring(indexA: Int, ?indexB: Int): String;

    /**
     * Returns the calling string value converted to lowercase.
     * The toLowerCase method returns the value of the string converted to
     * lowercase. toLowerCase does not affect the value of the string itself.
     *
     * @signature function()
     * @return {String} The new string.
     */
    function toLowerCase(): String;

    /**
     * Returns the calling string value converted to uppercase.
     * The toUpperCase method returns the value of the string converted to
     * uppercase. toUpperCase does not affect the value of the string itself.
     *
     * @signature function()
     * @return {String} The new string.
     */
    function toUpperCase(): String;


    /**
     * Return unique hash code of object
     *
     * @return {Integer} unique hash code of the object
     */
    function toHashCode(): Int;


   /**
    * The characters within a string are converted to lower case while
    * respecting the current locale.
    *
    * The toLowerCase method returns the value of the string converted to
    * lowercase. toLowerCase does not affect the value of the string itself.
    *
    * @signature function()
    * @return {String} The new string.
    */
    function toLocaleLowerCase(): String;

   /**
    * The characters within a string are converted to upper case while
    * respecting the current locale.
    * The toUpperCase method returns the value of the string converted to
    * uppercase. toUpperCase does not affect the value of the string itself.
    *
    * @signature function()
    * @return {String} The new string.
    */
    function toLocaleUpperCase(): String;

   /**
     * Call the same method of the qooxdoo super class.
     *
     * @return {var} the return value of the method of the base class.
     */
    @:native("base")
    inline function baseNoArgs(): Dynamic {
        return untyped this.base(untyped __js__('arguments'));
    } 

	
    /**
     * Call the base method of the qooxdoo super class.
     *
     * @param varargs {var} variable number of arguments passed to the overwritten function
     * @return {var} the return value of the method of the base class.
     */
    @:native("base")
    inline function baseArgs(varargs: Rest<Dynamic>): Dynamic {
        return untyped this.base(untyped __js__('arguments'), varargs);
    } 
	
}