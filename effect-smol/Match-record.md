Package: `effect`<br />
Module: `Match`<br />

## Match.record

Matches non-null objects other than arrays.

**When to use**

Use to match broad non-null, non-array object values.

**Details**

This predicate uses `Predicate.isObject`: it returns `true` for values whose
runtime type is `"object"`, are not `null`, and are not arrays. It can match
`Date`, `RegExp`, and class instances; use `instanceOf` or a more specific
pattern when those cases need to be distinguished.

**Example** (Matching record objects)

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
  Match.orElse(() => "Not an object")
)

console.log(analyzeValue({ name: "Alice", age: 30 })) // "Object with 2 properties: [name, age]"
console.log(analyzeValue([1, 2, 3])) // "Array with 3 items"
console.log(analyzeValue(null)) // "Not an object"
console.log(analyzeValue("hello")) // "Not an object"
```

**See**

- `instanceOf` for matching a specific constructor

**Signature**

```ts
declare const record: Predicate.Refinement<unknown, { [x: string]: unknown; [x: number]: unknown; [x: symbol]: unknown; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1677)

Since v4.0.0