Package: `effect`<br />
Module: `Array`<br />

## Array.setLastNonEmpty

Replaces the last element of a non-empty array with a new value.

**Example** (Setting the last element)

```ts
import { Array } from "effect"

console.log(Array.setLastNonEmpty([1, 2, 3], 4)) // [1, 2, 4]
```

**See**

- `modifyLastNonEmpty` — transform the last element with a function
- `setHeadNonEmpty` — replace the first element

**Signature**

```ts
declare const setLastNonEmpty: { <B>(b: B): <A>(self: NonEmptyReadonlyArray<A>) => NonEmptyArray<A | B>; <A, B>(self: NonEmptyReadonlyArray<A>, b: B): NonEmptyArray<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2167)

Since v2.0.0