Package: `effect`<br />
Module: `Match`<br />

## Match.boolean

Matches values of type `boolean`.

This predicate refines unknown values to booleans, allowing pattern matching
on boolean types. It only matches the primitive boolean values `true` and `false`.

**Example**

```ts
import { Match } from "effect"

const describeTruthiness = Match.type<unknown>().pipe(
  Match.when(
    Match.boolean,
    (bool) => bool ? "Definitely true" : "Definitely false"
  ),
  Match.when(0, () => "Falsy number"),
  Match.when("", () => "Empty string"),
  Match.when(Match.null, () => "Null value"),
  Match.orElse(() => "Some other truthy value")
)

console.log(describeTruthiness(true)) // "Definitely true"
console.log(describeTruthiness(false)) // "Definitely false"
console.log(describeTruthiness(0)) // "Falsy number"
console.log(describeTruthiness(1)) // "Some other truthy value"
```

**Signature**

```ts
declare const boolean: Predicate.Refinement<unknown, boolean>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1369)

Since v4.0.0