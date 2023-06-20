# logWarningCauseMessage

Logs the specified message and `Cause` at the warning log level.

To import and use `logWarningCauseMessage` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.logWarningCauseMessage
```

**Signature**

```ts
export declare const logWarningCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Stream<never, never, void>
```
