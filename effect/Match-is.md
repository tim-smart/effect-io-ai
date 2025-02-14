# is

Matches a specific set of literal values (e.g., `Match.is("a", 42, true)`).

To import and use `is` from the "Match" module:

```ts
import * as Match from "effect/Match"
// Can be accessed like this
Match.is
```

**Signature**

```ts
export declare const is: <Literals extends ReadonlyArray<string | number | bigint | boolean | null>>(
  ...literals: Literals
) => Predicate.Refinement<unknown, Literals[number]>
```
