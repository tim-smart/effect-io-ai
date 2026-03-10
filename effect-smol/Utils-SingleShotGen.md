Package: `effect`<br />
Module: `Utils`<br />

## Utils.SingleShotGen

An `IterableIterator` that yields its wrapped value exactly once.

When to use:

- Implement `[Symbol.iterator]()` on Effect-like types so they can be
  `yield*`-ed inside generator functions (e.g. `Effect.gen`, `Option.gen`).
- You almost never construct this directly — it is created internally by
  yieldable types.

Behavior:

- The first call to `next()` returns `{ value: self, done: false }`.
- Every subsequent call returns `{ value: a, done: true }` where `a` is
  the argument passed to `next()`.
- `[Symbol.iterator]()` returns a **new** `SingleShotGen` wrapping the same
  value, so the outer type can be iterated multiple times.
- Does not mutate the wrapped value.

**Example** (Yielding a wrapped value in a generator)

```ts
import { Utils } from "effect"

const gen = new Utils.SingleShotGen<string, number>("hello")

// First call yields the wrapped value
console.log(gen.next(0))
// { value: "hello", done: false }

// Second call signals completion with the provided value
console.log(gen.next(42))
// { value: 42, done: true }
```

**See**

- `Gen` — the type-level signature that relies on `SingleShotGen`

**Signature**

```ts
declare class SingleShotGen<T, A> { constructor(self: T) }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Utils.ts#L103)

Since v2.0.0