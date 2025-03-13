Package: `effect`<br />
Module: `Array`<br />

## Array.setNonEmptyLast

Change the last element, creating a new `NonEmptyReadonlyArray`.

**Example**

```ts
import { Array } from "effect"

const result = Array.setNonEmptyLast([1, 2, 3], 4)
console.log(result) // [1, 2, 4]
```

**Signature**

```ts
declare const setNonEmptyLast: { <B>(b: B): <A>(self: NonEmptyReadonlyArray<A>) => NonEmptyArray<A | B>; <A, B>(self: NonEmptyReadonlyArray<A>, b: B): NonEmptyArray<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1640)

Since v2.0.0