Package: `effect`<br />
Module: `Array`<br />

## Array.differenceWith

Computes elements in the first array that are not in the second, using a
custom equivalence.

**When to use**

Use when you need to keep only values from the first array and equality must
be defined by a custom comparator, such as matching objects by id.

**Example** (Computing differences with custom equality)

```ts
import { Array } from "effect"

const diff = Array.differenceWith<number>((a, b) => a === b)([1, 2, 3], [2, 3, 4])
console.log(diff) // [1]
```

**See**

- `difference` for the `Equal.equivalence()` variant
- `unionWith` for keeping values from either array with custom equality
- `intersectionWith` for keeping values present in both arrays with custom equality

**Signature**

```ts
declare const differenceWith: <A>(isEquivalent: (self: A, that: A) => boolean) => { (that: Iterable<A>): (self: Iterable<A>) => Array<A>; (self: Iterable<A>, that: Iterable<A>): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3263)

Since v2.0.0