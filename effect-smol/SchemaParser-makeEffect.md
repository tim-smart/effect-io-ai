Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.makeEffect

Creates an effectful maker for the schema's decoded type side.

**When to use**

Use to construct decoded schema values in `Effect` while preserving
construction failures as `SchemaIssue.Issue` values in the error channel.

**Details**

The returned function accepts constructor input, applies constructor defaults,
runs type-side validation unless checks are disabled, and fails with a
`SchemaIssue.Issue` when construction fails.

**Signature**

```ts
declare const makeEffect: <S extends Schema.Constraint>(schema: S) => (input: S["~type.make.in"], options?: Schema.MakeOptions) => Effect.Effect<S["Type"], SchemaIssue.Issue>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaParser.ts#L70)

Since v4.0.0