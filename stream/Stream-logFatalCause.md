# logFatalCause

Logs the specified `Cause` at the fatal log level.

To import and use `logFatalCause` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.logFatalCause
```

**Signature**

```ts
export declare const logFatalCause: <E>(cause: Cause.Cause<E>) => Stream<never, never, void>
```
