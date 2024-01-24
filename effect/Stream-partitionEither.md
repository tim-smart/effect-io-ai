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
    predicate: (a: NoInfer<A>) => Effect.Effect<R2, E2, Either.Either<A2, A3>>,
    options?: { readonly bufferSize?: number | undefined }
  ): <R, E>(
    self: Stream<R, E, A>
  ) => Effect.Effect<Scope.Scope | R2 | R, E2 | E, [left: Stream<never, E2 | E, A2>, right: Stream<never, E2 | E, A3>]>
  <R, E, A, R2, E2, A2, A3>(
    self: Stream<R, E, A>,
    predicate: (a: A) => Effect.Effect<R2, E2, Either.Either<A2, A3>>,
    options?: { readonly bufferSize?: number | undefined }
  ): Effect.Effect<Scope.Scope | R | R2, E | E2, [left: Stream<never, E | E2, A2>, right: Stream<never, E | E2, A3>]>
}
```
