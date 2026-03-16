Package: `effect`<br />
Module: `Array`<br />

## Array.containsWith

Returns a membership-test function using a custom equivalence.

**Example** (Custom equality check)

```ts
import { Array, pipe } from "effect"

const containsNumber = Array.containsWith((a: number, b: number) => a === b)
console.log(pipe([1, 2, 3, 4], containsNumber(3))) // true
```

**See**

- `contains` — uses default `Equal.equivalence()`

**Signature**

```ts
declare const containsWith: <A>(isEquivalent: (self: A, that: A) => boolean) => { (a: A): (self: Iterable<A>) => boolean; (self: Iterable<A>, a: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2232)

Since v2.0.0