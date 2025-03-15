Package: `effect`<br />
Module: `Array`<br />

## Array.isNonEmptyArray

Determine if an `Array` is non empty narrowing down the type to `NonEmptyArray`.

An `Array` is considered to be a `NonEmptyArray` if it contains at least one element.

**Example**

```ts
import { Array } from "effect"

console.log(Array.isNonEmptyArray([])) // false
console.log(Array.isNonEmptyArray([1, 2, 3])) // true
```

**Signature**

```ts
declare const isNonEmptyArray: <A>(self: Array<A>) => self is NonEmptyArray<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L570)

Since v2.0.0