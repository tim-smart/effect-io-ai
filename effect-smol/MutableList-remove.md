Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.remove

Removes all occurrences of a specific value from the MutableList.
This operation modifies the list in place.

**Example**

```ts
import * as MutableList from "effect/MutableList"

const list = MutableList.make<string>()
MutableList.appendAll(list, ["apple", "banana", "apple", "cherry", "apple"])

console.log(list.length) // 5

// Remove all occurrences of "apple"
MutableList.remove(list, "apple")

console.log(list.length) // 2
console.log(MutableList.takeAll(list)) // ["banana", "cherry"]

// Remove non-existent value (no effect)
MutableList.remove(list, "grape")
console.log(list.length) // 2

// Real-world example: removing completed tasks
const tasks = MutableList.make<{ id: number; status: string }>()
MutableList.appendAll(tasks, [
  { id: 1, status: "pending" },
  { id: 2, status: "completed" },
  { id: 3, status: "pending" },
  { id: 4, status: "completed" }
])

// Remove completed tasks by filtering status
MutableList.filter(tasks, (task) => task.status !== "completed")
console.log(MutableList.takeAll(tasks)) // Only pending tasks
```

**Signature**

```ts
declare const remove: <A>(self: MutableList<A>, value: A) => void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L896)

Since v4.0.0