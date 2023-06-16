# dropWhile

Drops all elements so long as the predicate returns true.

Part of the `Effect` module from the `@effect/io` package. Also known as `Effect.dropWhile`.

### Signature

```typescript
export declare const dropWhile: {
  <R, E, A>(f: (a: A) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, A[]>
  <R, E, A>(elements: Iterable<A>, f: (a: A) => Effect<R, E, boolean>): Effect<R, E, A[]>
}
```
