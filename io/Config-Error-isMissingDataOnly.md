# isMissingDataOnly

Returns `true` if the specified `ConfigError` contains only `MissingData` errors, `false` otherwise.

To import and use `isMissingDataOnly` from the "Error" module:

```ts
import * as Error from '@effect/io/Config/Error'

// Can be accessed like this
Error.isMissingDataOnly
```

**Signature**

```ts
export declare const isMissingDataOnly: (self: ConfigError) => boolean
```
