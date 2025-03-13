Package: `effect`<br />
Module: `Array`<br />

## Array.append

Append an element to the end of an `Iterable`, creating a new `NonEmptyArray`.

**Example**

```ts
import { Array } from "effect"

const result = Array.append([1, 2, 3], 4);
console.log(result) // [1, 2, 3, 4]
```

**Signature**

```ts
declare const append: { <B>(last: B): <A>(self: Iterable<A>) => NonEmptyArray<A | B>; <A, B>(self: Iterable<A>, last: B): NonEmptyArray<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L412)

Since v2.0.0