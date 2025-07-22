Package: `effect`<br />
Module: `Array`<br />

## Array.reverse

Reverse an `Iterable`, creating a new `Array`.

**Example**

```ts
import { Array } from "effect"

const result = Array.reverse([1, 2, 3, 4])
console.log(result) // [4, 3, 2, 1]
```

**Signature**

```ts
declare const reverse: <S extends Iterable<any>>(self: S) => S extends NonEmptyReadonlyArray<infer A> ? NonEmptyArray<A> : S extends Iterable<infer A> ? Array<A> : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1436)

Since v2.0.0