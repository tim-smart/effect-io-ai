# dropUntil

Drops all elements until the effectful predicate returns true.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const dropUntil: {
  <A, R, E>(predicate: (a: A) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, A[]>
  <A, R, E>(elements: Iterable<A>, predicate: (a: A) => Effect<R, E, boolean>): Effect<R, E, A[]>
}
```
