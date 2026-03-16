Package: `effect`<br />
Module: `Array`<br />

## Array.every

Tests whether all elements satisfy the predicate. Supports refinements for
type narrowing.

**Example** (Testing all elements)

```ts
import { Array } from "effect"

console.log(Array.every([2, 4, 6], (x) => x % 2 === 0)) // true
console.log(Array.every([2, 3, 6], (x) => x % 2 === 0)) // false
```

**See**

- `some` — test if any element matches

**Signature**

```ts
declare const every: { <A, B extends A>(refinement: (a: NoInfer<A>, i: number) => a is B): (self: ReadonlyArray<A>) => self is ReadonlyArray<B>; <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: ReadonlyArray<A>) => boolean; <A, B extends A>(self: ReadonlyArray<A>, refinement: (a: A, i: number) => a is B): self is ReadonlyArray<B>; <A>(self: ReadonlyArray<A>, predicate: (a: A, i: number) => boolean): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3625)

Since v2.0.0