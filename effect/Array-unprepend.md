Package: `effect`<br />
Module: `Array`<br />

## Array.unprepend

Return a tuple containing the first element, and a new `Array` of the remaining elements, if any.

**Example**

```ts
import { Array } from "effect";

const result = Array.unprepend([1, 2, 3, 4])
console.log(result) // [1, [2, 3, 4]]
```

**Signature**

```ts
declare const unprepend: <A>(self: NonEmptyReadonlyArray<A>) => [firstElement: A, remainingElements: Array<A>]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L653)

Since v2.0.0