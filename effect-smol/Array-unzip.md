Package: `effect`<br />
Module: `Array`<br />

## Array.unzip

Splits an array of pairs into two arrays. Inverse of `zip`.

**Example** (Unzipping pairs)

```ts
import { Array } from "effect"

console.log(Array.unzip([[1, "a"], [2, "b"], [3, "c"]])) // [[1, 2, 3], ["a", "b", "c"]]
```

**See**

- `zip` — combine two arrays into pairs

**Signature**

```ts
declare const unzip: <S extends Iterable<readonly [any, any]>>(self: S) => S extends NonEmptyReadonlyArray<readonly [infer A, infer B]> ? [NonEmptyArray<A>, NonEmptyArray<B>] : S extends Iterable<readonly [infer A, infer B]> ? [Array<A>, Array<B>] : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2010)

Since v2.0.0