Package: `effect`<br />
Module: `Record`<br />

## Record.some

Check if any entry in a record meets a specific condition.

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Record.some({ a: 1, b: 2 }, (n) => n > 1), true)
assert.deepStrictEqual(Record.some({ a: 1, b: 2 }, (n) => n > 2), false)
```

**Signature**

```ts
declare const some: { <A, K extends string>(predicate: (value: A, key: K) => boolean): (self: ReadonlyRecord<K, A>) => boolean; <K extends string, A>(self: ReadonlyRecord<K, A>, predicate: (value: A, key: K) => boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L1148)

Since v2.0.0