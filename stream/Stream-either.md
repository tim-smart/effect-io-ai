# either

Returns a stream whose failures and successes have been lifted into an
`Either`. The resulting stream cannot fail, because the failures have been
exposed as part of the `Either` success case.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const either: <R, E, A>(self: Stream<R, E, A>) => Stream<R, never, Either.Either<E, A>>
```
