# logWarningCause

Logs the specified `Cause` at the warning log level.

To import and use `logWarningCause` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.logWarningCause
```

**Signature**

```ts
export declare const logWarningCause: <E>(cause: Cause.Cause<E>) => Stream<never, never, void>
```
