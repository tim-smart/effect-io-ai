# someOrElseEffect

Extracts the optional value, or executes the given 'orElse' effect.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const someOrElseEffect: {
  <R2, E2, A2>(orElse: LazyArg<Effect<R2, E2, A2>>): <R, E, A>(
    self: Effect<R, E, Option.Option<A>>
  ) => Effect<R2 | R, E2 | E, A2 | A>
  <R, E, A, R2, E2, A2>(self: Effect<R, E, Option.Option<A>>, orElse: LazyArg<Effect<R2, E2, A2>>): Effect<
    R | R2,
    E | E2,
    A | A2
  >
}
```
