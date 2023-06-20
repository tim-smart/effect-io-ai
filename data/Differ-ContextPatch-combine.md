# combine

Combines two patches to produce a new patch that describes applying the
updates from this patch and then the updates from the specified patch.

To import and use `combine` from the "ContextPatch" module:

```ts
import * as ContextPatch from '@effect/data/Differ/ContextPatch'

// Can be accessed like this
ContextPatch.combine
```

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
