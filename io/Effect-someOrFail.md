# someOrFail

Extracts the optional value, or fails with the given error 'e'.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const someOrFail: {
  <E2>(orFail: LazyArg<E2>): <R, E, A>(self: Effect<R, E, Option.Option<A>>) => Effect<R, E2 | E, A>
  <R, E, A, E2>(self: Effect<R, E, Option.Option<A>>, orFail: LazyArg<E2>): Effect<R, E | E2, A>
}
```
