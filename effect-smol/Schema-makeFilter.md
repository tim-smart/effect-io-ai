Package: `effect`<br />
Module: `Schema`<br />

## Schema.makeFilter

Creates a custom validation filter from a predicate function.

**Details**

The predicate receives the decoded input value, the schema AST, and parse
options, and returns a `FilterOutput`. Non-success outputs are normalized into
schema issues. The `annotations` parameter annotates the filter itself; with
the default formatter, failures use `message` first, `expected` second, and
`<filter>` when neither is provided.

When `abort` is `true`, parsing stops after this filter fails instead of
collecting later check failures.

**Example** (Failure at a nested path)

```ts
import { Schema } from "effect"

const schema = Schema.Struct({ password: Schema.String, confirmPassword: Schema.String }).check(
  Schema.makeFilter((o) =>
    o.password === o.confirmPassword
      ? undefined
      : { path: ["password"], issue: "password and confirmPassword must match" }
  )
)

console.log(String(Schema.decodeUnknownExit(schema)({ password: "123456", confirmPassword: "1234567" })))
// Failure(Cause([Fail(SchemaError: password and confirmPassword must match
//   at ["password"])]))
```

**Example** (Reporting multiple failures at once)

```ts
import { Schema } from "effect"

const schema = Schema.Struct({ a: Schema.Finite, b: Schema.Finite, c: Schema.Finite }).check(
  Schema.makeFilter((o) => {
    const issues: Array<Schema.FilterIssue> = []
    if (o.a > 0) {
      if (o.b <= 0) issues.push({ path: ["b"], issue: "b must be greater than 0" })
      if (o.c <= 0) issues.push({ path: ["c"], issue: "c must be greater than 0" })
    }
    return issues
  })
)

console.log(String(Schema.decodeUnknownExit(schema)({ a: 1, b: 0, c: 0 })))
// Failure(Cause([Fail(SchemaError: b must be greater than 0
//   at ["b"]
// c must be greater than 0
//   at ["c"])]))
```

**Signature**

```ts
declare const makeFilter: <T>(filter: (input: T, ast: SchemaAST.AST, options: SchemaAST.ParseOptions) => FilterOutput, annotations?: Annotations.Filter | undefined, abort?: boolean) => SchemaAST.Filter<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L5994)

Since v4.0.0