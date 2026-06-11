Package: `effect`<br />
Module: `Equivalence`<br />

## Equivalence.Array

Creates an equivalence for arrays where all elements are compared using the same equivalence.

**When to use**

Use when you need to compare arrays with one equivalence for every element.

**Details**

- Requires arrays to have the same length; different lengths are never equivalent
- Compares elements positionally, such as index `0` with index `0`
- Returns `true` only if all corresponding elements are equivalent
- Empty arrays are considered equivalent
- The result is also an equivalence that satisfies reflexive, symmetric, and transitive properties

**Example** (Number array equivalence)

```ts
import { Equivalence } from "effect"

const numberArrayEq = Equivalence.Array(Equivalence.strictEqual<number>())

console.log(numberArrayEq([1, 2, 3], [1, 2, 3])) // true
console.log(numberArrayEq([1, 2, 3], [1, 2, 4])) // false
console.log(numberArrayEq([1, 2], [1, 2, 3])) // false (different length)
```

**Example** (Case-insensitive string array)

```ts
import { Equivalence } from "effect"

const caseInsensitive = Equivalence.mapInput(
  Equivalence.strictEqual<string>(),
  (s: string) => s.toLowerCase()
)
const stringArrayEq = Equivalence.Array(caseInsensitive)

console.log(stringArrayEq(["Hello", "World"], ["HELLO", "WORLD"])) // true
console.log(stringArrayEq(["Hello"], ["Hi"])) // false
console.log(stringArrayEq([], [])) // true (empty arrays)
```

**See**

- `Tuple`
- `Record`

**Signature**

```ts
declare const Array: <A>(item: Equivalence<A>) => Equivalence<ReadonlyArray<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equivalence.ts#L622)

Since v4.0.0