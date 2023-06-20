# logInfoCauseMessage

Logs the specified message and `Cause` at the info log level.

To import and use `logInfoCauseMessage` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.logInfoCauseMessage
```

**Signature**

```ts
export declare const logInfoCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Stream<never, never, void>
```
