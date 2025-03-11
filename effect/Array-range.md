## range

Return a `NonEmptyArray` containing a range of integers, including both endpoints.

**Example**

```ts
import { range } from "effect/Array"

const result = range(1, 3)
console.log(result) // [1, 2, 3]
```

**Signature**

```ts
declare const range: (start: number, end: number) => NonEmptyArray<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L126)

Since v2.0.0