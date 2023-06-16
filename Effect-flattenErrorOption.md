# flattenErrorOption

Unwraps the optional error, defaulting to the provided value.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const flattenErrorOption: {
  <E1>(fallback: E1): <R, E, A>(self: Effect<R, Option.Option<E>, A>) => Effect<R, E1 | E, A>
  <R, E, A, E1>(self: Effect<R, Option.Option<E>, A>, fallback: E1): Effect<R, E | E1, A>
}
```
