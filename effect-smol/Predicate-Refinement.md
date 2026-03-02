Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.Refinement

A predicate that also narrows the input type when it returns `true`.

When to use:
- You want a runtime check that refines `A` to `B` for TypeScript.
- You want to compose multiple type guards with `compose`.
- You need to guard `unknown` values safely.

Behavior:
- Pure function; does not mutate input.
- Returns a type predicate (`a is B`).
- Use with `if`/`filter` to narrow types.

**Example** (Narrow unknown)

```ts
import { Predicate } from "effect"

const isString: Predicate.Refinement<unknown, string> = (u): u is string => typeof u === "string"

const data: unknown = "hello"
if (isString(data)) {
  console.log(data.toUpperCase())
}
```

See also: `Predicate`, `compose`, `isString`

**Signature**

```ts
export interface Refinement<in A, out B extends A> {
  (a: A): a is B
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L138)

Since v2.0.0