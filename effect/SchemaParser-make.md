Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.make

Creates a synchronous maker for the schema's decoded type side.

**When to use**

Use to construct decoded schema values synchronously when invalid input
should throw an `Error` whose cause is `SchemaIssue.Issue`.

**Details**

The returned function constructs a value from constructor input and throws an
`Error` with the `SchemaIssue.Issue` in its `cause` when construction fails.

**Gotchas**

Causes that contain defects, interruptions, or asynchronous work at this
synchronous boundary throw an `Error` whose cause is the underlying `Cause`,
instead of being converted to a schema validation error.

**Signature**

```ts
declare const make: <S extends Schema.Constraint>(schema: S) => (input: S["~type.make.in"], options?: Schema.MakeOptions) => S["Type"]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaParser.ts#L138)

Since v4.0.0