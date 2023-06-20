# logFatalCauseMessage

Logs the specified message and `Cause` at the fatal log level.

To import and use `logFatalCauseMessage` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.logFatalCauseMessage
```

**Signature**

```ts
export declare const logFatalCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Stream<never, never, void>
```
