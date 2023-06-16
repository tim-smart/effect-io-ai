# filterPar

Filters the collection in parallel using the specified effectual predicate.
See `filter` for a sequential version of it.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.filterPar`.

### Signature

```typescript
export declare const filterPar: {
  <A, R, E>(f: (a: A) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, A[]>
  <A, R, E>(elements: Iterable<A>, f: (a: A) => Effect<R, E, boolean>): Effect<R, E, A[]>
}
```
