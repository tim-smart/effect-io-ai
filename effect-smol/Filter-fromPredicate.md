Package: `effect`<br />
Module: `Filter`<br />

## Filter.fromPredicate

Creates a Filter from a predicate or refinement function.

This is a convenient way to create filters from boolean-returning functions.
When the predicate returns true, the input value is passed through unchanged.
When it returns false, the `fail` type is returned.

**Example**

```ts
import { Filter, Result } from "effect"

// Create filter from predicate
const positiveNumbers = Filter.fromPredicate((n: number) => n > 0)
const nonEmptyStrings = Filter.fromPredicate((s: string) => s.length > 0)

// Type refinement
const isString = Filter.fromPredicate((x: unknown): x is string =>
  typeof x === "string"
)
```

**Signature**

```ts
declare const fromPredicate: { <A, B extends A>(refinement: Predicate.Refinement<A, B>): Filter<A, B, EqualsWith<A, B, A, Exclude<A, B>>>; <A>(predicate: Predicate.Predicate<A>): Filter<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L192)

Since v4.0.0