# filterNot

Filters the collection using the specified effectual predicate, removing
all elements that satisfy the predicate.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const filterNot: {
  <A, R, E>(f: (a: A) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, A[]>
  <A, R, E>(elements: Iterable<A>, f: (a: A) => Effect<R, E, boolean>): Effect<R, E, A[]>
}
```
