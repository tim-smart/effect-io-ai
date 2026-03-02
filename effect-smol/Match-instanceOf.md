Package: `effect`<br />
Module: `Match`<br />

## Match.instanceOf

Matches instances of a given class.

This predicate checks if a value is an instance of the specified constructor,
providing type-safe matching for class instances and built-in objects.

**Example**

```ts
import { Match } from "effect"

class CustomError extends Error {
  constructor(message: string, public code: number) {
    super(message)
  }
}

const handleValue = Match.type<unknown>()
  .pipe(
    Match.when(
      Match.instanceOf(CustomError),
      (err) => `Custom error: ${err.message} (code: ${err.code})`
    ),
    Match.when(
      Match.instanceOf(Error),
      (err) => `Standard error: ${err.message}`
    ),
    Match.when(Match.instanceOf(Date), (date) => `Date: ${date.toISOString()}`),
    Match.when(
      Match.instanceOf(Array),
      (arr) => `Array with ${arr.length} items`
    ),
    Match.orElse((value) => `Other: ${typeof value}`)
  )

console.log(handleValue(new CustomError("Failed", 404)))
// Output: "Custom error: Failed (code: 404)"

console.log(handleValue(new Error("Generic error")))
// Output: "Standard error: Generic error"

console.log(handleValue(new Date()))
// Output: "Date: 2024-01-01T00:00:00.000Z"

console.log(handleValue([1, 2, 3]))
// Output: "Array with 3 items"
```

**Signature**

```ts
declare const instanceOf: <A extends abstract new (...args: any) => any>(constructor: A) => SafeRefinement<InstanceType<A>, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1587)

Since v4.0.0