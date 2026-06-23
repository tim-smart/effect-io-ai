Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.ErrorSchema

Extracts the RPC error schema, including error schemas contributed by
middleware.

**Signature**

```ts
type ErrorSchema<R> = R extends Rpc<
  infer _Tag,
  infer _Payload,
  infer _Success,
  infer _Error,
  infer _Middleware,
  infer _Requires
> ? _Error | _Middleware["error"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L359)

Since v4.0.0