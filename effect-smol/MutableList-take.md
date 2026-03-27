Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.take

Takes a single element from the beginning of the MutableList.
Returns the element if available, or the Empty symbol if the list is empty.
The taken element is removed from the list.

**Example**

```ts
import * as MutableList from "effect/MutableList"

const list = MutableList.make<string>()
MutableList.appendAll(list, ["first", "second", "third"])

// Take elements one by one
console.log(MutableList.take(list)) // "first"
console.log(list.length) // 2

console.log(MutableList.take(list)) // "second"
console.log(MutableList.take(list)) // "third"
console.log(list.length) // 0

// Take from empty list
console.log(MutableList.take(list)) // Empty symbol

// Check for empty using the Empty symbol
const result = MutableList.take(list)
if (result === MutableList.Empty) {
  console.log("List is empty")
} else {
  console.log("Got element:", result)
}

// Consumer pattern
function processNext<T>(
  queue: MutableList.MutableList<T>,
  processor: (item: T) => void
): boolean {
  const item = MutableList.take(queue)
  if (item !== MutableList.Empty) {
    processor(item)
    return true
  }
  return false
}
```

**Signature**

```ts
declare const take: <A>(self: MutableList<A>) => Empty | A
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L755)

Since v4.0.0