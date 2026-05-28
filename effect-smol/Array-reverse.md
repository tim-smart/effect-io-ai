Package: `effect`<br />
Module: `Array`<br />

## Array.reverse

Reverses an iterable into a new array.

**When to use**

Use to reverse the order of elements without mutating the original input.

**Details**

- Preserves `NonEmptyArray` in the return type.

**Example** (Reversing an array)

```ts
import { Array } from "effect"

console.log(Array.reverse([1, 2, 3, 4])) // [4, 3, 2, 1]
```

**Signature**

```ts
declare const reverse: <S extends Iterable<any>>(self: S) => S extends NonEmptyReadonlyArray<infer A> ? NonEmptyArray<A> : S extends Iterable<infer A> ? Array<A> : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2100)

Since v2.0.0