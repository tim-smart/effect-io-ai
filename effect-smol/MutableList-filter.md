Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.filter

Filters the MutableList in place, keeping only elements that satisfy the predicate.
This operation modifies the list and rebuilds its internal structure for efficiency.

**Example**

```ts
import * as MutableList from "effect/MutableList"

const list = MutableList.make<number>()
MutableList.appendAll(list, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

console.log(list.length) // 10

// Keep only even numbers
MutableList.filter(list, (n) => n % 2 === 0)

console.log(list.length) // 5
console.log(MutableList.takeAll(list)) // [2, 4, 6, 8, 10]

// Filter with index
const indexed = MutableList.make<string>()
MutableList.appendAll(indexed, ["a", "b", "c", "d", "e"])

// Keep elements at even indices
MutableList.filter(indexed, (value, index) => index % 2 === 0)
console.log(MutableList.takeAll(indexed)) // ["a", "c", "e"]

// Real-world example: filtering a log queue
const logs = MutableList.make<{ level: string; message: string }>()
MutableList.appendAll(logs, [
  { level: "INFO", message: "App started" },
  { level: "ERROR", message: "Connection failed" },
  { level: "DEBUG", message: "Cache hit" },
  { level: "ERROR", message: "Timeout" }
])

// Keep only errors
MutableList.filter(logs, (log) => log.level === "ERROR")
console.log(MutableList.takeAll(logs)) // Only error logs
```

**Signature**

```ts
declare const filter: <A>(self: MutableList<A>, f: (value: A, i: number) => boolean) => void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L840)

Since v4.0.0