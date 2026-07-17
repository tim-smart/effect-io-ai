Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.Refinement

A predicate that also narrows the input type when it returns `true`.

**When to use**

Use when you want a runtime check that refines `A` to `B` for TypeScript,
especially when composing type guards with `compose` or safely
checking `unknown` values.

**Details**

A refinement returns a type predicate (`a is B`). Use it with `if` or
`filter` to narrow types.

**Example** (Narrowing unknown values)

```ts
import { Predicate } from "effect"

const isString: Predicate.Refinement<unknown, string> = (u): u is string => typeof u === "string"

const data: unknown = "hello"
if (isString(data)) {
  console.log(data.toUpperCase())
}
```

**See**

- `Predicate`
- `compose`
- `isString`

**Signature**

```ts
export interface Refinement<in A, out B extends A> {
  (a: A): a is B
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L113)

Since v2.0.0