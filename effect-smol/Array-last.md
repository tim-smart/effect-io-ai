Package: `effect`<br />
Module: `Array`<br />

## Array.last

Returns the last element of an array safely wrapped in `Option.some`, or
`Option.none` if the array is empty.

**When to use**

Use to safely get the last element of an array that may be empty.

**Example** (Getting the last element)

```ts
import { Array } from "effect"

console.log(Array.last([1, 2, 3])) // Some(3)
console.log(Array.last([])) // None
```

**See**

- `lastNonEmpty` — direct access when array is known non-empty
- `head` — get the first element

**Signature**

```ts
declare const last: <A>(self: ReadonlyArray<A>) => Option.Option<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L1192)

Since v2.0.0