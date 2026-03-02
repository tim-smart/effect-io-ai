Package: `effect`<br />
Module: `Record`<br />

## Record.size

Returns the number of key/value pairs in a record.

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Record.size({ a: "a", b: 1, c: true }), 3)
```

**Signature**

```ts
declare const size: <K extends string, A>(self: ReadonlyRecord<K, A>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L356)

Since v2.0.0