Package: `effect`<br />
Module: `Array`<br />

## Array.difference

Creates a `Array` of values not included in the other given `Iterable`.
The order and references of result values are determined by the first `Iterable`.

**Example**

```ts
import { Array } from "effect"

const difference = Array.difference([1, 2, 3], [2, 3, 4])
console.log(difference) // [1]
```

**Signature**

```ts
declare const difference: { <A>(that: Iterable<A>): (self: Iterable<A>) => Array<A>; <A>(self: Iterable<A>, that: Iterable<A>): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2417)

Since v2.0.0