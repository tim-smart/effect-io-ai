# combine

Combines two patches to produce a new patch that describes applying the
updates from this patch and then the updates from the specified patch.

Part of the `ContextPatch` module, imported from `@effect/data/Differ/ContextPatch`.

**Signature**

```ts
export declare const combine: {
  <Output, Output2>(that: ContextPatch<Output, Output2>): <Input>(
    self: ContextPatch<Input, Output>
  ) => ContextPatch<Input, Output2>
  <Input, Output, Output2>(self: ContextPatch<Input, Output>, that: ContextPatch<Output, Output2>): ContextPatch<
    Input,
    Output2
  >
}
```
