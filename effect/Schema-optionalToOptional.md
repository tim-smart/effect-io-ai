Package: `effect`<br />
Module: `Schema`<br />

## Schema.optionalToOptional

Converts an optional property to another optional property through a transformation `Option -> Option`.

- `decode`:
  - `none` as argument means the value is missing in the input.
  - `none` as return value means the value will be missing in the output.
- `encode`:
  - `none` as argument means the value is missing in the input.
  - `none` as return value means the value will be missing in the output.

**Signature**

```ts
declare const optionalToOptional: <FA, FI, FR, TA, TI, TR>(from: Schema<FA, FI, FR>, to: Schema<TA, TI, TR>, options: { readonly decode: (o: option_.Option<FA>) => option_.Option<TI>; readonly encode: (o: option_.Option<TI>) => option_.Option<FA>; }) => PropertySignature<"?:", TA, never, "?:", FI, false, FR | TR>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L2305)

Since v3.10.0