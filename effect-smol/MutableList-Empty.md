Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.Empty

The type of the Empty symbol, used for type checking when taking elements from a MutableList.
This provides compile-time safety when checking for empty results.

**Example**

```ts
import * as MutableList from "effect/MutableList"

const list = MutableList.make<number>()

// Type-safe handling of empty results
const takeAndDouble = (
  queue: MutableList.MutableList<number>
): number | null => {
  const item: number | MutableList.Empty = MutableList.take(queue)

  if (item === MutableList.Empty) {
    return null
  }

  // TypeScript knows item is number here
  return item * 2
}

console.log(takeAndDouble(list)) // null (empty list)

MutableList.append(list, 5)
console.log(takeAndDouble(list)) // 10

// Type guard function
const isEmpty = (
  result: number | MutableList.Empty
): result is MutableList.Empty => {
  return result === MutableList.Empty
}

const value = MutableList.take(list)
if (isEmpty(value)) {
  console.log("List is empty")
} else {
  console.log("Got value:", value)
}
```

**Signature**

```ts
type Empty = typeof Empty
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L237)

Since v4.0.0