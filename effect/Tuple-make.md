Package: `effect`<br />
Module: `Tuple`<br />

## Tuple.make

Creates a tuple from the provided arguments.

**When to use**

Use when you need a properly typed tuple without writing `[a, b, c] as const`
or another manual cast.

**Details**

The returned value has the exact tuple type, with each element's literal type
preserved.

**Example** (Creating a tuple)

```ts
import { Tuple } from "effect"

const point = Tuple.make(10, 20, "red")
console.log(point) // [10, 20, "red"]
```

**See**

- `get` – access a single element by index
- `appendElement` – append an element to a tuple

**Signature**

```ts
declare const make: <Elements extends ReadonlyArray<unknown>>(...elements: Elements) => Elements
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tuple.ts#L47)

Since v2.0.0