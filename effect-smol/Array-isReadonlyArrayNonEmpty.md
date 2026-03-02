Package: `effect`<br />
Module: `Array`<br />

## Array.isReadonlyArrayNonEmpty

Tests whether a `ReadonlyArray` is non-empty, narrowing the type to
`NonEmptyReadonlyArray`.

**Example** (Checking for a non-empty readonly array)

```ts
import { Array } from "effect"

console.log(Array.isReadonlyArrayNonEmpty([])) // false
console.log(Array.isReadonlyArrayNonEmpty([1, 2, 3])) // true
```

**See**

- `isArrayNonEmpty` — mutable variant
- `isReadonlyArrayEmpty` — opposite check

**Signature**

```ts
declare const isReadonlyArrayNonEmpty: <A>(self: ReadonlyArray<A>) => self is NonEmptyReadonlyArray<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L844)

Since v2.0.0