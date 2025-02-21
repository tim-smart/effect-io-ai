# defined

Matches any defined (non-null and non-undefined) value.

To import and use `defined` from the "Match" module:

```ts
import * as Match from "effect/Match"
// Can be accessed like this
Match.defined
```

**Signature**

```ts
export declare const defined: <A>(u: A) => u is A & {}
```
