## has

Check if a given `key` exists in a record.

**Example**

```ts
import * as assert from "node:assert"
import { empty, has } from "effect/Record"

assert.deepStrictEqual(has({ a: 1, b: 2 }, "a"), true);
assert.deepStrictEqual(has(empty<string>(), "c"), false);
```

**Signature**

```ts
declare const has: { <K extends string | symbol>(key: NoInfer<K>): <A>(self: ReadonlyRecord<K, A>) => boolean; <K extends string | symbol, A>(self: ReadonlyRecord<K, A>, key: NoInfer<K>): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L277)

Since v2.0.0