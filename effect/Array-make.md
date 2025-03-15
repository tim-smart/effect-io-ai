Package: `effect`<br />
Module: `Array`<br />

## Array.make

Builds a `NonEmptyArray` from an non-empty collection of elements.

**Example**

```ts
import { Array } from "effect"

const result = Array.make(1, 2, 3)
console.log(result) // [1, 2, 3]
```

**Signature**

```ts
declare const make: <Elements extends NonEmptyArray<any>>(...elements: Elements) => NonEmptyArray<Elements[number]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L58)

Since v2.0.0