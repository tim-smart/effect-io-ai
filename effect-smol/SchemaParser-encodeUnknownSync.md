Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeUnknownSync

Creates a synchronous encoder for `unknown` input.

**When to use**

Use when you need to encode values from untyped input in synchronous code and
want encoding failures to throw an `Error` whose cause is `SchemaIssue.Issue`.

**Details**

The returned function returns the schema's `Encoded` value on success and throws
an `Error` with the `SchemaIssue.Issue` in its `cause` on encoding failure.

**Gotchas**

Causes that contain defects, interruptions, or asynchronous work at this
synchronous boundary throw an `Error` whose cause is the underlying `Cause`,
instead of being converted to a schema validation error.

**See**

- `encodeSync` for input already typed as the schema's decoded `Type`
- `encodeUnknownEffect` for effectful encoding that preserves service requirements

**Signature**

```ts
declare const encodeUnknownSync: <S extends Schema.Encoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: unknown, options?: SchemaAST.ParseOptions) => S["Encoded"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L870)

Since v3.10.0