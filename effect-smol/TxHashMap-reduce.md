Package: `effect`<br />
Module: `TxHashMap`<br />

## TxHashMap.reduce

Reduces the TxHashMap entries to a single value by applying a reducer function.
Iterates over all key-value pairs and accumulates them into a final result.

**Example**

```ts
import { Effect, TxHashMap } from "effect"

const program = Effect.gen(function*() {
  // Create a sales data map
  const sales = yield* TxHashMap.make(
    ["Q1", 15000],
    ["Q2", 18000],
    ["Q3", 22000],
    ["Q4", 25000]
  )

  // Calculate total sales
  const totalSales = yield* TxHashMap.reduce(
    sales,
    0,
    (total, amount, quarter) => {
      console.log(`Adding ${quarter}: ${amount}`)
      return total + amount
    }
  )
  console.log(`Total sales: ${totalSales}`) // 80000

  // Data-last usage with pipe
  const quarterlyReport = yield* sales.pipe(
    TxHashMap.reduce(
      { quarters: 0, total: 0, max: 0 },
      (report, amount, quarter) => ({
        quarters: report.quarters + 1,
        total: report.total + amount,
        max: Math.max(report.max, amount)
      })
    )
  )
  console.log(quarterlyReport) // { quarters: 4, total: 80000, max: 25000 }

  // Build a summary string
  const summary = yield* TxHashMap.reduce(
    sales,
    "",
    (acc, amount, quarter) => acc + `${quarter}: $${amount.toLocaleString()}\n`
  )
  console.log(summary)
})
```

**Signature**

```ts
declare const reduce: { <A, V, K>(zero: A, f: (accumulator: A, value: V, key: K) => A): (self: TxHashMap<K, V>) => Effect.Effect<A, never, Effect.Transaction>; <K, V, A>(self: TxHashMap<K, V>, zero: A, f: (accumulator: A, value: V, key: K) => A): Effect.Effect<A, never, Effect.Transaction>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/TxHashMap.ts#L1477)

Since v2.0.0