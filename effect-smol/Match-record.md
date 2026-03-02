Package: `effect`<br />
Module: `Match`<br />

## Match.record

Matches objects where keys are `string` or `symbol` and values are `unknown`.

This predicate refines unknown values to record objects, allowing pattern
matching on plain objects. It excludes arrays, functions, dates, and other
special object types, matching only plain objects and object literals.

**Example**

```ts
import { Match } from "effect"

const analyzeValue = Match.type<unknown>().pipe(
  Match.when(Match.record, (obj) => {
    const keys = Object.keys(obj)
    const valueCount = keys.length
    return `Object with ${valueCount} properties: [${keys.join(", ")}]`
  }),
  Match.when(
    Match.instanceOf(Array),
    (arr) => `Array with ${arr.length} items`
  ),
  Match.when(Match.date, () => "Date object"),
  Match.orElse(() => "Not an object")
)

console.log(analyzeValue({ name: "Alice", age: 30 }))
// "Object with 2 properties: [name, age]"
console.log(analyzeValue([1, 2, 3]))
// "Array with 3 items"
console.log(analyzeValue(new Date()))
// "Date object"
console.log(analyzeValue("hello"))
// "Not an object"
```

**Signature**

```ts
declare const record: Predicate.Refinement<unknown, { [x: string]: unknown; [x: number]: unknown; [x: symbol]: unknown; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1535)

Since v4.0.0