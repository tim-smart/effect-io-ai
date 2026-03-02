Package: `effect`<br />
Module: `Match`<br />

## Match.nonEmptyString

Matches non-empty strings.

This predicate matches any string that contains at least one character,
effectively filtering out empty strings ("").

**Example**

```ts
import { Match } from "effect"

const processInput = Match.type<string>()
  .pipe(
    Match.when(Match.nonEmptyString, (str) => `Valid input: ${str}`),
    Match.orElse(() => "Input cannot be empty")
  )

console.log(processInput("hello"))
// Output: "Valid input: hello"

console.log(processInput(""))
// Output: "Input cannot be empty"

console.log(processInput("   "))
// Output: "Valid input:    " (whitespace-only strings are considered non-empty)
```

**Signature**

```ts
declare const nonEmptyString: SafeRefinement<string, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1159)

Since v4.0.0