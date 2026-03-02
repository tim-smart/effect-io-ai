Package: `effect`<br />
Module: `Cause`<br />

## Cause.combine

Merges two causes into a single cause whose `reasons` array is the union
of both inputs (de-duplicated by value equality).

- Combining with `empty` returns the other cause unchanged.
- If the result is structurally equal to `self`, `self` is returned
  (referential shortcut).

**Example** (combining two causes)

```ts
import { Cause } from "effect"

const cause1 = Cause.fail("error1")
const cause2 = Cause.fail("error2")
const combined = Cause.combine(cause1, cause2)
console.log(combined.reasons.length) // 2
```

**See**

- `fromReasons` — build a cause from an array of reasons

**Signature**

```ts
declare const combine: { <E2>(that: Cause<E2>): <E>(self: Cause<E>) => Cause<E | E2>; <E, E2>(self: Cause<E>, that: Cause<E2>): Cause<E | E2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L690)

Since v4.0.0