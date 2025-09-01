Package: `effect`<br />
Module: `Either`<br />

## Either.flip

Returns an `Either` that swaps the error/success cases. This allows you to
use all methods on the error channel, possibly before flipping back.

**Signature**

```ts
declare const flip: <A, E>(self: Either<A, E>) => Either<E, A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L776)

Since v2.0.0