Package: `effect`<br />
Module: `Record`<br />

## Record.keys

Retrieve the keys of a given record as an array.

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Record.keys({ a: 1, b: 2, c: 3 }), ["a", "b", "c"])
```

**Signature**

```ts
declare const keys: <K extends string | symbol, A>(self: ReadonlyRecord<K, A>) => Array<K & string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L936)

Since v2.0.0