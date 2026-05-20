Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.make

Creates a synchronous maker for the schema's decoded type side.

**Details**

The returned function constructs a value from constructor input and throws an
`Error` with the `SchemaIssue.Issue` in its `cause` when construction fails.

**Signature**

```ts
declare const make: <S extends Schema.Top>(schema: S) => (input: S["~type.make.in"], options?: Schema.MakeOptions) => S["Type"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L118)

Since v4.0.0