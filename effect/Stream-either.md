Package: `effect`<br />
Module: `Stream`<br />

## Stream.either

Returns a stream whose failures and successes have been lifted into an
`Either`. The resulting stream cannot fail, because the failures have been
exposed as part of the `Either` success case.

**Signature**

```ts
declare const either: <A, E, R>(self: Stream<A, E, R>) => Stream<Either.Either<A, E>, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1451)

Since v2.0.0