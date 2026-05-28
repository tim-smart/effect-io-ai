Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.decodeOption

Creates a decoder safely for input already typed as the schema's `Encoded` type,
returning an `Option`.

**When to use**

Use when the input is already typed as the schema's `Encoded` type and you
only need to know whether decoding succeeds.

**Details**

The returned function produces `Option.some` with the decoded `Type` on success
or `Option.none` on failure, discarding issue details.

**See**

- `decodeUnknownOption` for untyped input with the same yes/no result shape
- `decodeResult` for retaining schema issues as data

**Signature**

```ts
declare const decodeOption: <S extends Schema.Decoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Encoded"], options?: AST.ParseOptions) => Option.Option<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L449)

Since v3.10.0