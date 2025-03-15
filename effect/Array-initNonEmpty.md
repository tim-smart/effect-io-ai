Package: `effect`<br />
Module: `Array`<br />

## Array.initNonEmpty

Get all but the last element of a non empty array, creating a new array.

**Example**

```ts
import { Array } from "effect"

const result = Array.initNonEmpty([1, 2, 3, 4])
console.log(result) // [1, 2, 3]
```

**Signature**

```ts
declare const initNonEmpty: <A>(self: NonEmptyReadonlyArray<A>) => Array<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L778)

Since v2.0.0