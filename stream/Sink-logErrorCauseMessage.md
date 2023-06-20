# logErrorCauseMessage

Logs the specified message and `Cause` at the error log level.

To import and use `logErrorCauseMessage` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.logErrorCauseMessage
```

**Signature**

```ts
export declare const logErrorCauseMessage: <E>(
  message: string,
  cause: Cause.Cause<E>
) => Sink<never, never, unknown, never, void>
```
