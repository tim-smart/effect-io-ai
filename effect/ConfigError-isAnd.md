# isAnd

Returns `true` if the specified `ConfigError` is an `And`, `false` otherwise.

To import and use `isAnd` from the "ConfigError" module:

```ts
import * as ConfigError from 'effect/ConfigError'

// Can be accessed like this
ConfigError.isAnd
```

**Signature**

```ts
export declare const isAnd: (self: ConfigError) => self is And
```
