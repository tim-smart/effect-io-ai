Package: `effect`<br />
Module: `Match`<br />

## Match.any

Matches any value without restrictions.

This predicate matches absolutely any value, including `undefined`, `null`,
objects, primitives, functions, etc. It's useful as a catch-all pattern
or when you need to match any remaining cases.

**Example**

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

**Signature**

```ts
declare const any: SafeRefinement<unknown, any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1297)

Since v4.0.0