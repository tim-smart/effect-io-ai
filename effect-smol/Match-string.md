Package: `effect`<br />
Module: `Match`<br />

## Match.string

Matches values of type `string`.

This predicate refines unknown values to strings, allowing pattern matching
on string types. It's commonly used in type-based matchers to handle string cases.

**Example**

```ts
import { Match } from "effect"

const processValue = Match.type<string | number | boolean>().pipe(
  Match.when(Match.string, (str) => `String: ${str.toUpperCase()}`),
  Match.when(Match.number, (num) => `Number: ${num * 2}`),
  Match.when(Match.boolean, (bool) => `Boolean: ${bool ? "yes" : "no"}`),
  Match.exhaustive
)

console.log(processValue("hello")) // "String: HELLO"
console.log(processValue(42)) // "Number: 84"
console.log(processValue(true)) // "Boolean: yes"
```

**Signature**

```ts
declare const string: Predicate.Refinement<unknown, string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Match.ts#L1227)

Since v4.0.0