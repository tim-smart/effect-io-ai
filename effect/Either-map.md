Package: `effect`<br />
Module: `Either`<br />

## Either.map

Maps the `Right` side of an `Either` value to a new `Either` value.

**Signature**

```ts
declare const map: { <R, R2>(f: (right: R) => R2): <L>(self: Either<R, L>) => Either<R2, L>; <R, L, R2>(self: Either<R, L>, f: (right: R) => R2): Either<R2, L>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L365)

Since v2.0.0