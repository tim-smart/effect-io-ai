Package: `effect`<br />
Module: `Array`<br />

## Array.rotate

Transforms an array by rotating it `n` steps. Positive `n` rotates right; negative `n`
rotates left.

**When to use**

Use when elements should wrap around the end of the array rather than being
dropped.

**Details**

- `n` is rounded to the nearest integer before rotating.
- Preserves `NonEmptyArray` in the return type.
- Returns a copy for empty arrays or when the normalized rotation is `0`.

**Example** (Rotating elements)

```ts
import { Array } from "effect"

console.log(Array.rotate(["a", "b", "c", "d"], 2)) // ["c", "d", "a", "b"]
```

**See**

- `take` for taking a fixed number of elements from the start
- `drop` for dropping a fixed number of elements from the start

**Signature**

```ts
declare const rotate: { (n: number): <S extends Iterable<any>>(self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S>>; <A>(self: NonEmptyReadonlyArray<A>, n: number): NonEmptyArray<A>; <A>(self: Iterable<A>, n: number): Array<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2534)

Since v2.0.0