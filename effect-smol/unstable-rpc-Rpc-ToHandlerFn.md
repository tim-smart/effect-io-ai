Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.ToHandlerFn

The function signature for implementing an RPC handler.

**Details**

The function receives the decoded payload and request metadata, and returns
the RPC result shape, optionally wrapped with `Wrapper` options.

**Signature**

```ts
type ToHandlerFn<Current, R> = (
  payload: Payload<Current>,
  options: {
    readonly client: ServerClient
    readonly requestId: RequestId
    readonly headers: Headers
    readonly rpc: Current
  }
) => WrapperOr<ResultFrom<Current, R>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L658)

Since v4.0.0