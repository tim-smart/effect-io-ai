# record

Matches objects where keys are `string` or `symbol` and values are `unknown`.

To import and use `record` from the "Match" module:

```ts
import * as Match from "effect/Match"
// Can be accessed like this
Match.record
```

**Signature**

```ts
export declare const record: Predicate.Refinement<unknown, { [x: string]: unknown; [x: symbol]: unknown }>
```
