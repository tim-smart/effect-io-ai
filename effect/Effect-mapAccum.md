# mapAccum

Statefully and effectfully maps over the elements of this chunk to produce
new elements.

To import and use `mapAccum` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.mapAccum
```

**Signature**

```ts
export declare const mapAccum: {
  <A, B, R, E, Z>(zero: Z, f: (z: Z, a: A, i: number) => Effect<R, E, readonly [Z, B]>): (
    elements: Iterable<A>
  ) => Effect<R, E, readonly [Z, B[]]>
  <A, B, R, E, Z>(elements: Iterable<A>, zero: Z, f: (z: Z, a: A, i: number) => Effect<R, E, readonly [Z, B]>): Effect<
    R,
    E,
    readonly [Z, B[]]
  >
}
```
