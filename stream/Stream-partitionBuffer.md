# partitionBuffer

Like `partition`, but with a configurable `bufferSize` parameter.

To import and use `partitionBuffer` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.partitionBuffer
```

**Signature**

```ts
export declare const partitionBuffer: {
  <A>(predicate: Predicate<A>, bufferSize: number): <R, E>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R, E, readonly [Stream<never, E, A>, Stream<never, E, A>]>
  <R, E, A>(self: Stream<R, E, A>, predicate: Predicate<A>, bufferSize: number): Effect.Effect<
    Scope.Scope | R,
    E,
    readonly [Stream<never, E, A>, Stream<never, E, A>]
  >
}
```
