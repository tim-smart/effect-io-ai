# logDebugCauseMessage

Logs the specified message and `Cause` at the debug log level.

To import and use `logDebugCauseMessage` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.logDebugCauseMessage
```

**Signature**

```ts
export declare const logDebugCauseMessage: <E>(
  message: string,
  cause: Cause.Cause<E>
) => Sink<never, never, unknown, never, void>
```
