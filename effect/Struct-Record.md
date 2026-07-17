Package: `effect`<br />
Module: `Struct`<br />

## Struct.Record

Creates a record with the given keys and value.

**When to use**

Use to build an object where each provided key receives the same value.

**Example** (Creating a record)

```ts
import { Struct } from "effect"

const record = Struct.Record(["a", "b"], "value")
console.log(record) // { a: "value", b: "value" }
```

**Signature**

```ts
declare const Record: <const Keys extends ReadonlyArray<string | symbol>, Value>(keys: Keys, value: Value) => Record<Keys[number], Value>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Struct.ts#L970)

Since v4.0.0