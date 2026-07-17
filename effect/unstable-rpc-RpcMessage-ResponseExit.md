Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.ResponseExit

The decoded terminal response for a request, carrying the typed `Rpc.Exit`
for the RPC.

**Signature**

```ts
export interface ResponseExit<A extends Rpc.Any> {
  readonly _tag: "Exit"
  readonly clientId: number
  readonly requestId: RequestId
  readonly exit: Rpc.Exit<A>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RpcMessage.ts#L307)

Since v4.0.0