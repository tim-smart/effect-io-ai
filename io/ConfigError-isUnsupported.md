# isUnsupported

Returns `true` if the specified `ConfigError` is an `Unsupported`, `false`
otherwise.

To import and use `isUnsupported` from the "ConfigError" module:

```ts
import * as ConfigError from '@effect/io/ConfigError'

// Can be accessed like this
ConfigError.isUnsupported
```

**Signature**

```ts
export declare const isUnsupported: (self: ConfigError) => self is Unsupported
```
