Package: `effect`<br />
Module: `Either`<br />

## Either.andThen

Executes a sequence of two `Either`s. The second `Either` can be dependent on the result of the first `Either`.

**Signature**

```ts
declare const andThen: { <R, R2, L2>(f: (right: R) => Either<R2, L2>): <L>(self: Either<R, L>) => Either<R2, L | L2>; <R2, L2>(f: Either<R2, L2>): <L, R1>(self: Either<R1, L>) => Either<R2, L | L2>; <R, R2>(f: (right: R) => R2): <L>(self: Either<R, L>) => Either<R2, L>; <R2>(right: NotFunction<R2>): <R1, L>(self: Either<R1, L>) => Either<R2, L>; <R, L, R2, L2>(self: Either<R, L>, f: (right: R) => Either<R2, L2>): Either<R2, L | L2>; <R, L, R2, L2>(self: Either<R, L>, f: Either<R2, L2>): Either<R2, L | L2>; <R, L, R2>(self: Either<R, L>, f: (right: R) => R2): Either<R2, L>; <R, L, R2>(self: Either<R, L>, f: NotFunction<R2>): Either<R2, L>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L662)

Since v2.0.0