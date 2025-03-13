Package: `effect`<br />
Module: `Array`<br />

## Array.setNonEmptyHead

Change the head, creating a new `NonEmptyReadonlyArray`.

**Example**

```ts
import { Array } from "effect"

const result = Array.setNonEmptyHead([1, 2, 3], 10)
console.log(result) // [10, 2, 3]
```

**Signature**

```ts
declare const setNonEmptyHead: { <B>(b: B): <A>(self: NonEmptyReadonlyArray<A>) => NonEmptyArray<A | B>; <A, B>(self: NonEmptyReadonlyArray<A>, b: B): NonEmptyArray<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1595)

Since v2.0.0