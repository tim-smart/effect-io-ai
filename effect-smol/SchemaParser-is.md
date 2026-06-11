Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.is

Creates a type guard that checks whether an input satisfies the schema's decoded
type side.

**When to use**

Use to build a type guard for checking the decoded side of a schema without
exposing issue details.

**Details**

The guard returns `true` on successful validation and `false` on failure, without
exposing issue details.

**Signature**

```ts
declare const is: <T>(schema: Schema.Schema<T>) => <I>(input: I) => input is I & T
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L146)

Since v3.10.0