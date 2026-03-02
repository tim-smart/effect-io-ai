Package: `effect`<br />
Module: `Record`<br />

## Record.empty

Creates a new, empty record.

**Example**

```ts
import { Record } from "effect"

// Create an empty record
const emptyRecord = Record.empty<string, number>()
console.log(emptyRecord) // {}

// The type ensures type safety for future operations
const withValue = Record.set(emptyRecord, "count", 42)
console.log(withValue) // { count: 42 }
```

**Signature**

```ts
declare const empty: <K extends string | symbol = never, V = never>() => Record<ReadonlyRecord.NonLiteralKey<K>, V>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L151)

Since v2.0.0