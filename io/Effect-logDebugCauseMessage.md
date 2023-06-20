# logDebugCauseMessage

Logs the specified message and cause at the debug log level.

To import and use `logDebugCauseMessage` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logDebugCauseMessage
```

**Signature**

```ts
export declare const logDebugCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Effect<never, never, void>
```
