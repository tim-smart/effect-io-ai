Package: `effect`<br />
Module: `SchemaParser`<br />

## SchemaParser.makeOption

Creates a synchronous maker that returns `Option.some` with the constructed
value on success, or `Option.none` when construction fails with schema issues.

**When to use**

Use when you need to validate schema constructor input and only care whether
construction succeeds, without exposing `SchemaIssue.Issue` details.

**Gotchas**

Only causes made entirely of schema issues are converted to `Option.none`.
Causes that contain defects, interruptions, or asynchronous work at this
synchronous boundary throw an `Error` whose cause is the underlying `Cause`.

**Signature**

```ts
declare const makeOption: <S extends Schema.Constraint>(schema: S) => (input: S["~type.make.in"], options?: Schema.MakeOptions) => Option.Option<S["Type"]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/SchemaParser.ts#L101)

Since v4.0.0