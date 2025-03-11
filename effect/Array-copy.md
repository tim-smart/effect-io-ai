## copy

Copies an array.

**Example**

```ts
import { Array } from "effect"

const result = Array.copy([1, 2, 3])
console.log(result) // [1, 2, 3]
```

**Signature**

```ts
declare const copy: { <A>(self: NonEmptyReadonlyArray<A>): NonEmptyArray<A>; <A>(self: ReadonlyArray<A>): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1910)

Since v2.0.0