# zipParRight

Returns an effect that executes both this effect and the specified effect,
in parallel, returning result of the provided effect. If either side fails,
then the other side will be interrupted.

To import and use `zipParRight` from the "Effect" module:

```ts
import * as Effect from '@effect/io/Effect'

// Can be accessed like this
Effect.zipParRight
```

**Signature**

```ts
export declare const zipParRight: {
  <R2, E2, A2>(that: Effect<R2, E2, A2>): <R, E, A>(self: Effect<R, E, A>) => Effect<R2 | R, E2 | E, A2>
  <R, E, A, R2, E2, A2>(self: Effect<R, E, A>, that: Effect<R2, E2, A2>): Effect<R | R2, E | E2, A2>
}
```