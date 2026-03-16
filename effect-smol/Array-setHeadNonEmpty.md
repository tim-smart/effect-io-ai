Package: `effect`<br />
Module: `Array`<br />

## Array.setHeadNonEmpty

Replaces the first element of a non-empty array with a new value.

**Example** (Setting the head)

```ts
import { Array } from "effect"

console.log(Array.setHeadNonEmpty([1, 2, 3], 10)) // [10, 2, 3]
```

**See**

- `modifyHeadNonEmpty` — transform the head with a function
- `setLastNonEmpty` — replace the last element

**Signature**

```ts
declare const setHeadNonEmpty: { <B>(b: B): <A>(self: NonEmptyReadonlyArray<A>) => NonEmptyArray<A | B>; <A, B>(self: NonEmptyReadonlyArray<A>, b: B): NonEmptyArray<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2115)

Since v2.0.0