Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeUnknownOption

Creates a decoder for `unknown` input that returns an `Option`.

The returned function produces `Option.some` with the decoded `Type` on success
or `Option.none` on failure, discarding issue details.

**Signature**

```ts
declare const decodeUnknownOption: <S extends Schema.Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Option.Option<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L289)

Since v3.10.0