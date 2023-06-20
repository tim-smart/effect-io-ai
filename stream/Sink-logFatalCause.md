# logFatalCause

Logs the specified `Cause` at the fatal log level.

To import and use `logFatalCause` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.logFatalCause
```

**Signature**

```ts
export declare const logFatalCause: <E>(cause: Cause.Cause<E>) => Sink<never, never, unknown, never, void>
```
