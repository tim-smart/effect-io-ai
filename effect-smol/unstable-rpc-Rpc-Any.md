Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.Any

An erased RPC definition that preserves the common runtime metadata shared by
all RPCs.

**Signature**

```ts
export interface Any extends Pipeable {
  readonly [TypeId]: typeof TypeId
  readonly _tag: string
  readonly key: string
  readonly annotations: Context.Context<never>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L266)

Since v4.0.0