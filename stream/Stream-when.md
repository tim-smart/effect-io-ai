# when

Returns the specified stream if the given condition is satisfied, otherwise
returns an empty stream.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const when: {
  (predicate: LazyArg<boolean>): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A>(self: Stream<R, E, A>, predicate: LazyArg<boolean>): Stream<R, E, A>
}
```
