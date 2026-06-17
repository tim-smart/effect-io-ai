Package: `effect`<br />
Module: `Array`<br />

## Array.get

Reads an element at the given index safely, returning `Option.some` or
`Option.none` if the index is out of bounds.

**When to use**

Use when you need to read an array element by index and handle an
out-of-bounds index as `Option.none`.

**Details**

The index is floored to an integer. This never throws.

**Example** (Accessing indexes safely)

```ts
import { Array } from "effect"

console.log(Array.get([1, 2, 3], 1)) // Some(2)
console.log(Array.get([1, 2, 3], 10)) // None
```

**See**

- `getUnsafe` for indexed access that throws when the index is out of bounds
- `head` for reading the first element as an `Option`
- `last` for reading the last element as an `Option`

**Signature**

```ts
declare const get: { (index: number): <A>(self: ReadonlyArray<A>) => Option.Option<A>; <A>(self: ReadonlyArray<A>, index: number): Option.Option<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L951)

Since v2.0.0