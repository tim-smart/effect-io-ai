Package: `effect`<br />
Module: `Record`<br />

## Record.values

Retrieve the values of a given record as an array.

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Record.values({ a: 1, b: 2, c: 3 }), [1, 2, 3])
```

**Signature**

```ts
declare const values: <K extends string, A>(self: ReadonlyRecord<K, A>) => Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L953)

Since v2.0.0