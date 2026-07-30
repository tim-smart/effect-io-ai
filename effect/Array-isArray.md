Package: `effect`<br />
Module: `Array`<br />

## Array.isArray

Determine if `unknown` is an Array.

**Example**

```ts
import { Array } from "effect"

console.log(Array.isArray(null)) // false
console.log(Array.isArray([1, 2, 3])) // true
```

**Signature**

```ts
declare const isArray: { (self: unknown): self is Array<unknown>; <T>(self: T): self is Extract<T, ReadonlyArray<any>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L514)

Since v2.0.0