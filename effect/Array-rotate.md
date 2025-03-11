## rotate

Rotate an `Iterable` by `n` steps.
If the input is a non-empty array, the result is also a non-empty array.

**Example**

```ts
import { Array } from "effect"

const result = Array.rotate(['a', 'b', 'c', 'd'], 2)
console.log(result) // ['c', 'd', 'a', 'b']
```

**Signature**

```ts
declare const rotate: { (n: number): <S extends Iterable<any>>(self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S>>; <A>(self: NonEmptyReadonlyArray<A>, n: number): NonEmptyArray<A>; <A>(self: Iterable<A>, n: number): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L1663)

Since v2.0.0