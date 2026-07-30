Package: `effect`<br />
Module: `Record`<br />

## Record.getSomes

Given a record with `Option` values, returns a new record containing only the `Some` values, preserving the original keys.

**Example**

```ts
import * as assert from "node:assert"
import { Record, Option } from "effect"

assert.deepStrictEqual(
  Record.getSomes({ a: Option.some(1), b: Option.none(), c: Option.some(2) }),
  { a: 1, c: 2 }
)
```

**Signature**

```ts
declare const getSomes: <K extends string, A>(self: ReadonlyRecord<K, Option.Option<A>>) => Record<ReadonlyRecord.NonLiteralKey<K>, A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L712)

Since v2.0.0