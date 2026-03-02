Package: `effect`<br />
Module: `Array`<br />

## Array.get

Safely reads an element at the given index, returning `Option.some` or
`Option.none` if the index is out of bounds.

- The index is floored to an integer.
- Never throws.

**Example** (Safe index access)

```ts
import { Array } from "effect"

console.log(Array.get([1, 2, 3], 1)) // Some(2)
console.log(Array.get([1, 2, 3], 10)) // None
```

**See**

- `getUnsafe` — throws on out of bounds
- `head` — get the first element
- `last` — get the last element

**Signature**

```ts
declare const get: { (index: number): <A>(self: ReadonlyArray<A>) => Option.Option<A>; <A>(self: ReadonlyArray<A>, index: number): Option.Option<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L892)

Since v2.0.0