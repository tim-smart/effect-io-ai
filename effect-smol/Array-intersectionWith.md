Package: `effect`<br />
Module: `Array`<br />

## Array.intersectionWith

Computes the intersection of two arrays using a custom equivalence. Order is
determined by the first array.

**When to use**

Use when you need to keep only values present in both arrays and equality
must be defined by a custom comparator, such as matching objects by id.

**Example** (Intersection with custom equality)

```ts
import { Array } from "effect"

const array1 = [{ id: 1 }, { id: 2 }, { id: 3 }]
const array2 = [{ id: 3 }, { id: 4 }, { id: 1 }]
const isEquivalent = (a: { id: number }, b: { id: number }) => a.id === b.id
console.log(Array.intersectionWith(isEquivalent)(array2)(array1)) // [{ id: 1 }, { id: 3 }]
```

**See**

- `intersection` for the `Equal.equivalence()` variant
- `unionWith` for keeping values from either array with custom equality
- `differenceWith` for keeping values only from the first array with custom equality

**Signature**

```ts
declare const intersectionWith: <A>(isEquivalent: (self: A, that: A) => boolean) => { (that: Iterable<A>): (self: Iterable<A>) => Array<A>; (self: Iterable<A>, that: Iterable<A>): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3270)

Since v2.0.0