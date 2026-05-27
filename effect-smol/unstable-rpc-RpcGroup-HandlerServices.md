Package: `effect`<br />
Module: `RpcGroup`<br />

## RpcGroup.HandlerServices

Computes the services required by a single RPC handler, excluding services
provided by middleware and `Scope` where the server supplies it.

**Signature**

```ts
type HandlerServices<Rpcs, K, Handler> = true extends
  Rpc.IsStream<Rpcs, K> ? Handler extends (...args: any) =>
    | Stream.Stream<infer _A, infer _E, infer _R>
    | Rpc.Wrapper<Stream.Stream<infer _A, infer _E, infer _R>>
    | Effect.Effect<
      Queue.Dequeue<infer _A, infer _E | Cause.Done>,
      infer _EX,
      infer _R
    >
    | Rpc.Wrapper<
      Effect.Effect<
        Queue.Dequeue<infer _A, infer _E | Cause.Done>,
        infer _EX,
        infer _R
      >
    > ? Exclude<Rpc.ExcludeProvides<_R, Rpcs, K>, Scope> | Rpc.ExtractRequires<Rpcs, K> :
  never :
  Handler extends (
    ...args: any
  ) => Effect.Effect<infer _A, infer _E, infer _R> | Rpc.Wrapper<Effect.Effect<infer _A, infer _E, infer _R>> ?
    Exclude<Rpc.ExcludeProvides<_R, Rpcs, K>, Scope> | Rpc.ExtractRequires<Rpcs, K>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcGroup.ts#L244)

Since v4.0.0