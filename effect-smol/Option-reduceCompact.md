Package: `effect`<br />
Module: `Option`<br />

## Option.reduceCompact

Reduces an iterable of `Option`s to a single value, skipping `None` entries.

**When to use**

- Aggregating values from a collection where some may be absent

**Behavior**

- Iterates through the collection, applying `f` only to `Some` values
- `None` values are skipped entirely
- Returns the accumulated result

**Example** (Summing present values)

```ts
import { Option, pipe } from "effect"

const items = [Option.some(1), Option.none(), Option.some(2), Option.none()]

console.log(pipe(items, Option.reduceCompact(0, (b, a) => b + a)))
// Output: 3
```

**Signature**

```ts
declare const reduceCompact: { <B, A>(b: B, f: (b: B, a: A) => B): (self: Iterable<Option<A>>) => B; <A, B>(self: Iterable<Option<A>>, b: B, f: (b: B, a: A) => B): B; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L1876)

Since v2.0.0