# logErrorCause

Logs the specified `Cause` at the error log level.

To import and use `logErrorCause` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.logErrorCause
```

**Signature**

```ts
export declare const logErrorCause: <E>(cause: Cause.Cause<E>) => Sink<never, never, unknown, never, void>
```
