# isAnd

Returns `true` if the specified `ConfigError` is an `And`, `false` otherwise.

To import and use `isAnd` from the "Error" module:

```ts
import * as Error from '@effect/io/Config/Error'

// Can be accessed like this
Error.isAnd
```

**Signature**

```ts
export declare const isAnd: (self: ConfigError) => self is And
```
