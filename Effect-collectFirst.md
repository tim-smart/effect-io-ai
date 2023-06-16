# collectFirst

Collects the first element of the `Collection<A>` for which the effectual
function `f` returns `Some`.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const collectFirst: {
  <R, E, A, B>(f: (a: A) => Effect<R, E, Option.Option<B>>): (elements: Iterable<A>) => Effect<R, E, Option.Option<B>>
  <R, E, A, B>(elements: Iterable<A>, f: (a: A) => Effect<R, E, Option.Option<B>>): Effect<R, E, Option.Option<B>>
}
```
