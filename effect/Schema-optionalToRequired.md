Package: `effect`<br />
Module: `Schema`<br />

## Schema.optionalToRequired

Converts an optional property to a required one through a transformation `Option -> Type`.

- `decode`: `none` as argument means the value is missing in the input.
- `encode`: `none` as return value means the value will be missing in the output.

**Signature**

```ts
declare const optionalToRequired: <FA, FI, FR, TA, TI, TR>(from: Schema<FA, FI, FR>, to: Schema<TA, TI, TR>, options: { readonly decode: (o: option_.Option<FA>) => TI; readonly encode: (ti: TI) => option_.Option<FA>; }) => PropertySignature<":", TA, never, "?:", FI, false, FR | TR>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L2249)

Since v3.10.0