Package: `effect`<br />
Module: `Match`<br />

## Match.Matcher

Union type for matchers created by `Match.type` and `Match.value`.

**Details**

A `Matcher` carries the input type, accumulated filters, remaining cases,
result type, and, for value matchers, the provided value being matched.

**Example** (Matching string and number values)

```ts
import { Match } from "effect"

// Simulated dynamic input that can be a string or a number
const input: string | number = "some input"

//      ┌─── string
//      ▼
const result = Match.value(input).pipe(
  // Match if the value is a number
  Match.when(Match.number, (n) => `number: ${n}`),
  // Match if the value is a string
  Match.when(Match.string, (s) => `string: ${s}`),
  // Ensure all possible cases are covered
  Match.exhaustive
)

console.log(result)
// Output: "string: some input"
```

**Signature**

```ts
type Matcher<Input, Filters, RemainingApplied, Result, Provided, Return> = | TypeMatcher<Input, Filters, RemainingApplied, Result, Return>
  | ValueMatcher<Input, Filters, RemainingApplied, Result, Provided, Return>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L57)

Since v4.0.0