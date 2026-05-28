Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeUnknownOption

Creates an encoder for `unknown` input that returns an `Option` safely.

**When to use**

Use when encoding untyped input and you want a synchronous `Option` result
that keeps the encoded value on success but discards issue details on failure.

**Details**

The returned function produces `Option.some` with the schema's `Encoded` value
on success or `Option.none` on failure, discarding issue details.

**See**

- `encodeOption` for input already typed as the schema's decoded `Type`
- `encodeUnknownResult` for retaining schema issues as data

**Signature**

```ts
declare const encodeUnknownOption: <S extends Schema.Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: unknown, options?: AST.ParseOptions) => Option.Option<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L748)

Since v3.10.0