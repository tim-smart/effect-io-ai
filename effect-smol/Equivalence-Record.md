Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.Record

Creates an equivalence for objects by comparing all properties using the same equivalence.

**When to use**

Use when you need to compare records with the same equivalence for every
property value.

**Details**

- Compares all properties present in both objects
- Requires both objects to have the same set of keys; different keys result in `false`
- All property values must be equivalent according to the provided equivalence
- Supports both string and symbol keys via `Reflect.ownKeys`
- Empty objects are considered equivalent
- The result is also an equivalence that satisfies reflexive, symmetric, and transitive properties

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

**Signature**

```ts
declare const Record: <A>(value: Equivalence<A>) => Equivalence<Record<PropertyKey, A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L757)

Since v4.0.0