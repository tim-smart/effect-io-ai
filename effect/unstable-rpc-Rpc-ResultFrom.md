Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.ResultFrom

Computes the allowed handler result type for an RPC.

**Details**

Streaming RPCs may return a stream or an effect that produces a queue. Other
RPCs return an effect that succeeds with the success value or a deferred
success value.

**Signature**

```ts
type ResultFrom<R, Services> = R extends Rpc<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ? [_Success] extends [RpcSchema.Stream<infer _SA, infer _SE>] ?
      | Stream<
        _SA["Type"],
        _SE["Type"] | _Error["Type"],
        Services
      >
      | Effect<
        Queue.Dequeue<_SA["Type"], _SE["Type"] | _Error["Type"] | Cause.Done>,
        _SE["Type"] | Schema.Schema.Type<_Error>,
        Services
      > :
  Effect<
    _Success["Type"] | Deferred<_Success["Type"], _Error["Type"]>,
    _Error["Type"],
    Services
  > :
  never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Rpc.ts#L730)

Since v4.0.0