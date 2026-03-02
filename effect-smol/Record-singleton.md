Package: `effect`<br />
Module: `Record`<br />

## Record.singleton

Create a non-empty record from a single element.

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(Record.singleton("a", 1), { a: 1 })
```

**Signature**

```ts
declare const singleton: <K extends string | symbol, A>(key: K, value: A) => Record<K, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L1358)

Since v2.0.0