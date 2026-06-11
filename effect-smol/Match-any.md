Package: `effect`<br />
Module: `Match`<br />

## Match.any

Matches any value without restrictions.

**When to use**

Use to define an explicit catch-all pattern when the handler should receive
the unmatched value.

**Details**

This predicate matches every input, including `undefined`, `null`, objects,
primitives, and functions.

**Gotchas**

`Match.any` should usually be last because cases are checked in order and
the first matching case wins.

**Example** (Matching any remaining value)

```ts
import { Match } from "effect"

const describeValue = Match.type<unknown>()
  .pipe(
    Match.when(Match.string, (str) => `String: ${str}`),
    Match.when(Match.number, (num) => `Number: ${num}`),
    Match.when(Match.boolean, (bool) => `Boolean: ${bool}`),
    Match.when(Match.any, (value) => `Other: ${typeof value}`),
    Match.exhaustive
  )

console.log(describeValue("hello"))
// Output: "String: hello"

console.log(describeValue(42))
// Output: "Number: 42"

console.log(describeValue([1, 2, 3]))
// Output: "Other: object"

console.log(describeValue(null))
// Output: "Other: object"
```

**See**

- `defined` for matching only non-nullish values
- `orElse` for providing a fallback after earlier cases

**Signature**

```ts
declare const any: SafeRefinement<unknown, any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1375)

Since v4.0.0