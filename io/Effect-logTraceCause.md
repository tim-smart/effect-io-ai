# logTraceCause

Logs the specified cause at the trace log level.

To import and use `logTraceCause` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logTraceCause
```

**Signature**

```ts
export declare const logTraceCause: <E>(cause: Cause.Cause<E>) => Effect<never, never, void>
```
