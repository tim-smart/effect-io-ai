# isInvalidData

Returns `true` if the specified `ConfigError` is an `InvalidData`, `false`
otherwise.

To import and use `isInvalidData` from the "ConfigError" module:

```ts
import * as ConfigError from "effect/ConfigError"
// Can be accessed like this
ConfigError.isInvalidData
```

**Signature**

```ts
export declare const isInvalidData: (self: ConfigError) => self is InvalidData
```
