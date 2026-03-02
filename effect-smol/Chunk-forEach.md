Package: `effect`<br />
Module: `Chunk`<br />

## Chunk.forEach

Iterates over each element of a `Chunk` and applies a function to it.

**Details**

This function processes every element of the given `Chunk`, calling the
provided function `f` on each element. It does not return a new value;
instead, it is primarily used for side effects, such as logging or
accumulating data in an external variable.

**Example**

```ts
import { Chunk } from "effect"

const chunk = Chunk.make(1, 2, 3, 4)

// Log each element
Chunk.forEach(chunk, (n) => console.log(`Value: ${n}`))
// Output:
// Value: 1
// Value: 2
// Value: 3
// Value: 4

// With index parameter
Chunk.forEach(chunk, (n, i) => console.log(`Index ${i}: ${n}`))
// Output:
// Index 0: 1
// Index 1: 2
// Index 2: 3
// Index 3: 4
```

**Signature**

```ts
declare const forEach: { <A, B>(f: (a: A, index: number) => B): (self: Chunk<A>) => void; <A, B>(self: Chunk<A>, f: (a: A, index: number) => B): void; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chunk.ts#L1222)

Since v2.0.0