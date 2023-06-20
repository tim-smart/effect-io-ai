# logWarningCauseMessage

Logs the specified message and `Cause` at the warning log level.

To import and use `logWarningCauseMessage` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.logWarningCauseMessage
```

**Signature**

```ts
export declare const logWarningCauseMessage: <E>(
  message: string,
  cause: Cause.Cause<E>
) => Sink<never, never, unknown, never, void>
```
