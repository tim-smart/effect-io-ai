Package: `effect`<br />
Module: `Cause`<br />

## Cause.squash

Collapses a `Cause` into a single `unknown` value, picking the "most
important" failure in this order:

1. First `Fail` error (the `E` value)
2. First `Die` defect
3. A generic `Error("All fibers interrupted without error")` for interrupt-only causes
4. A generic `Error("Empty cause")` for `empty`

This is the function used by `Effect.runPromise` and `Effect.runSync` to
decide what to throw. It is lossy — use `prettyErrors` or iterate
`cause.reasons` when you need all failures.

**Example** (squashing a cause)

```ts
import { Cause } from "effect"

console.log(Cause.squash(Cause.fail("error")))    // "error"
console.log(Cause.squash(Cause.die("defect")))    // "defect"
```

**See**

- `prettyErrors` — non-lossy conversion to `Array<Error>`
- `pretty` — human-readable string rendering

**Signature**

```ts
declare const squash: <E>(self: Cause<E>) => unknown
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L723)

Since v2.0.0