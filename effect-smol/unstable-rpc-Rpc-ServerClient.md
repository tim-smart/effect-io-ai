Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.ServerClient

Server-side metadata for the client associated with an RPC request.

**Details**

It stores the client id and request annotations that handlers can read or
extend.

**Signature**

```ts
declare class ServerClient { constructor(id: number) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L204)

Since v4.0.0