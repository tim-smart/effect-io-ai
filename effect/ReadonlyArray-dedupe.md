# dedupe

Remove duplicates from am `Iterable`, keeping the first occurrence of an element.

To import and use `dedupe` from the "ReadonlyArray" module:

```ts
import * as ReadonlyArray from "effect/ReadonlyArray"
// Can be accessed like this
ReadonlyArray.dedupe
```

**Signature**

```ts
export declare const dedupe: <A>(self: Iterable<A>) => A[]
```
