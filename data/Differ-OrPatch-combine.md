# combine

Combines two or patches to produce a new or patch that describes applying
their changes sequentially.

Part of the `OrPatch` module, imported from `@effect/data/Differ/OrPatch`.

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
