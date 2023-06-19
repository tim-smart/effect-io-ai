# partition

Partition a stream using a predicate. The first stream will contain all
element evaluated to true and the second one will contain all element
evaluated to false. The faster stream may advance by up to buffer elements
further than the slower one.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const partition: {
  <A>(predicate: Predicate<A>): <R, E>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R, E, readonly [Stream<never, E, A>, Stream<never, E, A>]>
  <R, E, A>(self: Stream<R, E, A>, predicate: Predicate<A>): Effect.Effect<
    Scope.Scope | R,
    E,
    readonly [Stream<never, E, A>, Stream<never, E, A>]
  >
}
```
