Package: `effect`<br />
Module: `Match`<br />

## Match.SafeRefinement

A safe refinement that narrows types without runtime errors.

`SafeRefinement` provides a way to refine types in pattern matching while
maintaining type safety. Unlike regular predicates, safe refinements can
transform the matched value's type without throwing runtime errors.

**Example**

```ts
import { Match } from "effect"

// Built-in safe refinements
const processValue = Match.type<unknown>().pipe(
  Match.when(Match.string, (s) => s.toUpperCase()),
  Match.when(Match.number, (n) => n * 2),
  Match.when(Match.defined, (value) => `Defined: ${value}`),
  Match.orElse(() => "Undefined or null")
)

console.log(processValue("hello")) // "HELLO"
console.log(processValue(21)) // 42
console.log(processValue(true)) // "Defined: true"
console.log(processValue(null)) // "Undefined or null"
```

**Signature**

```ts
export interface SafeRefinement<in A, out R = A> {
  readonly [SafeRefinementId]: (a: A) => R
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1847)

Since v4.0.0