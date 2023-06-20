# logDebugCause

Logs the specified `Cause` at the debug log level.

To import and use `logDebugCause` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.logDebugCause
```

**Signature**

```ts
export declare const logDebugCause: <E>(cause: Cause.Cause<E>) => Stream<never, never, void>
```
