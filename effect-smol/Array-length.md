Package: `effect`<br />
Module: `Array`<br />

## Array.length

Returns the number of elements in a `ReadonlyArray`.

**Example** (Getting the length)

```ts
import { Array } from "effect"

console.log(Array.length([1, 2, 3])) // 3
```

**Signature**

```ts
declare const length: <A>(self: ReadonlyArray<A>) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L861)

Since v2.0.0