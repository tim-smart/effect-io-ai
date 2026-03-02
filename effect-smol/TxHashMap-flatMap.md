Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.flatMap

Transforms the TxHashMap by applying a function that returns a TxHashMap to each entry,
then flattening the results. Useful for complex transformations that require creating new maps.

**Return behavior**: This function returns a new TxHashMap reference with the
flattened results. The original TxHashMap is not modified.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create a department-employee map
  const departments = yield* TxHashMap.make(
    ["engineering", ["alice", "bob"]],
    ["marketing", ["charlie", "diana"]]
  )

  // Expand each department into individual employee entries with metadata
  const employeeDetails = yield* TxHashMap.flatMap(
    departments,
    (employees, department) =>
      Effect.gen(function*() {
        const employeeMap = yield* TxHashMap.empty<
          string,
          { department: string; role: string }
        >()
        for (let i = 0; i < employees.length; i++) {
          const employee = employees[i]
          const role = i === 0 ? "lead" : "member"
          yield* TxHashMap.set(employeeMap, employee, { department, role })
        }
        return employeeMap
      })
  )

  // Check the flattened result
  const alice = yield* TxHashMap.get(employeeDetails, "alice")
  console.log(alice) // Option.some({ department: "engineering", role: "lead" })

  const charlie = yield* TxHashMap.get(employeeDetails, "charlie")
  console.log(charlie) // Option.some({ department: "marketing", role: "lead" })

  const size = yield* TxHashMap.size(employeeDetails)
  console.log(size) // 4 (all employees)
})
```

**Signature**

```ts
declare const flatMap: { <A, V, K>(f: (value: V, key: K) => Effect.Effect<TxHashMap<K, A>, never, Effect.Transaction>): (self: TxHashMap<K, V>) => Effect.Effect<TxHashMap<K, A>, never, Effect.Transaction>; <K, V, A>(self: TxHashMap<K, V>, f: (value: V, key: K) => Effect.Effect<TxHashMap<K, A>, never, Effect.Transaction>): Effect.Effect<TxHashMap<K, A>, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L1912)

Since v2.0.0