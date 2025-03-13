Package: `effect`<br />
Module: `Record`<br />

## Record.filter

Selects properties from a record whose values match the given predicate.

**Example**

```ts
import * as assert from "node:assert"
import { filter } from "effect/Record"

const x = { a: 1, b: 2, c: 3, d: 4 }
assert.deepStrictEqual(filter(x, (n) => n > 2), { c: 3, d: 4 })
```

**Signature**

```ts
declare const filter: { <K extends string, A, B extends A>(refinement: (a: NoInfer<A>, key: K) => a is B): (self: ReadonlyRecord<K, A>) => Record<ReadonlyRecord.NonLiteralKey<K>, B>; <K extends string, A>(predicate: (A: NoInfer<A>, key: K) => boolean): (self: ReadonlyRecord<K, A>) => Record<ReadonlyRecord.NonLiteralKey<K>, A>; <K extends string, A, B extends A>(self: ReadonlyRecord<K, A>, refinement: (a: A, key: K) => a is B): Record<ReadonlyRecord.NonLiteralKey<K>, B>; <K extends string, A>(self: ReadonlyRecord<K, A>, predicate: (a: A, key: K) => boolean): Record<ReadonlyRecord.NonLiteralKey<K>, A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L664)

Since v2.0.0