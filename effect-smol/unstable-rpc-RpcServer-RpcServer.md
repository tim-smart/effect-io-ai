Package: `effect`<br />
Module: `RpcServer`<br />

## RpcServer.RpcServer

The decoded RPC server boundary, accepting client messages for a client id
and allowing that client to be disconnected.

**Signature**

```ts
export interface RpcServer<A extends Rpc.Any> {
  readonly write: (clientId: number, message: FromClient<A>, options?: {
    readonly onRequest?: (<A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>) | undefined
  }) => Effect.Effect<void>
  readonly disconnect: (clientId: number) => Effect.Effect<void>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcServer.ts#L69)

Since v4.0.0