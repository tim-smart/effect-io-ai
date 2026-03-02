Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.Record

Creates an equivalence for objects by comparing all properties using the same equivalence.

When to use this:
- When comparing objects with dynamic or unknown property names
- When all property values should use the same equivalence logic
- When working with record/dictionary types (key-value maps)
- Prefer over `Struct` when you have variable properties or need to compare all properties uniformly

Behavior:
- Does not mutate inputs
- Compares all properties present in both objects
- Requires both objects to have the same set of keys; different keys result in `false`
- All property values must be equivalent according to the provided equivalence
- Supports both string and symbol keys (via `Reflect.ownKeys`)
- Empty objects are considered equivalent
- The result is also an equivalence (satisfies reflexive, symmetric, transitive properties)

**Example** (Record with string values)

```ts
import { Equivalence } from "effect"

const stringRecordEq = Equivalence.Record(Equivalence.strictEqual<string>())

const record1 = { a: "hello", b: "world" }
const record2 = { a: "hello", b: "world" }
const record3 = { a: "hello", b: "different" }
const record4 = { a: "hello" } // missing key 'b'

console.log(stringRecordEq(record1, record2)) // true
console.log(stringRecordEq(record1, record3)) // false
console.log(stringRecordEq(record1, record4)) // false (different keys)
```

**Example** (Record with number values)

```ts
import { Equivalence } from "effect"

const numberRecordEq = Equivalence.Record(Equivalence.strictEqual<number>())

const scores1 = { alice: 100, bob: 85 }
const scores2 = { alice: 100, bob: 85 }
const scores3 = { alice: 100, bob: 90 }

console.log(numberRecordEq(scores1, scores2)) // true
console.log(numberRecordEq(scores1, scores3)) // false
```

See also: `Struct`, `Array`

**Signature**

```ts
declare const Record: <A>(value: Equivalence<A>) => Equivalence<Record<PropertyKey, A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L782)

Since v4.0.0