Package: `effect`<br />
Module: `Record`<br />

## Record.mapKeys

Maps the keys of a `ReadonlyRecord` while preserving the corresponding values.

**Example**

```ts
import { Record } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  Record.mapKeys({ a: 3, b: 5 }, (key) => key.toUpperCase()),
  { A: 3, B: 5 }
)
```

**Signature**

```ts
declare const mapKeys: { <K extends string, A, K2 extends string>(f: (key: K, a: A) => K2): (self: ReadonlyRecord<K, A>) => Record<K2, A>; <K extends string, A, K2 extends string>(self: ReadonlyRecord<K, A>, f: (key: K, a: A) => K2): Record<K2, A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L600)

Since v2.0.0