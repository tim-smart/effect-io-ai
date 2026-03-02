Package: `effect`<br />
Module: `HashMap`<br />

## HashMap.toValues

Returns an `Array` of the values within the `HashMap`.

**Example**

```ts
import * as HashMap from "effect/HashMap"

const employees = HashMap.make(
  ["alice", { department: "engineering", salary: 90000 }],
  ["bob", { department: "marketing", salary: 75000 }],
  ["charlie", { department: "engineering", salary: 95000 }]
)

// Extract all employee records
const allEmployees = HashMap.toValues(employees)
console.log(allEmployees.length) // 3

// Calculate total salary
const totalSalary = allEmployees.reduce((sum, emp) => sum + emp.salary, 0)
console.log(totalSalary) // 260000

// Filter by department
const engineers = allEmployees.filter((emp) => emp.department === "engineering")
console.log(engineers.length) // 2
```

**Signature**

```ts
declare const toValues: <K, V>(self: HashMap<K, V>) => Array<V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HashMap.ts#L557)

Since v3.13.0