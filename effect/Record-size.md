## size

Returns the number of key/value pairs in a record.

**Example**

```ts
import * as assert from "node:assert"
import { size } from "effect/Record";

assert.deepStrictEqual(size({ a: "a", b: 1, c: true }), 3);
```

**Signature**

```ts
declare const size: <K extends string, A>(self: ReadonlyRecord<K, A>) => number
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L261)

Since v2.0.0