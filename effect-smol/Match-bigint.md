Package: `effect`<br />
Module: `Match`<br />

## Match.bigint

Matches values of type `bigint`.

This predicate refines unknown values to bigints, allowing pattern matching
on bigint types. BigInts are used for representing integers with arbitrary precision.

**Example**

```ts
import { Match } from "effect"

const processLargeNumber = Match.type<unknown>().pipe(
  Match.when(Match.bigint, (big) => {
    if (big > 9007199254740991n) {
      return `Large integer: ${big.toString()}`
    }
    return `BigInt: ${big.toString()}`
  }),
  Match.when(Match.number, (num) => `Regular number: ${num}`),
  Match.orElse(() => "Not a numeric type")
)

console.log(processLargeNumber(123n)) // "BigInt: 123"
console.log(processLargeNumber(9007199254740992n)) // "Large integer: 9007199254740992"
console.log(processLargeNumber(123)) // "Regular number: 123"
console.log(processLargeNumber("123")) // "Not a numeric type"
```

**Signature**

```ts
declare const bigint: Predicate.Refinement<unknown, bigint>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1423)

Since v4.0.0