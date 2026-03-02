Package: `effect`<br />
Module: `Record`<br />

## Record.every

Check if all entries in a record meet a specific condition.

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Record.every({ a: 1, b: 2 }, (n) => n > 0), true)
assert.deepStrictEqual(Record.every({ a: 1, b: -1 }, (n) => n > 0), false)
```

**Signature**

```ts
declare const every: { <A, K extends string, B extends A>(refinement: (value: A, key: K) => value is B): (self: ReadonlyRecord<K, A>) => self is ReadonlyRecord<K, B>; <A, K extends string>(predicate: (value: A, key: K) => boolean): (self: ReadonlyRecord<K, A>) => boolean; <A, K extends string, B extends A>(self: ReadonlyRecord<K, A>, refinement: (value: A, key: K) => value is B): self is ReadonlyRecord<K, B>; <K extends string, A>(self: ReadonlyRecord<K, A>, predicate: (value: A, key: K) => boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L1107)

Since v2.0.0