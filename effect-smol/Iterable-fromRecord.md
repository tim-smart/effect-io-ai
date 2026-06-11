Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.fromRecord

Takes a record and returns an Iterable of tuples containing its keys and values.

**Example** (Converting a record to entries)

```ts
import { Iterable } from "effect"
import * as assert from "node:assert"

const x = { a: 1, b: 2, c: 3 }
assert.deepStrictEqual(Array.from(Iterable.fromRecord(x)), [["a", 1], ["b", 2], [
  "c",
  3
]])
```

**Signature**

```ts
declare const fromRecord: <K extends string, A>(self: Readonly<Record<K, A>>) => Iterable<[K, A]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Iterable.ts#L190)

Since v2.0.0