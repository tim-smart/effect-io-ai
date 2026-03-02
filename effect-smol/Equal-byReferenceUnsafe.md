Package: `effect`<br />
Module: `Equal`<br />

## Equal.byReferenceUnsafe

Permanently marks an object to use reference equality, without creating a
proxy.

When to use:
- When you want reference equality semantics and can accept that the
  original object is **permanently** modified.
- When proxy overhead is unacceptable (hot paths, large collections).

Behavior:
- Adds `obj` to an internal WeakSet. From that point on, `equals`
  treats it as reference-only.
- Returns the **same** object (not a copy or proxy), so
  `byReferenceUnsafe(x) === x`.
- The marking is irreversible for the lifetime of the object.
- Does **not** affect the object's prototype, properties, or behavior
  beyond equality checks.

**Example** (marking an object for reference equality)

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Equal.ts#L591)

Since v2.0.0