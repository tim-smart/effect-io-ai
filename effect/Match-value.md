# value

Creates a matcher from a specific value.

**Details**

This function allows you to define a `Matcher` directly from a given value,
rather than from a type. This is useful when working with known values,
enabling structured pattern matching on objects, primitives, or any data
structure.

Once the matcher is created, you can use pattern-matching functions like
{@link when} to define how different cases should be handled.

To import and use `value` from the "Match" module:

```ts
import * as Match from "effect/Match"
// Can be accessed like this
Match.value
```

**Example**

```ts
// Title: Matching an Object by Property
import { Match } from "effect"

const input = { name: "John", age: 30 }

// Create a matcher for the specific object
const result = Match.value(input).pipe(
  // Match when the 'name' property is "John"
  Match.when({ name: "John" }, (user) => `${user.name} is ${user.age} years old`),
  // Provide a fallback if no match is found
  Match.orElse(() => "Oh, not John")
)

console.log(result)
// Output: "John is 30 years old"
```

**Signature**

```ts
export declare const value: <const I>(i: I) => Matcher<I, Types.Without<never>, I, never, I>
```
