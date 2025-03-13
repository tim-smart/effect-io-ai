Package: `effect`<br />
Module: `Array`<br />

## Array.isEmptyArray

Determine if an `Array` is empty narrowing down the type to `[]`.

**Example**

```ts
import { Array } from "effect"

console.log(Array.isEmptyArray([])) // true
console.log(Array.isEmptyArray([1, 2, 3])) // false
```

**Signature**

```ts
declare const isEmptyArray: <A>(self: Array<A>) => self is []
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L537)

Since v2.0.0