# logDebugCauseMessage

Logs the specified message and `Cause` at the debug log level.

To import and use `logDebugCauseMessage` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.logDebugCauseMessage
```

**Signature**

```ts
export declare const logDebugCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Stream<never, never, void>
```
