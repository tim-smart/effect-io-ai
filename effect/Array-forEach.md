Package: `effect`<br />
Module: `Array`<br />

## Array.forEach

Performs a side-effect for each element of the `Iterable`.

**Example**

```ts
import { Array } from "effect"

Array.forEach([1, 2, 3], n => console.log(n)) // 1, 2, 3
```

**Signature**

```ts
declare const forEach: { <A>(f: (a: A, i: number) => void): (self: Iterable<A>) => void; <A>(self: Iterable<A>, f: (a: A, i: number) => void): void; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L3094)

Since v2.0.0