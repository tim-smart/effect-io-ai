Package: `effect`<br />
Module: `Array`<br />

## Array.isArrayNonEmpty

Tests whether a mutable `Array` is non-empty, narrowing the type to
`NonEmptyArray`.

**Example** (Checking for a non-empty array)

```ts
import { Array } from "effect"

console.log(Array.isArrayNonEmpty([])) // false
console.log(Array.isArrayNonEmpty([1, 2, 3])) // true
```

**See**

- `isReadonlyArrayNonEmpty` — readonly variant
- `isArrayEmpty` — opposite check

**Signature**

```ts
declare const isArrayNonEmpty: <A>(self: Array<A>) => self is NonEmptyArray<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L823)

Since v2.0.0