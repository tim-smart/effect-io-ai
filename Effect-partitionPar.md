# partitionPar

Feeds elements of type `A` to a function `f` that returns an effect.
Collects all successes and failures in parallel and returns the result as a
tuple.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.partitionPar`.

### Signature

```typescript
export declare const partitionPar: {
  <R, E, A, B>(f: (a: A) => Effect<R, E, B>): (elements: Iterable<A>) => Effect<R, never, [E[], B[]]>
  <R, E, A, B>(elements: Iterable<A>, f: (a: A) => Effect<R, E, B>): Effect<R, never, [E[], B[]]>
}
```
