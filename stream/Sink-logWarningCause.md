# logWarningCause

Logs the specified `Cause` at the warning log level.

To import and use `logWarningCause` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.logWarningCause
```

**Signature**

```ts
export declare const logWarningCause: <E>(cause: Cause.Cause<E>) => Sink<never, never, unknown, never, void>
```
