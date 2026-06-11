Package: `effect`<br />
Module: `RpcGroup`<br />

## RpcGroup.Rpcs

Extracts the union of RPC definitions from an `RpcGroup`.

**Signature**

```ts
type Rpcs<Group> = Group extends RpcGroup<infer R> ? string extends R["_tag"] ? never : R : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RpcGroup.ts#L248)

Since v4.0.0