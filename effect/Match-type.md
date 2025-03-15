Package: `effect`<br />
Module: `Match`<br />

## Match.type

Creates a matcher for a specific type.

**Details**

This function defines a `Matcher` that operates on a given type, allowing you
to specify conditions for handling different cases. Once the matcher is
created, you can use pattern-matching functions like `when` to define
how different values should be processed.

**Example** (Matching Numbers and Strings)

```ts
import { Match } from "effect"

// Create a matcher for values that are either strings or numbers
//
//      ┌─── (u: string | number) => string
//      ▼
const match = Match.type<string | number>().pipe(
  // Match when the value is a number
  Match.when(Match.number, (n) => `number: ${n}`),
  // Match when the value is a string
  Match.when(Match.string, (s) => `string: ${s}`),
  // Ensure all possible cases are handled
  Match.exhaustive
)

console.log(match(0))
// Output: "number: 0"

console.log(match("hello"))
// Output: "string: hello"
```

**See**

- `value` for creating a matcher from a specific value.

**Signature**

```ts
declare const type: <I>() => Matcher<I, Types.Without<never>, I, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Match.ts#L193)

Since v1.0.0