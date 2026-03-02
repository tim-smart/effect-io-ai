Package: `effect`<br />
Module: `Array`<br />

## Array.intersectionWith

Computes the intersection of two arrays using a custom equivalence. Order is
determined by the first array.

**Example** (Intersection with custom equality)

```ts
import { Array } from "effect"

const array1 = [{ id: 1 }, { id: 2 }, { id: 3 }]
const array2 = [{ id: 3 }, { id: 4 }, { id: 1 }]
const isEquivalent = (a: { id: number }, b: { id: number }) => a.id === b.id
console.log(Array.intersectionWith(isEquivalent)(array2)(array1)) // [{ id: 1 }, { id: 3 }]
```

**See**

- `intersection` — uses default equality
- `union` — elements in either array
- `difference` — elements only in the first array

**Signature**

```ts
declare const intersectionWith: <A>(isEquivalent: (self: A, that: A) => boolean) => { (that: Iterable<A>): (self: Iterable<A>) => Array<A>; (self: Iterable<A>, that: Iterable<A>): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2802)

Since v2.0.0