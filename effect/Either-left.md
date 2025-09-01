Package: `effect`<br />
Module: `Either`<br />

## Either.left

Constructs a new `Either` holding a `Left` value. This usually represents a failure, due to the right-bias of this
structure.

**Signature**

```ts
declare const left: <E>(e: E) => Either<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Either.ts#L138)

Since v2.0.0