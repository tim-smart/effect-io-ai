Package: `effect`<br />
Module: `Array`<br />

## Array.map

Transforms each element using a function, returning a new array.

- The function receives `(element, index)`.
- Preserves `NonEmptyArray` in the return type.

**Example** (Doubling values)

```ts
import { Array } from "effect"

console.log(Array.map([1, 2, 3], (x) => x * 2)) // [2, 4, 6]
```

**See**

- `flatMap` — map and flatten

**Signature**

```ts
declare const map: { <S extends ReadonlyArray<any>, B>(f: (a: ReadonlyArray.Infer<S>, i: number) => B): (self: S) => ReadonlyArray.With<S, B>; <S extends ReadonlyArray<any>, B>(self: S, f: (a: ReadonlyArray.Infer<S>, i: number) => B): ReadonlyArray.With<S, B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L3071)

Since v2.0.0