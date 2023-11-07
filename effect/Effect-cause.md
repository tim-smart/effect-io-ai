# cause

Returns an effect that succeeds with the cause of failure of this effect,
or `Cause.empty` if the effect did succeed.

To import and use `cause` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.cause
```

**Signature**

```ts
export declare const cause: <R, E, A>(self: Effect<R, E, A>) => Effect<R, never, Cause.Cause<E>>
```
