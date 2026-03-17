Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.findFirst

Finds the first entry in the TxHashMap that matches the given predicate.
Returns the key-value pair as a tuple wrapped in an Option.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create a task priority map
  const tasks = yield* TxHashMap.make(
    ["task1", { priority: 1, assignee: "alice", completed: false }],
    ["task2", { priority: 3, assignee: "bob", completed: true }],
    ["task3", { priority: 2, assignee: "alice", completed: false }]
  )

  // Find first high-priority incomplete task
  const highPriorityTask = yield* TxHashMap.findFirst(
    tasks,
    (task) => task.priority >= 2 && !task.completed
  )

  if (highPriorityTask._tag === "Some") {
    const [taskId, task] = highPriorityTask.value
    console.log(`Found task: ${taskId}, priority: ${task.priority}`)
    // "Found task: task3, priority: 2"
  }

  // Find first task assigned to specific user
  const aliceTask = yield* tasks.pipe(
    TxHashMap.findFirst((task) => task.assignee === "alice")
  )

  if (aliceTask._tag === "Some") {
    console.log(`Alice's task: ${aliceTask.value[0]}`)
  }
})
```

**Signature**

```ts
declare const findFirst: { <K, V>(predicate: (value: V, key: K) => boolean): (self: TxHashMap<K, V>) => Effect.Effect<Option.Option<[K, V]>, never, Effect.Transaction>; <K, V>(self: TxHashMap<K, V>, predicate: (value: V, key: K) => boolean): Effect.Effect<Option.Option<[K, V]>, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L1675)

Since v2.0.0