Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeUnknownOption

Creates an encoder for `unknown` input that returns an `Option`.

The returned function produces `Option.some` with the schema's `Encoded` value
on success or `Option.none` on failure, discarding issue details.

**Signature**

```ts
declare const encodeUnknownOption: <S extends Schema.Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Option.Option<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L484)

Since v4.0.0