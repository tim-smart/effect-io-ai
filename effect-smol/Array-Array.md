Package: `effect`<br />
Module: `Array`<br />

## Array.Array

Reference to the global `Array` constructor.

Use this when you need the native `Array` constructor while the `Array`
namespace is in scope (e.g. `Array.Array.isArray`, `Array.Array.from`).

**Example** (Using the Array constructor)

```ts
import { Array } from "effect"

const arr = new Array.Array(3)
console.log(arr) // [undefined, undefined, undefined]
```

**Signature**

```ts
declare const Array: ArrayConstructor
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L121)

Since v4.0.0