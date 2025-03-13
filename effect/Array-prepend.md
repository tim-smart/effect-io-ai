Package: `effect`<br />
Module: `Array`<br />

## Array.prepend

Prepend an element to the front of an `Iterable`, creating a new `NonEmptyArray`.

**Example**

```ts
import { Array } from "effect"

const result = Array.prepend([2, 3, 4], 1)
console.log(result) // [1, 2, 3, 4]
```

**Signature**

```ts
declare const prepend: { <B>(head: B): <A>(self: Iterable<A>) => NonEmptyArray<A | B>; <A, B>(self: Iterable<A>, head: B): NonEmptyArray<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L364)

Since v2.0.0