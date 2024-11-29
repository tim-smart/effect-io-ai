# isMissingDataOnly

Returns `true` if the specified `ConfigError` contains only `MissingData` errors, `false` otherwise.

To import and use `isMissingDataOnly` from the "ConfigError" module:

ts
import \* as ConfigError from "effect/ConfigError"
// Can be accessed like this
ConfigError.isMissingDataOnly
undefined

**Signature**

```ts
export declare const isMissingDataOnly: (self: ConfigError) => boolean
```
