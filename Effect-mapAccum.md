# mapAccum

Statefully and effectfully maps over the elements of this chunk to produce
new elements.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.mapAccum`.

### Signature

```typescript
export declare const mapAccum: {
  <A, B, R, E, Z>(zero: Z, f: (z: Z, a: A) => Effect<R, E, readonly [Z, B]>): (
    elements: Iterable<A>
  ) => Effect<R, E, [Z, B[]]>
  <A, B, R, E, Z>(elements: Iterable<A>, zero: Z, f: (z: Z, a: A) => Effect<R, E, readonly [Z, B]>): Effect<
    R,
    E,
    [Z, B[]]
  >
}
```
