Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.Custom

Defines the type-level contract for an RPC custom constructor.

**Details**

A custom constructor receives the original success, error, and defect schemas
and returns transformed output schemas through `out`.

**Signature**

```ts
export interface Custom {
  readonly out: Custom.OutDefault
  readonly success: Schema.Top
  readonly error: Schema.Top
  readonly defect: DefectSchema
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L1053)

Since v4.0.0