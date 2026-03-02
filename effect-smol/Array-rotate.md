Package: `effect`<br />
Module: `Array`<br />

## Array.rotate

Rotates an array by `n` steps. Positive `n` rotates left (front elements
move to the back).

- Preserves `NonEmptyArray` in the return type.
- Returns a copy for empty arrays or `n === 0`.

**Example** (Rotating elements)

```ts
import { Array } from "effect"

console.log(Array.rotate(["a", "b", "c", "d"], 2)) // ["c", "d", "a", "b"]
```

**Signature**

```ts
declare const rotate: { (n: number): <S extends Iterable<any>>(self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S>>; <A>(self: NonEmptyReadonlyArray<A>, n: number): NonEmptyArray<A>; <A>(self: Iterable<A>, n: number): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2190)

Since v2.0.0