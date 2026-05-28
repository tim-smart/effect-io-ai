Package: `effect`<br />
Module: `Array`<br />

## Array.Array

Exposes the global array constructor.

**When to use**

Use to access native JavaScript array constructor methods such as `isArray`
or `from` from the Effect module namespace.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L124)

Since v4.0.0