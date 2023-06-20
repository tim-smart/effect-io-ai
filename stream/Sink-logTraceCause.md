# logTraceCause

Logs the specified `Cause` at the trace log level.

To import and use `logTraceCause` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.logTraceCause
```

**Signature**

```ts
export declare const logTraceCause: <E>(cause: Cause.Cause<E>) => Sink<never, never, unknown, never, void>
```
