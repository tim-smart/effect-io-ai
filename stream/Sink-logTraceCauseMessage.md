# logTraceCauseMessage

Logs the specified message and `Cause` at the trace log level.

To import and use `logTraceCauseMessage` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.logTraceCauseMessage
```

**Signature**

```ts
export declare const logTraceCauseMessage: <E>(
  message: string,
  cause: Cause.Cause<E>
) => Sink<never, never, unknown, never, void>
```
