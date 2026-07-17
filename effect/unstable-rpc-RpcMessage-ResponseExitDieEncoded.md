Package: `effect`<br />
Module: `RpcMessage`<br />

## RpcMessage.ResponseExitDieEncoded

Creates an encoded terminal response for a request whose exit is a defect
encoded with `Schema.Defect()`.

**Signature**

```ts
declare const ResponseExitDieEncoded: (options: { readonly requestId: RequestId; readonly defect: unknown; }) => ResponseExitEncoded
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RpcMessage.ts#L335)

Since v4.0.0