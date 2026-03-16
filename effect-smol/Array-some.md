Package: `effect`<br />
Module: `Array`<br />

## Array.some

Tests whether at least one element satisfies the predicate. Narrows the type
to `NonEmptyReadonlyArray` on success.

**Example** (Testing for any match)

```ts
import { Array } from "effect"

console.log(Array.some([1, 3, 4], (x) => x % 2 === 0)) // true
console.log(Array.some([1, 3, 5], (x) => x % 2 === 0)) // false
```

**See**

- `every` — test if all elements match
- `contains` — test for a specific value

**Signature**

```ts
declare const some: { <A>(predicate: (a: NoInfer<A>, i: number) => boolean): (self: ReadonlyArray<A>) => self is NonEmptyReadonlyArray<A>; <A>(self: ReadonlyArray<A>, predicate: (a: A, i: number) => boolean): self is NonEmptyReadonlyArray<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3657)

Since v2.0.0