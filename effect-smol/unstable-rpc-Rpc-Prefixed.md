Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.Prefixed

Returns an RPC type with the specified string prefix added to its tag while
preserving its payload, success, error, middleware, and requirements.

**Signature**

```ts
type Prefixed<Rpcs, Prefix> = Rpcs extends Rpc<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ? Rpc<
    `${Prefix}${_Tag}`,
    _Payload,
    _Success,
    _Error,
    _Middleware,
    _Requires
  >
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L790)

Since v4.0.0