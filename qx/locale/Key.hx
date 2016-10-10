package qx.locale;

/**
 * Static class, which contains functionality to localize the names of keyboard keys.
 */
@:native("qx.locale.Key")
extern class Key
{

	/**
     * Return localized name of a key identifier
     * {@link qx.event.type.KeySequence}
     *
     * @param size {String} format of the key identifier.
     *       Possible values: "short", "full"
     * @param keyIdentifier {String} key identifier to translate {@link qx.event.type.KeySequence}
     * @param locale {String} optional locale to be used
     * @return {String} localized key name
     */
	 static function getKeyName(size: String, keyIdentifier: String, ?locale: String): String;
	
}