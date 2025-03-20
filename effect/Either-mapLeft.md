Package: `effect`<br />
Module: `Either`<br />

## Either.mapLeft

Maps the `Left` side of an `Either` value to a new `Either` value.

**Signature**

```ts
declare const mapLeft: { <L, L2>(f: (left: L) => L2): <R>(self: Either<R, L>) => Either<R, L2>; <R, L, L2>(self: Either<R, L>, f: (left: L) => L2): Either<R, L2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L350)

Since v2.0.0