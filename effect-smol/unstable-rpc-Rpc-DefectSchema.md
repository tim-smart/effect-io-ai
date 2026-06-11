Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.DefectSchema

Schema for RPC defects.

**Details**

Defect schemas decode and encode without services and can be constructed from
`null`, `undefined`, or an object value.

**Signature**

```ts
export interface DefectSchema extends Schema.Top {
  readonly Type: unknown
  make(input: null, options?: Schema.MakeOptions): unknown
  make(input: undefined, options?: Schema.MakeOptions): unknown
  make(input: {}, options?: Schema.MakeOptions): unknown
  readonly DecodingServices: never
  readonly EncodingServices: never
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L53)

Since v4.0.0