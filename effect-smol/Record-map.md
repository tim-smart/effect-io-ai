Package: `effect`<br />
Module: `Record`<br />

## Record.map

Maps a record into another record by applying a transformation function to each of its values.

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

const f = (n: number) => `-${n}`

assert.deepStrictEqual(Record.map({ a: 3, b: 5 }, f), { a: "-3", b: "-5" })

const g = (n: number, key: string) => `${key.toUpperCase()}-${n}`

assert.deepStrictEqual(Record.map({ a: 3, b: 5 }, g), { a: "A-3", b: "B-5" })
```

**Signature**

```ts
declare const map: { <K extends string, A, B>(f: (a: A, key: NoInfer<K>) => B): (self: ReadonlyRecord<K, A>) => Record<K, B>; <K extends string, A, B>(self: ReadonlyRecord<K, A>, f: (a: A, key: NoInfer<K>) => B): Record<K, B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L569)

Since v2.0.0