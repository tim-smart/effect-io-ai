Package: `effect`<br />
Module: `Record`<br />

## Record.has

Check if a given `key` exists in a record.

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Record.has({ a: 1, b: 2 }, "a"), true)
assert.deepStrictEqual(Record.has(Record.empty<string>(), "c"), false)
```

**Signature**

```ts
declare const has: { <K extends string | symbol>(key: NoInfer<K>): <A>(self: ReadonlyRecord<K, A>) => boolean; <K extends string | symbol, A>(self: ReadonlyRecord<K, A>, key: NoInfer<K>): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L372)

Since v2.0.0