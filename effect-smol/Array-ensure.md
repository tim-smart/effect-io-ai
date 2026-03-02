Package: `effect`<br />
Module: `Array`<br />

## Array.ensure

Normalizes a value that is either a single element or an array into an array.

- If the input is already an array, returns it by reference.
- If the input is a single value, wraps it in a one-element array.
- Useful for APIs that accept `A | Array<A>`.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L363)

Since v3.3.0