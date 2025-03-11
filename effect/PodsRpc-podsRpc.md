## podsRpc

Given a function that resolves an RPC client, constructs a Pods service that uses RPC to communicate

**Signature**

```ts
declare const podsRpc: <R>(buildClient: (podAddress: PodAddress.PodAddress) => RpcResolver.Client<RequestResolver.RequestResolver<Rpc.Request<ShardingServiceRpc.ShardingServiceRpcRequest>, never>>) => Layer.Layer<Pods.Pods, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster-node/src/PodsRpc.ts#L25)

Since v1.0.0