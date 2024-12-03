# podsRpc

Given a function that resolves an RPC client, constructs a Pods service that uses RPC to communicate

To import and use `podsRpc` from the "PodsRpc" module:

```ts
import * as PodsRpc from "@effect/cluster-node/PodsRpc"
// Can be accessed like this
PodsRpc.podsRpc
```

**Signature**

```ts
export declare function podsRpc<R>(
  buildClient: (
    podAddress: PodAddress.PodAddress
  ) => RpcResolver.Client<
    RequestResolver.RequestResolver<Rpc.Request<ShardingServiceRpc.ShardingServiceRpcRequest>, never>
  >
): Layer.Layer<Pods.Pods, never, R>
```
