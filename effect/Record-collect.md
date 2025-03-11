## collect

Transforms the values of a record into an `Array` with a custom mapping function.

**Example**

```ts
import * as assert from "node:assert"
import { collect } from "effect/Record"

const x = { a: 1, b: 2, c: 3 }
assert.deepStrictEqual(collect(x, (key, n) => [key, n]), [["a", 1], ["b", 2], ["c", 3]])
```

**Signature**

```ts
declare const collect: { <K extends string, A, B>(f: (key: K, a: A) => B): (self: ReadonlyRecord<K, A>) => Array<B>; <K extends string, A, B>(self: ReadonlyRecord<K, A>, f: (key: K, a: A) => B): Array<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L214)

Since v2.0.0