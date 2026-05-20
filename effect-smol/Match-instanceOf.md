Package: `effect`<br />
Module: `Match`<br />

## Match.instanceOf

Matches instances of a given class.

**Details**

This predicate checks if a value is an instance of the specified constructor,
providing type-safe matching for class instances and built-in objects.

**Example** (Matching class instances)

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
    Match.when(
      Match.instanceOf(Array),
      (arr) => `Array with ${arr.length} items`
    ),
    Match.when(
      Match.instanceOf(Map),
      (map) => `Map with ${map.size} entries`
    ),
    Match.orElse((value) => `Other: ${typeof value}`)
  )

console.log(handleValue(new CustomError("Failed", 404))) // "Custom error: Failed (code: 404)"
console.log(handleValue(new Error("Generic error"))) // "Standard error: Generic error"
console.log(handleValue([1, 2, 3])) // "Array with 3 items"
console.log(handleValue(new Map([["count", 1]]))) // "Map with 1 entries"
```

**Signature**

```ts
declare const instanceOf: <A extends abstract new (...args: any) => any>(constructor: A) => SafeRefinement<InstanceType<A>, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1616)

Since v4.0.0