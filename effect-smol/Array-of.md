Package: `effect`<br />
Module: `Array`<br />

## Array.of

Wraps a single value in a `NonEmptyArray`.

**Example** (Creating a single-element array)

```ts
import { Array } from "effect"

console.log(Array.of(1)) // [1]
```

**See**

- `make` — create from multiple values
- `empty` — create an empty array

**Signature**

```ts
declare const of: <A>(a: A) => NonEmptyArray<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2937)

Since v2.0.0