# fromIterableBy

Creates a new record from an iterable, utilizing the provided function to determine the key for each element.

To import and use `fromIterableBy` from the "ReadonlyRecord" module:

```ts
import * as ReadonlyRecord from "effect/ReadonlyRecord"
// Can be accessed like this
ReadonlyRecord.fromIterableBy
```

**Example**

```ts
import { fromIterableBy } from "effect/ReadonlyRecord"

const users = [
  { id: "2", name: "name2" },
  { id: "1", name: "name1" }
]

assert.deepStrictEqual(
  fromIterableBy(users, (user) => user.id),
  {
    "2": { id: "2", name: "name2" },
    "1": { id: "1", name: "name1" }
  }
)
```

**Signature**

```ts
export declare const fromIterableBy: <A, K extends string | symbol>(
  items: Iterable<A>,
  f: (a: A) => K
) => Record<ReadonlyRecord.NonLiteralKey<K>, A>
```
