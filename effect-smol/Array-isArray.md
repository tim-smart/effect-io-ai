Package: `effect`<br />
Module: `Array`<br />

## Array.isArray

Tests whether a value is an `Array`.

- Acts as a type guard narrowing the input to `Array<unknown>`.
- Delegates to `globalThis.Array.isArray`.

**Example** (Type-guarding an unknown value)

```ts
import { Array } from "effect"

console.log(Array.isArray(null)) // false
console.log(Array.isArray([1, 2, 3])) // true
```

**See**

- `isArrayEmpty` — check for an empty array
- `isArrayNonEmpty` — check for a non-empty array

**Signature**

```ts
declare const isArray: { (self: unknown): self is Array<unknown>; <T>(self: T): self is Extract<T, ReadonlyArray<any>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L759)

Since v2.0.0