Package: `effect`<br />
Module: `Array`<br />

## Array.intersperse

Places a separator element between every pair of elements.

- Preserves `NonEmptyArray` in the return type.
- An empty input produces an empty result.

**Example** (Interspersing a separator)

```ts
import { Array } from "effect"

console.log(Array.intersperse([1, 2, 3], 0)) // [1, 0, 2, 0, 3]
```

**See**

- `join` — intersperse and join into a string

**Signature**

```ts
declare const intersperse: { <B>(middle: B): <S extends Iterable<any>>(self: S) => ReadonlyArray.With<S, ReadonlyArray.Infer<S> | B>; <A, B>(self: NonEmptyReadonlyArray<A>, middle: B): NonEmptyArray<A | B>; <A, B>(self: Iterable<A>, middle: B): Array<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2047)

Since v2.0.0