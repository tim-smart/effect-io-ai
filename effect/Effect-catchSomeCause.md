# catchSomeCause

Recovers from some or all of the error cases with provided cause.

To import and use `catchSomeCause` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.catchSomeCause
```

**Signature**

```ts
export declare const catchSomeCause: {
  <E, A2, E2, R2>(
    f: (cause: Cause.Cause<NoInfer<E>>) => Option.Option<Effect<A2, E2, R2>>
  ): <A, R>(self: Effect<A, E, R>) => Effect<A2 | A, E | E2, R2 | R>
  <A, E, R, A2, E2, R2>(
    self: Effect<A, E, R>,
    f: (cause: Cause.Cause<NoInfer<E>>) => Option.Option<Effect<A2, E2, R2>>
  ): Effect<A2 | A, E | E2, R2 | R>
}
```
