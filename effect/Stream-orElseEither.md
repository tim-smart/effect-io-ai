Package: `effect`<br />
Module: `Stream`<br />

## Stream.orElseEither

Switches to the provided stream in case this one fails with a typed error.

See also `Stream.catchAll`.

**Signature**

```ts
declare const orElseEither: { <A2, E2, R2>(that: LazyArg<Stream<A2, E2, R2>>): <A, E, R>(self: Stream<A, E, R>) => Stream<Either.Either<A2, A>, E2, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: LazyArg<Stream<A2, E2, R2>>): Stream<Either.Either<A2, A>, E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3292)

Since v2.0.0