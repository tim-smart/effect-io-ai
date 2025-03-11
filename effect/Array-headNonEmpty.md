## headNonEmpty

Get the first element of a non empty array.

**Example**

```ts
import { Array } from "effect"

const result = Array.headNonEmpty([1, 2, 3, 4])
console.log(result) // 1
```

**Signature**

```ts
declare const headNonEmpty: <A>(self: NonEmptyReadonlyArray<A>) => A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L699)

Since v2.0.0