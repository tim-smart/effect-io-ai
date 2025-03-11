## modifyOption

Apply a function to the element at the specified key, creating a new record,
or return `None` if the key doesn't exist.

**Example**

```ts
import * as assert from "node:assert"
import { Record as R, Option } from "effect"

const f = (x: number) => x * 2

assert.deepStrictEqual(
 R.modifyOption({ a: 3 }, 'a', f),
 Option.some({ a: 6 })
)
assert.deepStrictEqual(
 R.modifyOption({ a: 3 } as Record<string, number>, 'b', f),
 Option.none()
)
```

**Signature**

```ts
declare const modifyOption: { <K extends string | symbol, A, B>(key: NoInfer<K>, f: (a: A) => B): (self: ReadonlyRecord<K, A>) => Option.Option<Record<K, A | B>>; <K extends string | symbol, A, B>(self: ReadonlyRecord<K, A>, key: NoInfer<K>, f: (a: A) => B): Option.Option<Record<K, A | B>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L380)

Since v2.0.0