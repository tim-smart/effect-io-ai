Package: `effect`<br />
Module: `TxDeferred`<br />

## TxDeferred.await

Reads the deferred value. Retries the transaction if the deferred has not
been completed yet.

**When to use**

Use to read the success value of a `TxDeferred` while retrying until the
deferred is completed.

**See**

- `poll` for inspecting the current completion state without retrying the transaction

**Signature**

```ts
declare const await: <A, E>(self: TxDeferred<A, E>) => Effect.Effect<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxDeferred.ts#L178)

Since v4.0.0