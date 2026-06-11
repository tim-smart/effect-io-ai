Package: `effect`<br />
Module: `Record`<br />

## Record.getSomes

Returns a new record containing only the `Some` values from a record of
`Option` values, preserving the original keys.

**Example** (Extracting Some values)

```ts
import { Option, Record } from "effect"
import * as assert from "node:assert"

assert.deepStrictEqual(
  Record.getSomes({ a: Option.some(1), b: Option.none(), c: Option.some(2) }),
  { a: 1, c: 2 }
)
```

**Signature**

```ts
declare const getSomes: <K extends string, A>(self: ReadonlyRecord<K, Option.Option<A>>) => Record<ReadonlyRecord.NonLiteralKey<K>, A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L824)

Since v2.0.0