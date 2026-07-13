Package: `effect`<br />
Module: `Schema`<br />

## Schema.Record

Defines a record schema whose dynamic properties are selected by a key schema
and decoded with a value schema.

**Details**

For dynamic keys, the key schema selects matching own properties and the
value schema decodes or encodes only those selected properties. Checks on
string, number, symbol, and template literal key schemas narrow which
properties are selected.

For transformed key schemas, property selection is based on encoded property
names before the selected key is decoded.

**Example** (Defining a string-keyed record of numbers)

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
declare const Record: <Key extends Record.Key, Value extends Constraint>(key: Key, value: Value, options?: { readonly keyValueCombiner: { readonly decode?: Combiner.Combiner<readonly [Key["Type"], Value["Type"]]> | undefined; readonly encode?: Combiner.Combiner<readonly [Key["Encoded"], Value["Encoded"]]> | undefined; }; }) => $Record<Key, Value>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3829)

Since v3.10.0