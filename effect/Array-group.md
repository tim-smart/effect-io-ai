Package: `effect`<br />
Module: `Array`<br />

## Array.group

Group equal, consecutive elements of a `NonEmptyReadonlyArray` into `NonEmptyArray`s.

**Example**

```ts
import { Array } from "effect"

const result = Array.group([1, 1, 2, 2, 2, 3, 1])
console.log(result) // [[1, 1], [2, 2, 2], [3], [1]]
```

**Signature**

```ts
declare const group: <A>(self: NonEmptyReadonlyArray<A>) => NonEmptyArray<NonEmptyArray<A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2081)

Since v2.0.0