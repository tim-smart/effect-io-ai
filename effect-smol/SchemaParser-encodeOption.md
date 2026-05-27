Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeOption

Creates an encoder for input already typed as the schema's decoded `Type`,
returning an `Option`.

**When to use**

Use when encoding values that are already typed as the schema's decoded
`Type` and an `Option` result is the desired success/failure boundary.

**Details**

The returned function produces `Option.some` with the schema's `Encoded` value
on success or `Option.none` on failure, discarding issue details.

**See**

- `encodeUnknownOption` for untyped input with the same yes/no result shape
- `encodeResult` for retaining schema issues as data

**Signature**

```ts
declare const encodeOption: <S extends Schema.Encoder<unknown>>(schema: S, options?: AST.ParseOptions) => (input: S["Type"], options?: AST.ParseOptions) => Option.Option<S["Encoded"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L772)

Since v3.10.0