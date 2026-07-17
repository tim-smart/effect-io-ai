Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.ServerClient

Represents server-side metadata for the client associated with an RPC request.

**When to use**

Use to inspect or annotate the connected client while handling an RPC request
on the server.

**Details**

It stores the client id and request annotations that handlers can read or
extend.

**Signature**

```ts
declare class ServerClient { constructor(id: number) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Rpc.ts#L187)

Since v4.0.0