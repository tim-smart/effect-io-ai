Package: `effect`<br />
Module: `RpcWorker`<br />

## RpcWorker.InitialMessage.Encoded

Tagged wire representation of an RPC worker initial message after schema
encoding.

**Signature**

```ts
export interface Encoded {
    readonly _tag: "InitialMessage"
    readonly value: unknown
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcWorker.ts#L60)

Since v4.0.0