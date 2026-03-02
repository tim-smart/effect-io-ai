Package: `effect`<br />
Module: `Record`<br />

## Record.toEntries

Takes a record and returns an array of tuples containing its keys and values.

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

const x = { a: 1, b: 2, c: 3 }
assert.deepStrictEqual(Record.toEntries(x), [["a", 1], ["b", 2], ["c", 3]])
```

**Signature**

```ts
declare const toEntries: <K extends string, A>(self: ReadonlyRecord<K, A>) => Array<[K, A]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L336)

Since v2.0.0