Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.encodeSync

Creates a synchronous encoder for input already typed as the schema's decoded
`Type`.

**When to use**

Use to encode already typed schema values synchronously when encoding failure
should throw an `Error` whose cause is `SchemaIssue.Issue`.

**Details**

The returned function returns the schema's `Encoded` value on success and throws
an `Error` with the `SchemaIssue.Issue` in its `cause` on encoding failure.

**Gotchas**

Causes that contain defects, interruptions, or asynchronous work at this
synchronous boundary throw an `Error` whose cause is the underlying `Cause`,
instead of being converted to a schema validation error.

**See**

- `encodeUnknownSync` for unknown input with the same throwing boundary
- `encodeResult` for returning schema issues as data
- `encodeEffect` for effectful encoding that preserves service requirements

**Signature**

```ts
declare const encodeSync: <S extends Schema.ConstraintEncoder<unknown>>(schema: S, options?: SchemaAST.ParseOptions) => (input: S["Type"], options?: SchemaAST.ParseOptions) => S["Encoded"]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaParser.ts#L904)

Since v3.10.0