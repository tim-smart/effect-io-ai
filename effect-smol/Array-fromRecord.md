Package: `effect`<br />
Module: `Array`<br />

## Array.fromRecord

Converts a record into an array of `[key, value]` tuples.

- Key order follows `Object.entries` semantics.
- Returns an empty array for an empty record.

**Example** (Record to entries)

```ts
import { Array } from "effect"

const result = Array.fromRecord({ a: 1, b: 2, c: 3 })
console.log(result) // [["a", 1], ["b", 2], ["c", 3]]
```

**Signature**

```ts
declare const fromRecord: <K extends string, A>(self: Readonly<Record<K, A>>) => Array<[K, A]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L382)

Since v2.0.0