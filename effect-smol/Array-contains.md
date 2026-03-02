Package: `effect`<br />
Module: `Array`<br />

## Array.contains

Tests whether an array contains a value, using `Equal.equivalence()` for
comparison.

**Example** (Checking membership)

```ts
import { Array, pipe } from "effect"

console.log(pipe(["a", "b", "c", "d"], Array.contains("c"))) // true
```

**See**

- `containsWith` — use custom equality

**Signature**

```ts
declare const contains: { <A>(a: A): (self: Iterable<A>) => boolean; <A>(self: Iterable<A>, a: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L2259)

Since v2.0.0