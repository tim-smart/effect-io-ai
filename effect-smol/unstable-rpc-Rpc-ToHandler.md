Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.ToHandler

Converts an RPC definition into the corresponding `Handler` type.

**Signature**

```ts
type ToHandler<R> = R extends Rpc<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ? Handler<_Tag> :
  never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L610)

Since v4.0.0