Package: `effect`<br />
Module: `Utils`<br />

## Utils.withRunClient

Builds an RPC client protocol service that tracks active client IDs and
buffers server responses per client until that client's `run` handler is
installed.

**Signature**

```ts
declare const withRunClient: <EX, RX>(f: (write: (clientId: number, response: FromServerEncoded) => Effect.Effect<void>, clientIds: ReadonlySet<number>) => Effect.Effect<Omit<Protocol["Service"], "run">, EX, RX>) => Effect.Effect<Protocol["Service"], EX, RX>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Utils.ts#L84)

Since v4.0.0