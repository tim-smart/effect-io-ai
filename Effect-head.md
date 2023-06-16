# head

Returns a successful effect with the head of the collection if the collection
is non-empty, or fails with the error `None` if the collection is empty.

Part of the `Effect` module, imported from `@effect/io/Effect`.

### Signature

```typescript
export declare const head: <R, E, A>(self: Effect<R, E, Iterable<A>>) => Effect<R, Option.Option<E>, A>
```
