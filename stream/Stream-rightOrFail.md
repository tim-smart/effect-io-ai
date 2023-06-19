# rightOrFail

Fails with given error 'e' if value is `Left`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const rightOrFail: {
  <E2>(error: LazyArg<E2>): <R, E, A, A2>(self: Stream<R, E, Either.Either<A, A2>>) => Stream<R, E2 | E, A2>
  <R, E, A, A2, E2>(self: Stream<R, E, Either.Either<A, A2>>, error: LazyArg<E2>): Stream<R, E | E2, A2>
}
```
