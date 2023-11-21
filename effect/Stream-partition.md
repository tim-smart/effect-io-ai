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
    refinement: Refinement<A, B>,
    options?: { bufferSize?: number | undefined }
  ): <R, E>(
    self: Stream<R, E, C>
  ) => Effect.Effect<Scope.Scope | R, E, [excluded: Stream<never, E, Exclude<C, B>>, satisfying: Stream<never, E, B>]>
  <A>(
    predicate: Predicate<A>,
    options?: { bufferSize?: number | undefined }
  ): <R, E, B extends A>(
    self: Stream<R, E, B>
  ) => Effect.Effect<Scope.Scope | R, E, [excluded: Stream<never, E, B>, satisfying: Stream<never, E, B>]>
  <R, E, A, B extends A>(
    self: Stream<R, E, A>,
    refinement: Refinement<A, B>,
    options?: { bufferSize?: number | undefined }
  ): Effect.Effect<Scope.Scope | R, E, [excluded: Stream<never, E, Exclude<A, B>>, satisfying: Stream<never, E, B>]>
  <R, E, A>(
    self: Stream<R, E, A>,
    predicate: Predicate<A>,
    options?: { bufferSize?: number | undefined }
  ): Effect.Effect<Scope.Scope | R, E, [excluded: Stream<never, E, A>, satisfying: Stream<never, E, A>]>
}
```
