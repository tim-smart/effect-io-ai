# isSourceUnavailable

Returns `true` if the specified `ConfigError` is a `SourceUnavailable`,
`false` otherwise.

To import and use `isSourceUnavailable` from the "ConfigError" module:

```ts
import * as ConfigError from '@effect/io/ConfigError'

// Can be accessed like this
ConfigError.isSourceUnavailable
```

**Signature**

```ts
export declare const isSourceUnavailable: (self: ConfigError) => self is SourceUnavailable
```
