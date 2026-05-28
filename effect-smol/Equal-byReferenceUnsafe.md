Package: `effect`<br />
Module: `Equal`<br />

## Equal.byReferenceUnsafe

Marks an object permanently to use reference equality, without creating a proxy.

**When to use**

Use when when you want reference equality semantics and can accept that the
  original object is **permanently** modified.
- When proxy overhead is unacceptable (hot paths, large collections).

**Details**

- Adds `obj` to an internal WeakSet. From that point on, `equals`
  treats it as reference-only.
- Returns the **same** object (not a copy or proxy), so
  `byReferenceUnsafe(x) === x`.
- Does **not** affect the object's prototype, properties, or behavior
  beyond equality checks.

**Gotchas**

The marking is irreversible for the lifetime of the object.

**Example** (Marking an Object for Reference Equality)

```ts
import { Equal } from "effect"

const obj1 = { a: 1, b: 2 }
const obj2 = { a: 1, b: 2 }

Equal.byReferenceUnsafe(obj1)

console.log(Equal.equals(obj1, obj2))   // false (reference)
console.log(Equal.equals(obj1, obj1))   // true  (same reference)
console.log(obj1 === Equal.byReferenceUnsafe(obj1)) // true (same object)
```

**See**

- `byReference` — safer alternative that creates a proxy
- `equals` — the comparison function affected by this opt-out

**Signature**

```ts
declare const byReferenceUnsafe: <T extends object>(obj: T) => T
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equal.ts#L620)

Since v4.0.0