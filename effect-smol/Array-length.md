Package: `effect`<br />
Module: `Array`<br />

## Array.length

Returns the number of elements in a `ReadonlyArray`.

**When to use**

Use when you need length as a composable function rather than a property access.

**Example** (Getting the length)

```ts
import { Array } from "effect"

console.log(Array.length([1, 2, 3])) // 3
```

**Signature**

```ts
declare const length: <A>(self: ReadonlyArray<A>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L968)

Since v2.0.0