Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.Tuple

Creates a predicate for tuples by applying predicates to each element.

When to use:
- You want to validate tuple positions independently.
- You want to lift element predicates into a tuple predicate.

Behavior:
- Pure; does not mutate input.
- Returns a refinement if any element predicate is a refinement.
- Stops at the first failing element.

**Example** (Tuple predicate)

```ts
import { Predicate } from "effect"

const tupleCheck = Predicate.Tuple([(n: number) => n > 0, Predicate.isString])

console.log(tupleCheck([1, "ok"]))
```

See also: `Struct`, `isTupleOf`

**Signature**

```ts
declare const Tuple: <const T extends ReadonlyArray<Predicate.Any>>(elements: T) => [Extract<T[number], Refinement.Any>] extends [never] ? Predicate<{ readonly [I in keyof T]: Predicate.In<T[I]>; }> : Refinement<{ readonly [I in keyof T]: T[I] extends Refinement.Any ? Refinement.In<T[I]> : Predicate.In<T[I]>; }, { readonly [I in keyof T]: T[I] extends Refinement.Any ? Refinement.Out<T[I]> : Predicate.In<T[I]>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1427)

Since v4.0.0