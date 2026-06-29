Package: `effect`<br />
Module: `Schema`<br />

## Schema.encodeUnknownSync

Encodes an `unknown` input against a schema synchronously, throwing a
`SchemaError` for schema mismatches.

**When to use**

Use when you need to serialize unknown data at a synchronous boundary and
want schema mismatches to throw `SchemaError`.

**Details**

For alternatives that do not throw on schema mismatches, see
`encodeUnknownOption`, `encodeUnknownExit`, or
`encodeUnknownEffect`. For values already typed as the schema's `Type`
use `encodeSync`. Options may be provided either when creating the
encoder or when applying it; application options override creation options.

**Gotchas**

Non-schema failures may throw a runtime failure instead of `SchemaError`.

**See**

- `SchemaParser.encodeUnknownSync` for the adapter that throws an `Error` whose cause is `SchemaIssue.Issue`

**Signature**

```ts
declare const encodeUnknownSync: <S extends ConstraintEncoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => S["Encoded"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2123)

Since v4.0.0