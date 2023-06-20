# logInfoCause

Logs the specified `Cause` at the info log level.

To import and use `logInfoCause` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.logInfoCause
```

**Signature**

```ts
export declare const logInfoCause: <E>(cause: Cause.Cause<E>) => Sink<never, never, unknown, never, void>
```
