# uncause

When this effect succeeds with a cause, then this method returns a new
effect that either fails with the cause that this effect succeeded with, or
succeeds with unit, depending on whether the cause is empty.

This operation is the opposite of `cause`.

To import and use `uncause` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.uncause
```

**Signature**

```ts
export declare const uncause: <R, E>(self: Effect<R, never, Cause.Cause<E>>) => Effect<R, E, void>
```
