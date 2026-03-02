Package: `effect`<br />
Module: `Console`<br />

## Console.table

Displays tabular data as a table in the console.

This function takes tabular data and displays it in a formatted table,
making it easier to read structured data.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.gen(function*() {
  const users = [
    { name: "John", age: 30, city: "New York" },
    { name: "Jane", age: 25, city: "London" },
    { name: "Bob", age: 35, city: "Paris" }
  ]
  yield* Console.table(users)
  yield* Console.table(users, ["name", "age"]) // Only show specific columns
})
```

**Signature**

```ts
declare const table: (tabularData: any, properties?: ReadonlyArray<string>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Console.ts#L494)

Since v2.0.0