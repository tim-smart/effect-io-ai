# orElseOptional

Returns an effect that will produce the value of this effect, unless it
fails with the `None` value, in which case it will produce the value of
the specified effect.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const orElseOptional: {
  <R, E, A, R2, E2, A2>(that: LazyArg<Effect<R2, Option.Option<E2>, A2>>): (
    self: Effect<R, Option.Option<E>, A>
  ) => Effect<R | R2, Option.Option<E | E2>, A | A2>
  <R, E, A, R2, E2, A2>(self: Effect<R, Option.Option<E>, A>, that: LazyArg<Effect<R2, Option.Option<E2>, A2>>): Effect<
    R | R2,
    Option.Option<E | E2>,
    A | A2
  >
}
```
