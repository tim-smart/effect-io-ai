# logTraceCause

Logs the specified `Cause` at the trace log level.

To import and use `logTraceCause` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.logTraceCause
```

**Signature**

```ts
export declare const logTraceCause: <E>(cause: Cause.Cause<E>) => Stream<never, never, void>
```
