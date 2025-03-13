Package: `effect`<br />
Module: `Either`<br />

## Either.flip

Returns an `Either` that swaps the error/success cases. This allows you to
use all methods on the error channel, possibly before flipping back.

**Signature**

```ts
declare const flip: <R, L>(self: Either<R, L>) => Either<L, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L780)

Since v2.0.0