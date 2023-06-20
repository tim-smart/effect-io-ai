# logFatalCause

Logs the specified cause at the fatal log level.

To import and use `logFatalCause` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logFatalCause
```

**Signature**

```ts
export declare const logFatalCause: <E>(cause: Cause.Cause<E>) => Effect<never, never, void>
```
