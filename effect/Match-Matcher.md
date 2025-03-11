## Matcher

Pattern matching follows a structured process:

- **Creating a matcher**: Define a `Matcher` that operates on either a
  specific `Match.type` or `Match.value`.

- **Defining patterns**: Use combinators such as `Match.when`, `Match.not`,
  and `Match.tag` to specify matching conditions.

- **Completing the match**: Apply a finalizer such as `Match.exhaustive`,
  `Match.orElse`, or `Match.option` to determine how unmatched cases should
  be handled.

**Example**

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L87)

Since v1.0.0