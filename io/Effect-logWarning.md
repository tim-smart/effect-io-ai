# logWarning

Logs the specified message at the warning log level.

To import and use `logWarning` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logWarning
```

**Signature**

```ts
export declare const logWarning: (message: string) => Effect<never, never, void>
```
