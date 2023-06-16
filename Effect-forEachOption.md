# forEachOption

Applies the function `f` if the argument is non-empty and returns the
results in a new `Option<B>`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const forEachOption: {
  <R, E, A, B>(f: (a: A) => Effect<R, E, B>): (option: Option.Option<A>) => Effect<R, E, Option.Option<B>>
  <R, E, A, B>(option: Option.Option<A>, f: (a: A) => Effect<R, E, B>): Effect<R, E, Option.Option<B>>
}
```
