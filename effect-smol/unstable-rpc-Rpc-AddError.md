Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.AddError

Returns an RPC type with an additional error schema unioned into its error
channel.

**Signature**

```ts
type AddError<R, Error> = R extends Rpc<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ? Rpc<
    _Tag,
    _Payload,
    _Success,
    _Error | Error,
    _Middleware,
    _Requires
  > :
  never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L590)

Since v4.0.0