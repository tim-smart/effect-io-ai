# type

Creates a matcher for a specific type.

**Details**

This function defines a `Matcher` that operates on a given type, allowing you
to specify conditions for handling different cases. Once the matcher is
created, you can use pattern-matching functions like {@link when} to define
how different values should be processed.

To import and use `type` from the "Match" module:

```ts
import * as Match from "effect/Match"
// Can be accessed like this
Match.type
```

**Example**

```ts
// Title: Matching Numbers and Strings
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

**Signature**

```ts
export declare const type: <I>() => Matcher<I, Types.Without<never>, I, never, never>
```
