## modifyNonEmptyHead

Apply a function to the head, creating a new `NonEmptyReadonlyArray`.

**Example**

```ts
import { Array } from "effect"

const result = Array.modifyNonEmptyHead([1, 2, 3], n => n * 10)
console.log(result) // [10, 2, 3]
```

**Signature**

```ts
declare const modifyNonEmptyHead: { <A, B>(f: (a: A) => B): (self: NonEmptyReadonlyArray<A>) => NonEmptyArray<A | B>; <A, B>(self: NonEmptyReadonlyArray<A>, f: (a: A) => B): NonEmptyArray<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1570)

Since v2.0.0