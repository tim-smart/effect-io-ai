# partitionEither

Split a stream by an effectful predicate. The faster stream may advance by
up to buffer elements further than the slower one.

To import and use `partitionEither` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.partitionEither
```

**Signature**

```ts
export declare const partitionEither: {
  <A, R2, E2, A2, A3>(
    predicate: (a: NoInfer<A>) => Effect.Effect<Either.Either<A2, A3>, E2, R2>,
    options?: { readonly bufferSize?: number | undefined } | undefined
  ): <R, E>(
    self: Stream<A, E, R>
  ) => Effect.Effect<[left: Stream<A2, E2 | E, never>, right: Stream<A3, E2 | E, never>], E2 | E, Scope.Scope | R2 | R>
  <R, E, A, R2, E2, A2, A3>(
    self: Stream<A, E, R>,
    predicate: (a: A) => Effect.Effect<Either.Either<A2, A3>, E2, R2>,
    options?: { readonly bufferSize?: number | undefined } | undefined
  ): Effect.Effect<[left: Stream<A2, E | E2, never>, right: Stream<A3, E | E2, never>], E | E2, Scope.Scope | R | R2>
}
```
