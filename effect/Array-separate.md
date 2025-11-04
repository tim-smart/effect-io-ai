Package: `effect`<br />
Module: `Array`<br />

## Array.separate

Separates an `Iterable` into two arrays based on a predicate.

**Signature**

```ts
declare const separate: <T extends Iterable<Either.Either<any, any>>>(self: T) => [Array<Either.Either.Left<ReadonlyArray.Infer<T>>>, Array<Either.Either.Right<ReadonlyArray.Infer<T>>>]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2819)

Since v2.0.0