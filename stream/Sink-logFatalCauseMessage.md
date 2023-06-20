# logFatalCauseMessage

Logs the specified message and `Cause` at the fatal log level.

To import and use `logFatalCauseMessage` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.logFatalCauseMessage
```

**Signature**

```ts
export declare const logFatalCauseMessage: <E>(
  message: string,
  cause: Cause.Cause<E>
) => Sink<never, never, unknown, never, void>
```
