Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.Custom.Out

The transformed schemas produced by a custom RPC constructor.

**Signature**

```ts
export interface Out<
    Success extends Schema.Top,
    Error extends Schema.Top
  > {
    readonly success: Success
    readonly error: Error
    readonly defect: DefectSchema
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L1060)

Since v4.0.0