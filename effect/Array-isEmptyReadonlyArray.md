Package: `effect`<br />
Module: `Array`<br />

## Array.isEmptyReadonlyArray

Determine if a `ReadonlyArray` is empty narrowing down the type to `readonly []`.

**Example**

```ts
import { Array } from "effect"

console.log(Array.isEmptyReadonlyArray([])) // true
console.log(Array.isEmptyReadonlyArray([1, 2, 3])) // false
```

**Signature**

```ts
declare const isEmptyReadonlyArray: <A>(self: ReadonlyArray<A>) => self is readonly []
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L551)

Since v2.0.0