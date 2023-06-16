# dropWhile

Drops all elements so long as the predicate returns true.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const dropWhile: {
  <R, E, A>(f: (a: A) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, A[]>
  <R, E, A>(elements: Iterable<A>, f: (a: A) => Effect<R, E, boolean>): Effect<R, E, A[]>
}
```
