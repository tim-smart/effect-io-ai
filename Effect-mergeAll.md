# mergeAll

Merges an `Iterable<Effect<R, E, A>>` to a single effect, working
sequentially.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const mergeAll: {
  <Z, A>(zero: Z, f: (z: Z, a: A) => Z): <R, E>(elements: Iterable<Effect<R, E, A>>) => Effect<R, E, Z>
  <R, E, Z, A>(elements: Iterable<Effect<R, E, A>>, zero: Z, f: (z: Z, a: A) => Z): Effect<R, E, Z>
}
```
