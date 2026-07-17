Package: `effect`<br />
Module: `Match`<br />

## Match.nonEmptyString

Matches non-empty strings.

**When to use**

Use to match strings whose length is greater than zero.

**Details**

This predicate matches any string that contains at least one character,
effectively filtering out empty strings ("").

**Example** (Matching non-empty strings)

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

**See**

- `string` for matching any string

**Signature**

```ts
declare const nonEmptyString: SafeRefinement<string, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L1203)

Since v4.0.0