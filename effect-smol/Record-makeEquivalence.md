Package: `effect`<br />
Module: `Record`<br />

## Record.makeEquivalence

Create an `Equivalence` for records using the provided `Equivalence` for values.
Two records are considered equivalent if they have the same keys and their corresponding values are equivalent.

**Example**

```ts
import { Equal, Record } from "effect"
import * as assert from "node:assert"

const recordEquivalence = Record.makeEquivalence(Equal.asEquivalence<number>())

assert.deepStrictEqual(recordEquivalence({ a: 1, b: 2 }, { a: 1, b: 2 }), true)
assert.deepStrictEqual(recordEquivalence({ a: 1, b: 2 }, { a: 1, b: 3 }), false)
```

**Signature**

```ts
declare const makeEquivalence: <K extends string, A>(equivalence: Equivalence<A>) => Equivalence<ReadonlyRecord<K, A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L1336)

Since v2.0.0