## toEntries

Takes a record and returns an array of tuples containing its keys and values.

**Example**

```ts
import * as assert from "node:assert"
import { toEntries } from "effect/Record"

const x = { a: 1, b: 2, c: 3 }
assert.deepStrictEqual(toEntries(x), [["a", 1], ["b", 2], ["c", 3]])
```

**Signature**

```ts
declare const toEntries: <K extends string, A>(self: ReadonlyRecord<K, A>) => Array<[K, A]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L243)

Since v2.0.0