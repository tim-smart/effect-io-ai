# filter

Filters the collection using the specified effectful predicate.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const filter: {
  <A, R, E>(f: (a: A) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, A[]>
  <A, R, E>(elements: Iterable<A>, f: (a: A) => Effect<R, E, boolean>): Effect<R, E, A[]>
}
```
