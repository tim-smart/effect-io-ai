# reduceRight

Folds an `Iterable<A>` using an effectual function f, working sequentially from left to right.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.reduceRight`.

### Signature

```typescript
export declare const reduceRight: {
  <A, Z, R, E>(zero: Z, f: (a: A, z: Z) => Effect<R, E, Z>): (elements: Iterable<A>) => Effect<R, E, Z>
  <A, Z, R, E>(elements: Iterable<A>, zero: Z, f: (a: A, z: Z) => Effect<R, E, Z>): Effect<R, E, Z>
}
```
