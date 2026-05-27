Package: `effect`<br />
Module: `RpcClient`<br />

## RpcClient.RpcClient.Flat

Builds a flattened RPC client function that accepts an RPC tag and payload,
returning the corresponding `Effect` or `Stream` for that RPC.

**Signature**

```ts
type Flat<Rpcs, E> = <
    const Tag extends Rpcs["_tag"],
    const AsQueue extends boolean = false,
    const Discard = false
  >(
    tag: Tag,
    payload: Rpc.PayloadConstructor<Rpc.ExtractTag<Rpcs, Tag>>,
    options?: Rpc.Success<Rpc.ExtractTag<Rpcs, Tag>> extends Stream.Stream<infer _A, infer _E, infer _R> ? {
        readonly asQueue?: AsQueue | undefined
        readonly streamBufferSize?: number | undefined
        readonly headers?: Headers.Input | undefined
        readonly context?: Context.Context<never> | undefined
      } :
      {
        readonly headers?: Headers.Input | undefined
        readonly context?: Context.Context<never> | undefined
        readonly discard?: Discard | undefined
      }
  ) => Rpc.ExtractTag<Rpcs, Tag> extends Rpc.Rpc<
    infer _Tag,
    infer _Payload,
    infer _Success,
    infer _Error,
    infer _Middleware,
    infer _Requires
  > ? [_Success] extends [RpcSchema.Stream<infer _A, infer _E>] ? AsQueue extends true ? Effect.Effect<
          Queue.Dequeue<
            _A["Type"],
            _E["Type"] | _Error["Type"] | E | _Middleware["error"]["Type"] | _Middleware["~ClientError"]
          >,
          never,
          | Scope.Scope
          | _Payload["EncodingServices"]
          | _Success["DecodingServices"]
          | _Error["DecodingServices"]
          | _Middleware["error"]["DecodingServices"]
        >
      : Stream.Stream<
        _A["Type"],
        _E["Type"] | _Error["Type"] | E | _Middleware["error"]["Type"] | _Middleware["~ClientError"],
        | _Payload["EncodingServices"]
        | _Success["DecodingServices"]
        | _Error["DecodingServices"]
        | _Middleware["error"]["DecodingServices"]
      >
    : Effect.Effect<
      Discard extends true ? void : _Success["Type"],
      (Discard extends true ? never : _Error["Type"]) | E | _Middleware["error"]["Type"] | _Middleware["~ClientError"],
      | _Payload["EncodingServices"]
      | _Success["DecodingServices"]
      | _Error["DecodingServices"]
      | _Middleware["error"]["DecodingServices"]
    > :
    never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcClient.ts#L168)

Since v4.0.0