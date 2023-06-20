# logTraceCauseMessage

Logs the specified message and `Cause` at the trace log level.

To import and use `logTraceCauseMessage` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.logTraceCauseMessage
```

**Signature**

```ts
export declare const logTraceCauseMessage: <E>(message: string, cause: Cause.Cause<E>) => Stream<never, never, void>
```
