# logErrorCause

Logs the specified cause at the error log level.

To import and use `logErrorCause` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.logErrorCause
```

**Signature**

```ts
export declare const logErrorCause: <E>(cause: Cause.Cause<E>) => Effect<never, never, void>
```
