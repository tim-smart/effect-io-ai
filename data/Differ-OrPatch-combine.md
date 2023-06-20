# combine

Combines two or patches to produce a new or patch that describes applying
their changes sequentially.

To import and use `combine` from the "OrPatch" module:

```ts
import * as OrPatch from '@effect/data/Differ/OrPatch'

// Can be accessed like this
OrPatch.combine
```

**Signature**

```ts
export declare const combine: {
  <Value, Value2, Patch, Patch2>(that: OrPatch<Value, Value2, Patch, Patch2>): (
    self: OrPatch<Value, Value2, Patch, Patch2>
  ) => OrPatch<Value, Value2, Patch, Patch2>
  <Value, Value2, Patch, Patch2>(
    self: OrPatch<Value, Value2, Patch, Patch2>,
    that: OrPatch<Value, Value2, Patch, Patch2>
  ): OrPatch<Value, Value2, Patch, Patch2>
}
```
