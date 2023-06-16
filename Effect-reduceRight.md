# reduceRight

Folds an `Iterable<A>` using an effectual function f, working sequentially from left to right.

Part of the `Effect` module, imported from `@effect/io/Effect`.

**Signature**

```ts
export declare const reduceRight: {
  <A, Z, R, E>(zero: Z, f: (a: A, z: Z) => Effect<R, E, Z>): (elements: Iterable<A>) => Effect<R, E, Z>
  <A, Z, R, E>(elements: Iterable<A>, zero: Z, f: (a: A, z: Z) => Effect<R, E, Z>): Effect<R, E, Z>
}
```
