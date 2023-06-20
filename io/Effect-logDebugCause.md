# logDebugCause

Logs the specified cause at the debug log level.

To import and use `logDebugCause` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logDebugCause
```

**Signature**

```ts
export declare const logDebugCause: <E>(cause: Cause.Cause<E>) => Effect<never, never, void>
```
