# logInfoCauseMessage

Logs the specified message and `Cause` at the info log level.

To import and use `logInfoCauseMessage` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.logInfoCauseMessage
```

**Signature**

```ts
export declare const logInfoCauseMessage: <E>(
  message: string,
  cause: Cause.Cause<E>
) => Sink<never, never, unknown, never, void>
```
