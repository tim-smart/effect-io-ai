Package: `effect`<br />
Module: `Record`<br />

## Record.collect

Transforms the values of a record into an `Array` with a custom mapping function.

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

const x = { a: 1, b: 2, c: 3 }
assert.deepStrictEqual(Record.collect(x, (key, n) => [key, n]), [["a", 1], [
  "b",
  2
], ["c", 3]])
```

**Signature**

```ts
declare const collect: { <K extends string, A, B>(f: (key: K, a: A) => B): (self: ReadonlyRecord<K, A>) => Array<B>; <K extends string, A, B>(self: ReadonlyRecord<K, A>, f: (key: K, a: A) => B): Array<B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L307)

Since v2.0.0