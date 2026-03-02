Package: `effect`<br />
Module: `Match`<br />

## Match.is

Matches a specific set of literal values (e.g., `Match.is("a", 42, true)`).

This function creates a predicate that matches any of the provided literal values.
It's useful for matching against multiple specific values in a single pattern.

**Example**

```ts
import { Match } from "effect"

const handleStatus = Match.type<string | number>()
  .pipe(
    Match.when(Match.is("success", "ok", 200), () => "Operation successful"),
    Match.when(Match.is("error", "failed", 500), () => "Operation failed"),
    Match.when(Match.is(0, false, null), () => "Falsy value"),
    Match.orElse((value) => `Unknown status: ${value}`)
  )

console.log(handleStatus("success"))
// Output: "Operation successful"

console.log(handleStatus(200))
// Output: "Operation successful"

console.log(handleStatus("failed"))
// Output: "Operation failed"

console.log(handleStatus(0))
// Output: "Falsy value"

console.log(handleStatus("pending"))
// Output: "Unknown status: pending"
```

**Signature**

```ts
declare const is: <Literals extends ReadonlyArray<string | number | bigint | boolean | null>>(...literals: Literals) => SafeRefinement<Literals[number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1198)

Since v4.0.0