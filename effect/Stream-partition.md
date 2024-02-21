# partition

Partition a stream using a predicate. The first stream will contain all
element evaluated to true and the second one will contain all element
evaluated to false. The faster stream may advance by up to buffer elements
further than the slower one.

To import and use `partition` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.partition
```

**Signature**

```ts
export declare const partition: {
  <C extends A, B extends A, A = C>(
    refinement: Refinement<NoInfer<A>, B>,
    options?: { bufferSize?: number | undefined } | undefined
  ): <E, R>(
    self: Stream<C, E, R>
  ) => Effect.Effect<[excluded: Stream<Exclude<C, B>, E, never>, satisfying: Stream<B, E, never>], E, Scope.Scope | R>
  <A>(
    predicate: Predicate<A>,
    options?: { bufferSize?: number | undefined } | undefined
  ): <E, R>(
    self: Stream<A, E, R>
  ) => Effect.Effect<[excluded: Stream<A, E, never>, satisfying: Stream<A, E, never>], E, Scope.Scope | R>
  <C extends A, E, R, B extends A, A = C>(
    self: Stream<C, E, R>,
    refinement: Refinement<A, B>,
    options?: { bufferSize?: number | undefined } | undefined
  ): Effect.Effect<[excluded: Stream<Exclude<C, B>, E, never>, satisfying: Stream<B, E, never>], E, Scope.Scope | R>
  <A, E, R>(
    self: Stream<A, E, R>,
    predicate: Predicate<A>,
    options?: { bufferSize?: number | undefined } | undefined
  ): Effect.Effect<[excluded: Stream<A, E, never>, satisfying: Stream<A, E, never>], E, Scope.Scope | R>
}
```
