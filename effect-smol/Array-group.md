Package: `effect`<br />
Module: `Array`<br />

## Array.group

Groups consecutive equal elements using `Equal.equivalence()`.

- Only groups **adjacent** elements.

**Example** (Grouping adjacent equal elements)

```ts
import { Array } from "effect"

console.log(Array.group([1, 1, 2, 2, 2, 3, 1])) // [[1, 1], [2, 2, 2], [3], [1]]
```

**See**

- `groupWith` — use custom equality
- `groupBy` — group by a key function into a record

**Signature**

```ts
declare const group: <A>(self: NonEmptyReadonlyArray<A>) => NonEmptyArray<NonEmptyArray<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2641)

Since v2.0.0