Package: `effect`<br />
Module: `Optic`<br />

## Optic.fromChecks

Creates a `Prism` from one or more `Schema` validation checks.

**When to use**

Use when you want to narrow `T` to the subset that passes certain validation
  rules (e.g. positive integer).
- You already have `Schema.isGreaterThan`, `Schema.isInt`, etc.

**Details**

- `getResult` runs all checks; fails with a combined error message when
  any check fails.
- `set` is identity — the value passes through unchanged.

**Example** (positive integer prism)

```ts
import { Optic, Result, Schema } from "effect"

const posInt = Optic.fromChecks<number>(
  Schema.isGreaterThan(0),
  Schema.isInt()
)

console.log(Result.isSuccess(posInt.getResult(3)))
// Output: true

console.log(Result.isFailure(posInt.getResult(-1)))
// Output: true
```

**See**

- `makePrism` — constructor with custom getter/setter
- `Prism` — the type this function returns

**Signature**

```ts
declare const fromChecks: <T>(checks_0: SchemaAST.Check<T>, ...checks: Array<SchemaAST.Check<T>>) => Prism<T, T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Optic.ts#L398)

Since v4.0.0