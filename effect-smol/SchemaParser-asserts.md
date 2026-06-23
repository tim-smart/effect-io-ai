Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.asserts

Asserts that an input satisfies the schema's decoded type side.

**When to use**

Use to assert that an input satisfies the decoded side of a schema when schema
validation failures should throw an `Error` whose cause is `SchemaIssue.Issue`.

**Details**

The assertion returns normally when validation succeeds. When the input does
not satisfy the schema with a schema-only failure, it throws an `Error` with
the `SchemaIssue.Issue` in its `cause`.

**Gotchas**

Causes that contain defects, interruptions, or asynchronous work at this
synchronous boundary throw an `Error` whose cause is the underlying `Cause`,
instead of being converted to a schema validation error.

**Signature**

```ts
declare const asserts: <S extends Schema.Constraint, I>(schema: S, input: I) => asserts input is I & S["Type"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L225)

Since v4.0.0