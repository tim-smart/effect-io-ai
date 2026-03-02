Package: `effect`<br />
Module: `Array`<br />

## Array.forEach

Runs a side-effect for each element. The callback receives `(element, index)`.

**Example** (Iterating with side-effects)

```ts
import { Array } from "effect"

Array.forEach([1, 2, 3], (n) => console.log(n)) // 1, 2, 3
```

**Signature**

```ts
declare const forEach: { <A>(f: (a: A, i: number) => void): (self: Iterable<A>) => void; <A>(self: Iterable<A>, f: (a: A, i: number) => void): void; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3826)

Since v2.0.0