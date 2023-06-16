# forAll

Determines whether all elements of the `Collection<A>` satisfies the effectual
predicate `f`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const forAll: {
  <R, E, A>(f: (a: A) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, boolean>
  <R, E, A>(elements: Iterable<A>, f: (a: A) => Effect<R, E, boolean>): Effect<R, E, boolean>
}
```
