Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.appendElement

Appends a single element to the end of a tuple.

**Details**

The result type is `[...T, E]`, preserving all existing element types. The
input tuple is not mutated; a fresh tuple is returned.

**Example** (Appending an element)

```ts
import { pipe, Tuple } from "effect"

const result = pipe(Tuple.make(1, 2), Tuple.appendElement("end"))
console.log(result) // [1, 2, "end"]
```

**See**

- `appendElements` – append multiple elements (another tuple)

**Signature**

```ts
declare const appendElement: { <const E>(element: E): <const T extends ReadonlyArray<unknown>>(self: T) => [...T, E]; <const T extends ReadonlyArray<unknown>, const E>(self: T, element: E): [...T, E]; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tuple.ts#L268)

Since v2.0.0