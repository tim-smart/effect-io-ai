Package: `effect`<br />
Module: `Array`<br />

## Array.ensure

Normalizes a value that is either a single element or an array into an array.

**When to use**

Use to normalize input that may be a single value or an array into a consistent
array.

**Details**

If the input is already an array, this returns it by reference. If the input
is a single value, this wraps it in a one-element array. This is useful for
APIs that accept `A | Array<A>`.

**Example** (Normalizing input)

```ts
import { Array } from "effect"

console.log(Array.ensure("a")) // ["a"]
console.log(Array.ensure(["a", "b", "c"])) // ["a", "b", "c"]
```

**See**

- `of` — always wrap in a single-element array
- `fromIterable` — convert any iterable

**Signature**

```ts
declare const ensure: <A>(self: ReadonlyArray<A> | A) => Array<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L411)

Since v3.3.0