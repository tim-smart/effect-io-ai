## tailNonEmpty

Get all but the first element of a `NonEmptyReadonlyArray`.

**Example**

```ts
import { Array } from "effect"

const result = Array.tailNonEmpty([1, 2, 3, 4])
console.log(result) // [2, 3, 4]
```

**Signature**

```ts
declare const tailNonEmpty: <A>(self: NonEmptyReadonlyArray<A>) => Array<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L753)

Since v2.0.0