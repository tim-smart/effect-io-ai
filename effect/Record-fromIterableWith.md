Package: `effect`<br />
Module: `Record`<br />

## Record.fromIterableWith

Takes an iterable and a projection function and returns a record.
The projection function maps each value of the iterable to a tuple of a key and a value, which is then added to the resulting record.

**Example**

```ts
import * as assert from "node:assert"
import { fromIterableWith } from "effect/Record"

const input = [1, 2, 3, 4]

assert.deepStrictEqual(
  fromIterableWith(input, a => [String(a), a * 2]),
  { '1': 2, '2': 4, '3': 6, '4': 8 }
)
```

**Signature**

```ts
declare const fromIterableWith: { <A, K extends string | symbol, B>(f: (a: A) => readonly [K, B]): (self: Iterable<A>) => Record<ReadonlyRecord.NonLiteralKey<K>, B>; <A, K extends string | symbol, B>(self: Iterable<A>, f: (a: A) => readonly [K, B]): Record<ReadonlyRecord.NonLiteralKey<K>, B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L123)

Since v2.0.0