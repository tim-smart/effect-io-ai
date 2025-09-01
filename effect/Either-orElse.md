Package: `effect`<br />
Module: `Either`<br />

## Either.orElse

Returns `self` if it is a `Right` or `that` otherwise.

**Signature**

```ts
declare const orElse: { <E, A2, E2>(that: (left: E) => Either<A2, E2>): <A>(self: Either<A, E>) => Either<A | A2, E2>; <A, E, A2, E2>(self: Either<A, E>, that: (left: E) => Either<A2, E2>): Either<A | A2, E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L634)

Since v2.0.0