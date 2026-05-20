Package: `effect`<br />
Module: `MutableList`<br />

## MutableList.remove

Removes all occurrences of a value from the `MutableList` using JavaScript
strict equality semantics.

**Details**

The list is modified in place.

**Gotchas**

Values are compared with `!==`, so this does not use Effect structural
equality.

**Example** (Removing matching values)

```ts
import { MutableList } from "effect"

const list = MutableList.make<string>()
MutableList.appendAll(list, ["apple", "banana", "apple", "cherry", "apple"])

console.log(list.length) // 5

// Remove all occurrences of "apple"
MutableList.remove(list, "apple")

console.log(MutableList.takeAll(list)) // ["banana", "cherry"]

// Remove non-existent value (no effect)
const colors = MutableList.make<string>()
MutableList.appendAll(colors, ["red", "blue"])
MutableList.remove(colors, "green")
console.log(MutableList.takeAll(colors)) // ["red", "blue"]

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
console.log(MutableList.takeAll(tasks).map((task) => task.id)) // [1, 3]
```

**Signature**

```ts
declare const remove: <A>(self: MutableList<A>, value: A) => void
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MutableList.ts#L974)

Since v4.0.0