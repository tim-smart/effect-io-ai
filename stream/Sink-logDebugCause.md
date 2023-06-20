# logDebugCause

Logs the specified `Cause` at the debug log level.

To import and use `logDebugCause` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.logDebugCause
```

**Signature**

```ts
export declare const logDebugCause: <E>(cause: Cause.Cause<E>) => Sink<never, never, unknown, never, void>
```
