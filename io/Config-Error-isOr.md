# isOr

Returns `true` if the specified `ConfigError` is an `Or`, `false` otherwise.

To import and use `isOr` from the "Error" module:

```ts
import * as Error from '@effect/io/Config/Error'

// Can be accessed like this
Error.isOr
```

**Signature**

```ts
export declare const isOr: (self: ConfigError) => self is Or
```
