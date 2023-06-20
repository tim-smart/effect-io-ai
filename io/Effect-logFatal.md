# logFatal

Logs the specified message at the fatal log level.

To import and use `logFatal` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logFatal
```

**Signature**

```ts
export declare const logFatal: (message: string) => Effect<never, never, void>
```
