Package: `effect`<br />
Module: `Array`<br />

## Array.containsWith

Returns a function that checks if a `ReadonlyArray` contains a given value using a provided `isEquivalent` function.

**Example**

```ts
import { Array, pipe } from "effect"

const isEquivalent = (a: number, b: number) => a === b
const containsNumber = Array.containsWith(isEquivalent)
const result = pipe([1, 2, 3, 4], containsNumber(3))
console.log(result) // true
```

**Signature**

```ts
declare const containsWith: <A>(isEquivalent: (self: A, that: A) => boolean) => { (a: A): (self: Iterable<A>) => boolean; (self: Iterable<A>, a: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1779)

Since v2.0.0