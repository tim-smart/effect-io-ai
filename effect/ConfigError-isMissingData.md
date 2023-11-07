# isMissingData

Returns `true` if the specified `ConfigError` is an `MissingData`, `false`
otherwise.

To import and use `isMissingData` from the "ConfigError" module:

```ts
import * as ConfigError from 'effect/ConfigError'

// Can be accessed like this
ConfigError.isMissingData
```

**Signature**

```ts
export declare const isMissingData: (self: ConfigError) => self is MissingData
```
