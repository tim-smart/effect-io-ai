# instanceOf

Matches instances of a given class.

To import and use `instanceOf` from the "Match" module:

```ts
import * as Match from "effect/Match"
// Can be accessed like this
Match.instanceOf
```

**Signature**

```ts
export declare const instanceOf: <A extends abstract new (...args: any) => any>(
  constructor: A
) => SafeRefinement<InstanceType<A>, never>
```
