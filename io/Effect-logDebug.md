# logDebug

Logs the specified message at the debug log level.

To import and use `logDebug` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logDebug
```

**Signature**

```ts
export declare const logDebug: (message: string) => Effect<never, never, void>
```
