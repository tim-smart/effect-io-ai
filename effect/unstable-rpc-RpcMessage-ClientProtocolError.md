Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.ClientProtocolError

A server-to-client protocol message reporting a client protocol error to all
affected in-flight requests.

**Signature**

```ts
export interface ClientProtocolError {
  readonly _tag: "ClientProtocolError"
  readonly error: RpcClientError
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RpcMessage.ts#L295)

Since v4.0.0