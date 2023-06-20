# isUnsupported

Returns `true` if the specified `ConfigError` is an `Unsupported`, `false`
otherwise.

To import and use `isUnsupported` from the "Error" module:

```ts
import * as Error from '@effect/io/Config/Error'

// Can be accessed like this
Error.isUnsupported
```

**Signature**

```ts
export declare const isUnsupported: (self: ConfigError) => self is Unsupported
```
