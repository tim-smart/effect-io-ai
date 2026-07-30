Package: `effect`<br />
Module: `STM`<br />

## STM.commit

Commits this transaction atomically.

**Signature**

```ts
declare const commit: <A, E, R>(self: STM<A, E, R>) => Effect.Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L424)

Since v2.0.0