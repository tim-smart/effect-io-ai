# isMissingData

Returns `true` if the specified `ConfigError` is an `MissingData`, `false`
otherwise.

To import and use `isMissingData` from the "Error" module:

```ts
import * as Error from '@effect/io/Config/Error'

// Can be accessed like this
Error.isMissingData
```

**Signature**

```ts
export declare const isMissingData: (self: ConfigError) => self is MissingData
```
