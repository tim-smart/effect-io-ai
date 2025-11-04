Package: `effect`<br />
Module: `Array`<br />

## Array.groupWith

Group equal, consecutive elements of a `NonEmptyReadonlyArray` into `NonEmptyArray`s using the provided `isEquivalent` function.

**Example**

```ts
import { Array } from "effect"

const result = Array.groupWith(["a", "a", "b", "b", "b", "c", "a"], (x, y) => x === y)
console.log(result) // [["a", "a"], ["b", "b", "b"], ["c"], ["a"]]
```

**Signature**

```ts
declare const groupWith: { <A>(isEquivalent: (self: A, that: A) => boolean): (self: NonEmptyReadonlyArray<A>) => NonEmptyArray<NonEmptyArray<A>>; <A>(self: NonEmptyReadonlyArray<A>, isEquivalent: (self: A, that: A) => boolean): NonEmptyArray<NonEmptyArray<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L2171)

Since v2.0.0