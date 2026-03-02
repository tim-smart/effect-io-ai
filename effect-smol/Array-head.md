Package: `effect`<br />
Module: `Array`<br />

## Array.head

Returns the first element of an array wrapped in `Option.some`, or
`Option.none` if the array is empty.

**Example** (Getting the first element)

```ts
import { Array } from "effect"

console.log(Array.head([1, 2, 3])) // Some(1)
console.log(Array.head([])) // None
```

**See**

- `headNonEmpty` — direct access when array is known non-empty
- `last` — get the last element

**Signature**

```ts
declare const head: <A>(self: ReadonlyArray<A>) => Option.Option<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1004)

Since v2.0.0