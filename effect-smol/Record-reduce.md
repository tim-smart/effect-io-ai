Package: `effect`<br />
Module: `Record`<br />

## Record.reduce

Reduce a record to a single value by combining its entries with a specified function.

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  Record.reduce({ a: 1, b: 2, c: 3 }, 0, (acc, value, key) => acc + value),
  6
)
```

**Signature**

```ts
declare const reduce: { <Z, V, K extends string>(zero: Z, f: (accumulator: Z, value: V, key: K) => Z): (self: ReadonlyRecord<K, V>) => Z; <K extends string, V, Z>(self: ReadonlyRecord<K, V>, zero: Z, f: (accumulator: Z, value: V, key: K) => Z): Z; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L1072)

Since v2.0.0