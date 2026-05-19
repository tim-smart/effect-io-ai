Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeOption

Creates an encoder for input already typed as the schema's decoded `Type`,
returning an `Option`.

The returned function produces `Option.some` with the schema's `Encoded` value
on success or `Option.none` on failure, discarding issue details.

**Signature**

```ts
declare const encodeOption: <S extends Schema.Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Type"], options?: AST.ParseOptions) => Option.Option<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L498)

Since v3.10.0