# logInfoCause

Logs the specified `Cause` at the info log level.

To import and use `logInfoCause` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.logInfoCause
```

**Signature**

```ts
export declare const logInfoCause: <E>(cause: Cause.Cause<E>) => Stream<never, never, void>
```
