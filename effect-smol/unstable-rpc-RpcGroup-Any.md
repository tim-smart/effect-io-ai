Package: `effect`<br />
Module: `RpcGroup`<br />

## RpcGroup.Any

An erased `RpcGroup` type for APIs that only need to know that a value is an
RPC group.

**Signature**

```ts
export interface Any {
  readonly [TypeId]: typeof TypeId
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcGroup.ts#L190)

Since v4.0.0