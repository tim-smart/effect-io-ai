Package: `effect`<br />
Module: `Schema`<br />

## Schema.Record

Defines a record (dictionary) schema with typed keys and values.

**Example** (String-keyed record of numbers)

```ts
import { Schema } from "effect"

const schema = Schema.Record(Schema.String, Schema.Number)

// { readonly [x: string]: number }
type R = typeof schema.Type

const result = Schema.decodeUnknownSync(schema)({ a: 1, b: 2 })
console.log(result)
// { a: 1, b: 2 }
```

**Signature**

```ts
declare const Record: <Key extends Record.Key, Value extends Top>(key: Key, value: Value, options?: { readonly keyValueCombiner: { readonly decode?: Combiner.Combiner<readonly [Key["Type"], Value["Type"]]> | undefined; readonly encode?: Combiner.Combiner<readonly [Key["Encoded"], Value["Encoded"]]> | undefined; }; }) => $Record<Key, Value>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2759)

Since v4.0.0