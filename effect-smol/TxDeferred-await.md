Package: `effect`<br />
Module: `TxDeferred`<br />

## TxDeferred.await

Reads the deferred value. Retries the transaction if the deferred has not
been completed yet.

**Signature**

```ts
declare const await: <A, E>(self: TxDeferred<A, E>) => Effect.Effect<A, E, Effect.Transaction>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxDeferred.ts#L136)

Since v4.0.0