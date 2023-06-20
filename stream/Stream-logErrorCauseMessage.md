# logErrorCauseMessage

Logs the specified message and `Cause` at the error log level.

To import and use `logErrorCauseMessage` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.logErrorCauseMessage
```

**Signature**

```ts
export declare const logErrorCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Stream<never, never, void>
```
