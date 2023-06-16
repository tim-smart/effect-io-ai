# someWith

Perfoms the specified operation while "zoomed in" on the `Some` case of an
`Option`.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.someWith`.

### Signature

```typescript
export declare const someWith: {
  <R, E, A, R1, E1, A1>(f: (effect: Effect<R, Option.Option<E>, A>) => Effect<R1, Option.Option<E1>, A1>): (
    self: Effect<R, E, Option.Option<A>>
  ) => Effect<R | R1, E | E1, Option.Option<A1>>
  <R, E, A, R1, E1, A1>(
    self: Effect<R, E, Option.Option<A>>,
    f: (effect: Effect<R, Option.Option<E>, A>) => Effect<R1, Option.Option<E1>, A1>
  ): Effect<R | R1, E | E1, Option.Option<A1>>
}
```
