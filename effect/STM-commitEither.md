Package: `effect`<br />
Module: `STM`<br />

## STM.commitEither

Commits this transaction atomically, regardless of whether the transaction
is a success or a failure.

**Signature**

```ts
declare const commitEither: <A, E, R>(self: STM<A, E, R>) => Effect.Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L433)

Since v2.0.0