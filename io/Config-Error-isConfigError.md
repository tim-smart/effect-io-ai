# isConfigError

Returns `true` if the specified value is a `ConfigError`, `false` otherwise.

To import and use `isConfigError` from the "Error" module:

```ts
import * as Error from '@effect/io/Config/Error'

// Can be accessed like this
Error.isConfigError
```

**Signature**

```ts
export declare const isConfigError: (u: unknown) => u is ConfigError
```
