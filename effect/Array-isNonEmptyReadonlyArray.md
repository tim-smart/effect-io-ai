Package: `effect`<br />
Module: `Array`<br />

## Array.isNonEmptyReadonlyArray

Determine if a `ReadonlyArray` is non empty narrowing down the type to `NonEmptyReadonlyArray`.

A `ReadonlyArray` is considered to be a `NonEmptyReadonlyArray` if it contains at least one element.

**Example**

```ts
import { Array } from "effect"

console.log(Array.isNonEmptyReadonlyArray([])) // false
console.log(Array.isNonEmptyReadonlyArray([1, 2, 3])) // true
```

**Signature**

```ts
declare const isNonEmptyReadonlyArray: <A>(self: ReadonlyArray<A>) => self is NonEmptyReadonlyArray<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L592)

Since v2.0.0