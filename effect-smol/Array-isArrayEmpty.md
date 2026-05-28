Package: `effect`<br />
Module: `Array`<br />

## Array.isArrayEmpty

Checks whether a mutable `Array` is empty, narrowing the type to `[]`.

**Example** (Checking for an empty array)

```ts
import { Array } from "effect"

console.log(Array.isArrayEmpty([])) // true
console.log(Array.isArrayEmpty([1, 2, 3])) // false
```

**See**

- `isReadonlyArrayEmpty` — readonly variant
- `isArrayNonEmpty` — opposite check

**Signature**

```ts
declare const isArrayEmpty: <A>(self: Array<A>) => self is []
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L885)

Since v4.0.0