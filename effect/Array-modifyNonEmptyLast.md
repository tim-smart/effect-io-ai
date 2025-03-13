Package: `effect`<br />
Module: `Array`<br />

## Array.modifyNonEmptyLast

Apply a function to the last element, creating a new `NonEmptyReadonlyArray`.

**Example**

```ts
import { Array } from "effect"

const result = Array.modifyNonEmptyLast([1, 2, 3], n => n * 2)
console.log(result) // [1, 2, 6]
```

**Signature**

```ts
declare const modifyNonEmptyLast: { <A, B>(f: (a: A) => B): (self: NonEmptyReadonlyArray<A>) => NonEmptyArray<A | B>; <A, B>(self: NonEmptyReadonlyArray<A>, f: (a: A) => B): NonEmptyArray<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1617)

Since v2.0.0