# isSourceUnavailable

Returns `true` if the specified `ConfigError` is a `SourceUnavailable`,
`false` otherwise.

To import and use `isSourceUnavailable` from the "Error" module:

```ts
import * as Error from '@effect/io/Config/Error'

// Can be accessed like this
Error.isSourceUnavailable
```

**Signature**

```ts
export declare const isSourceUnavailable: (self: ConfigError) => self is SourceUnavailable
```
