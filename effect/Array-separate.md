Package: `effect`<br />
Module: `Array`<br />

## Array.separate

Separates an `Iterable` into two arrays based on a predicate.

**Signature**

```ts
declare const separate: <T extends Iterable<Either<any, any>>>(self: T) => [Array<Either.Left<ReadonlyArray.Infer<T>>>, Array<Either.Right<ReadonlyArray.Infer<T>>>]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2656)

Since v2.0.0