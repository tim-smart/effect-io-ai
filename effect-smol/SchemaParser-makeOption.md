Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.makeOption

Creates a synchronous maker that returns `Option.some` with the constructed
value on success, or `Option.none` when construction fails.

**When to use**

Use when you need to validate schema constructor input and only care whether
construction succeeds, without exposing `SchemaIssue.Issue` details.

**Signature**

```ts
declare const makeOption: <S extends Schema.Top>(schema: S) => (input: S["~type.make.in"], options?: Schema.MakeOptions) => Option.Option<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L128)

Since v4.0.0