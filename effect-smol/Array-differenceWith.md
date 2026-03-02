Package: `effect`<br />
Module: `Array`<br />

## Array.differenceWith

Computes elements in the first array that are not in the second, using a
custom equivalence.

**Example** (Difference with custom equality)

```ts
import { Array } from "effect"

const diff = Array.differenceWith<number>((a, b) => a === b)([1, 2, 3], [2, 3, 4])
console.log(diff) // [1]
```

**See**

- `difference` — uses default equality
- `union` — elements in either array
- `intersection` — elements in both arrays

**Signature**

```ts
declare const differenceWith: <A>(isEquivalent: (self: A, that: A) => boolean) => { (that: Iterable<A>): (self: Iterable<A>) => Array<A>; (self: Iterable<A>, that: Iterable<A>): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2859)

Since v2.0.0