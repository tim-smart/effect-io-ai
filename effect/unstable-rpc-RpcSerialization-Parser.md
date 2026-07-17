Package: `effect`<br />
Module: `RpcSerialization`<br />

## RpcSerialization.Parser

A stateful parser for an RPC serialization format, able to decode input
chunks into protocol messages and encode messages for transport.

**Signature**

```ts
export interface Parser {
  readonly decode: (data: Uint8Array | string) => ReadonlyArray<unknown>
  readonly encode: (response: unknown) => Uint8Array | string | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RpcSerialization.ts#L45)

Since v4.0.0