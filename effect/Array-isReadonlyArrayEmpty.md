Package: `effect`<br />
Module: `Array`<br />

## Array.isReadonlyArrayEmpty

Checks whether a `ReadonlyArray` is empty, narrowing the type to `readonly []`.

**Example** (Checking for an empty readonly array)

```ts
import { Array } from "effect"

console.log(Array.isReadonlyArrayEmpty([])) // true
console.log(Array.isReadonlyArrayEmpty([1, 2, 3])) // false
```

**See**

- `isArrayEmpty` — mutable variant
- `isReadonlyArrayNonEmpty` — opposite check

**Signature**

```ts
declare const isReadonlyArrayEmpty: <A>(self: ReadonlyArray<A>) => self is readonly []
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L840)

Since v4.0.0