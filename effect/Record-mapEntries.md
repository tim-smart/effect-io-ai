Package: `effect`<br />
Module: `Record`<br />

## Record.mapEntries

Maps entries of a `ReadonlyRecord` using the provided function, allowing modification of both keys and corresponding values.

**Example**

```ts
import * as assert from "node:assert"
import { mapEntries } from "effect/Record"

assert.deepStrictEqual(mapEntries({ a: 3, b: 5 }, (a, key) => [key.toUpperCase(), a + 1]), { A: 4, B: 6 })
```

**Signature**

```ts
declare const mapEntries: { <K extends string, A, K2 extends string, B>(f: (a: A, key: K) => readonly [K2, B]): (self: ReadonlyRecord<K, A>) => Record<K2, B>; <K extends string, A, K2 extends string, B>(self: ReadonlyRecord<K, A>, f: (a: A, key: K) => [K2, B]): Record<K2, B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L585)

Since v2.0.0