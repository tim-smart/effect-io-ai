Package: `effect`<br />
Module: `Array`<br />

## Array.Array

Exposes the global array constructor.

**When to use**

Use to access native JavaScript array constructor methods such as `isArray`
or `from` from the Effect module namespace.

**Example** (Accessing the Array constructor)

```ts
import { Array } from "effect"

const arr = new Array.Array(3)
console.log(arr) // [undefined, undefined, undefined]
```

**Signature**

```ts
declare const Array: ArrayConstructor
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L49)

Since v4.0.0