Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.fromRecord

Takes a record and returns an Iterable of tuples containing its keys and values.

**Example**

```ts
import * as assert from "node:assert"
import { fromRecord } from "effect/Iterable"

const x = { a: 1, b: 2, c: 3 }
assert.deepStrictEqual(Array.from(fromRecord(x)), [["a", 1], ["b", 2], ["c", 3]])
```

**Signature**

```ts
declare const fromRecord: <K extends string, A>(self: Readonly<Record<K, A>>) => Iterable<[K, A]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L117)

Since v2.0.0