# continueOrFail

Fail with the specifed `error` if the supplied partial function does not
match, otherwise continue with the returned value.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const continueOrFail: {
  <E1, A, A2>(error: LazyArg<E1>, pf: (a: A) => Option.Option<A2>): <R, E>(
    self: Effect<R, E, A>
  ) => Effect<R, E1 | E, A2>
  <R, E, A, E1, A2>(self: Effect<R, E, A>, error: LazyArg<E1>, pf: (a: A) => Option.Option<A2>): Effect<R, E | E1, A2>
}
```
