# isOr

Returns `true` if the specified `ConfigError` is an `Or`, `false` otherwise.

To import and use `isOr` from the "ConfigError" module:

ts
import \* as ConfigError from "effect/ConfigError"
// Can be accessed like this
ConfigError.isOr
undefined

**Signature**

```ts
export declare const isOr: (self: ConfigError) => self is Or
```
