# find

Returns the first element that satisfies the effectful predicate.

Part of the `Effect` module from the `@effect/io` package.

### Signature

```typescript
export declare const find: {
  <A, R, E>(f: (a: A) => Effect<R, E, boolean>): (elements: Iterable<A>) => Effect<R, E, Option.Option<A>>
  <A, R, E>(elements: Iterable<A>, f: (a: A) => Effect<R, E, boolean>): Effect<R, E, Option.Option<A>>
}
```
