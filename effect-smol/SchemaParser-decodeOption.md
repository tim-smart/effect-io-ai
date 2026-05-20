Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeOption

Creates a decoder for input already typed as the schema's `Encoded` type,
returning an `Option`.

**Details**

The returned function produces `Option.some` with the decoded `Type` on success
or `Option.none` on failure, discarding issue details.

**Signature**

```ts
declare const decodeOption: <S extends Schema.Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Encoded"], options?: AST.ParseOptions) => Option.Option<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L332)

Since v3.10.0