Package: `effect`<br />
Module: `Array`<br />

## Array.unappend

Return a tuple containing a copy of the `NonEmptyReadonlyArray` without its last element, and that last element.

**Example**

```ts
import { Array } from "effect";

const result = Array.unappend([1, 2, 3, 4])
console.log(result) // [[1, 2, 3], 4]
```

**Signature**

```ts
declare const unappend: <A>(self: NonEmptyReadonlyArray<A>) => [arrayWithoutLastElement: Array<A>, lastElement: A]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L669)

Since v2.0.0