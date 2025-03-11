## modify

Apply a function to the element at the specified key, creating a new record.
If the key does not exist, the record is returned unchanged.

**Example**

```ts
import * as assert from "node:assert"
import { Record as R } from "effect"

const f = (x: number) => x * 2

assert.deepStrictEqual(
 R.modify({ a: 3 }, 'a', f),
 { a: 6 }
)
assert.deepStrictEqual(
 R.modify({ a: 3 } as Record<string, number>, 'b', f),
 { a: 3 }
)
```

**Signature**

```ts
declare const modify: { <K extends string | symbol, A, B>(key: NoInfer<K>, f: (a: A) => B): (self: ReadonlyRecord<K, A>) => Record<K, A | B>; <K extends string | symbol, A, B>(self: ReadonlyRecord<K, A>, key: NoInfer<K>, f: (a: A) => B): Record<K, A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L341)

Since v2.0.0