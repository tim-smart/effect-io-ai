Package: `effect`<br />
Module: `Array`<br />

## Array.intersperse

Places an element in between members of an `Iterable`.
If the input is a non-empty array, the result is also a non-empty array.

**Example**

```ts
import { Array } from "effect"

const result = Array.intersperse([1, 2, 3], 0)
console.log(result) // [1, 0, 2, 0, 3]
```

**Signature**

```ts
declare const intersperse: { <B>(middle: B): <S extends Iterable<any>>(self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>; <A, B>(self: NonEmptyReadonlyArray<A>, middle: B): NonEmptyArray<A | B>; <A, B>(self: Iterable<A>, middle: B): Array<A | B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1658)

Since v2.0.0