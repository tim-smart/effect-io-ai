# logError

Logs the specified message at the error log level.

To import and use `logError` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logError
```

**Signature**

```ts
export declare const logError: (message: string) => Effect<never, never, void>
```
