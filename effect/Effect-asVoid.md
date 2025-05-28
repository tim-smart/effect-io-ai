Package: `effect`<br />
Module: `Effect`<br />

## Effect.asVoid

This function maps the success value of an `Effect` value to `void`. If the
original `Effect` value succeeds, the returned `Effect` value will also
succeed. If the original `Effect` value fails, the returned `Effect` value
will fail with the same error.

**Signature**

```ts
declare const asVoid: <A, E, R>(self: Effect<A, E, R>) => Effect<void, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L5076)

Since v2.0.0