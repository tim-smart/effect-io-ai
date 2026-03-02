Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.Struct

Creates a predicate for objects by applying predicates to named properties.

When to use:
- You want to validate a record shape at runtime.
- You want to lift property predicates into an object predicate.

Behavior:
- Pure; does not mutate input.
- Returns a refinement if any field predicate is a refinement.
- Checks only the specified keys; extra keys are ignored.

**Example** (Struct predicate)

```ts
import { Predicate } from "effect"

const userCheck = Predicate.Struct({
  id: Predicate.isNumber,
  name: Predicate.isString
})

console.log(userCheck({ id: 1, name: "Ada" }))
```

See also: `Tuple`, `hasProperty`

**Signature**

```ts
declare const Struct: <R extends Record<string, Predicate.Any>>(fields: R) => [Extract<R[keyof R], Refinement.Any>] extends [never] ? Predicate<{ readonly [K in keyof R]: Predicate.In<R[K]>; }> : Refinement<{ readonly [K in keyof R]: R[K] extends Refinement.Any ? Refinement.In<R[K]> : Predicate.In<R[K]>; }, { readonly [K in keyof R]: R[K] extends Refinement.Any ? Refinement.Out<R[K]> : Predicate.In<R[K]>; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Predicate.ts#L1475)

Since v4.0.0