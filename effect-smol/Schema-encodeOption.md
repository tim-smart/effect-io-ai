Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeOption

Encodes a typed input (the schema's `Type`) against a schema, returning an
`Option` that is `Some` with the encoded value on success or `None` on
failure. For `unknown` input use `encodeUnknownOption`.

**Signature**

```ts
declare const encodeOption: <S extends Encoder<unknown>>(schema: S) => (input: S["Type"], options?: AST.ParseOptions) => Option_.Option<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1386)

Since v4.0.0