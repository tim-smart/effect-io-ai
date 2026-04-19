Package: `effect`<br />
Module: `SchemaIssue`<br />

## SchemaIssue.isIssue

Returns `true` if the given value is an `Issue`.

When to use:

- Narrowing an `unknown` value to `Issue` in error-handling code.
- Distinguishing an `Issue` from other error types in a catch-all handler.

Behaviour:

- Pure; does not mutate input.
- Checks for the internal `TypeId` brand on the value.

**Example** (Type-guarding an unknown error)

```ts
import { SchemaIssue } from "effect"

const issue = new SchemaIssue.MissingKey(undefined)
console.log(SchemaIssue.isIssue(issue))
// true
console.log(SchemaIssue.isIssue("not an issue"))
// false
```

**See**

- `Issue`

**Signature**

```ts
declare const isIssue: (u: unknown) => u is Issue
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaIssue.ts#L122)

Since v4.0.0