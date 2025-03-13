Package: `effect`<br />
Module: `Either`<br />

## Either.orElse

Returns `self` if it is a `Right` or `that` otherwise.

**Signature**

```ts
declare const orElse: { <L, R2, L2>(that: (left: L) => Either<R2, L2>): <R>(self: Either<R, L>) => Either<R | R2, L2>; <R, L, R2, L2>(self: Either<R, L>, that: (left: L) => Either<R2, L2>): Either<R | R2, L2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L638)

Since v2.0.0