Package: `effect`<br />
Module: `Array`<br />

## Array.allocate

Creates a new `Array` of the specified length with all slots uninitialized.

**When to use**

Use when you need a pre-sized array that will be filled imperatively.

**Details**

Elements are typed as `A | undefined` because the slots are empty.

**Example** (Allocating a fixed-size array)

```ts
import { Array } from "effect"

const result = Array.allocate<number>(3)
console.log(result.length) // 3
```

**See**

- `makeBy` — create an array by computing each element

**Signature**

```ts
declare const allocate: <A = never>(n: number) => Array<A | undefined>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L173)

Since v2.0.0