Package: `effect`<br />
Module: `Equal`<br />

## Equal.byReference

Creates a proxy that uses reference equality instead of structural equality.

When to use:
- When you have a plain object or array that should be compared by identity
  (reference), not by contents.
- When you want to preserve the original object unchanged and get a new
  reference-equal handle.

Behavior:
- Returns a `Proxy` wrapping `obj`. The proxy reads through to the
  original, so property access is unchanged.
- The proxy is registered in an internal WeakSet; `equals` returns
  `false` for any pair where at least one operand is in that set (unless
  they are the same reference).
- Each call creates a **new** proxy, so `byReference(x) !== byReference(x)`.
- Does **not** mutate the original object (unlike `byReferenceUnsafe`).

**Example** (opting out of structural equality)

```ts
import { Equal } from "effect"

const a = { x: 1 }
const b = { x: 1 }

console.log(Equal.equals(a, b)) // true  (structural)

const aRef = Equal.byReference(a)
console.log(Equal.equals(aRef, b))    // false (reference)
console.log(Equal.equals(aRef, aRef)) // true  (same reference)
console.log(aRef.x)                   // 1     (proxy reads through)
```

**See**

- `byReferenceUnsafe` — same effect without a proxy (mutates the
  original)
- `equals` — the comparison function affected by this opt-out

**Signature**

```ts
declare const byReference: <T extends object>(obj: T) => T
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equal.ts#L550)

Since v2.0.0