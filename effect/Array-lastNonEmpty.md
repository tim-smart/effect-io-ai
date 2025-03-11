## lastNonEmpty

Get the last element of a non empty array.

**Example**

```ts
import { Array } from "effect"

const result = Array.lastNonEmpty([1, 2, 3, 4])
console.log(result) // 4
```

**Signature**

```ts
declare const lastNonEmpty: <A>(self: NonEmptyReadonlyArray<A>) => A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L725)

Since v2.0.0