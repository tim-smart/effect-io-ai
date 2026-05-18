Package: `effect`<br />
Module: `RpcMiddleware`<br />

## RpcMiddleware.ErrorServicesDecode

Extracts the decoding services required by a middleware's error schema.

**Signature**

```ts
type ErrorServicesDecode<A> = ErrorSchema<A>["DecodingServices"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcMiddleware.ts#L238)

Since v4.0.0