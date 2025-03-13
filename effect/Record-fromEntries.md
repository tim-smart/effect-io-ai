Package: `effect`<br />
Module: `Record`<br />

## Record.fromEntries

Builds a record from an iterable of key-value pairs.

If there are conflicting keys when using `fromEntries`, the last occurrence of the key/value pair will overwrite the
previous ones. So the resulting record will only have the value of the last occurrence of each key.

**Example**

```ts
import * as assert from "node:assert"
import { fromEntries } from "effect/Record"

const input: Array<[string, number]> = [["a", 1], ["b", 2]]

assert.deepStrictEqual(fromEntries(input), { a: 1, b: 2 })
```

**Signature**

```ts
declare const fromEntries: <Entry extends readonly [string | symbol, any]>(entries: Iterable<Entry>) => Record<ReadonlyRecord.NonLiteralKey<Entry[0]>, Entry[1]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L195)

Since v2.0.0