## fromIterableBy

Creates a new record from an iterable, utilizing the provided function to determine the key for each element.

**Example**

```ts
import * as assert from "node:assert"
import { fromIterableBy } from "effect/Record"

const users = [
  { id: "2", name: "name2" },
  { id: "1", name: "name1" }
]

assert.deepStrictEqual(
  fromIterableBy(users, user => user.id),
  {
    "2": { id: "2", name: "name2" },
    "1": { id: "1", name: "name1" }
  }
)
```

**Signature**

```ts
declare const fromIterableBy: <A, K extends string | symbol>(items: Iterable<A>, f: (a: A) => K) => Record<ReadonlyRecord.NonLiteralKey<K>, A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L171)

Since v2.0.0