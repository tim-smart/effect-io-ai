# reduceRight

Folds an `Iterable<A>` using an effectual function f, working sequentially from left to right.

To import and use `reduceRight` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.reduceRight
```

**Signature**

```ts
export declare const reduceRight: {
  <A, Z, R, E>(zero: Z, f: (a: A, z: Z, i: number) => Effect<Z, E, R>): (elements: Iterable<A>) => Effect<Z, E, R>
  <A, Z, R, E>(elements: Iterable<A>, zero: Z, f: (a: A, z: Z, i: number) => Effect<Z, E, R>): Effect<Z, E, R>
}
```
