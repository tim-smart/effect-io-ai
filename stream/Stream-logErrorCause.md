# logErrorCause

Logs the specified `Cause` at the error log level.

To import and use `logErrorCause` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.logErrorCause
```

**Signature**

```ts
export declare const logErrorCause: <E>(cause: Cause.Cause<E>) => Stream<never, never, void>
```
