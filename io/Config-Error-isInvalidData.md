# isInvalidData

Returns `true` if the specified `ConfigError` is an `InvalidData`, `false`
otherwise.

To import and use `isInvalidData` from the "Error" module:

```ts
import * as Error from '@effect/io/Config/Error'

// Can be accessed like this
Error.isInvalidData
```

**Signature**

```ts
export declare const isInvalidData: (self: ConfigError) => self is InvalidData
```
