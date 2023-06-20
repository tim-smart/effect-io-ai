# patch

Applies a `Patch` to the specified `Context` to produce a new patched
`Context`.

To import and use `patch` from the "ContextPatch" module:

```ts
import * as ContextPatch from '@effect/data/Differ/ContextPatch'

// Can be accessed like this
ContextPatch.patch
```

**Signature**

```ts
export declare const patch: {
  <Input>(context: Context<Input>): <Output>(self: ContextPatch<Input, Output>) => Context<Output>
  <Input, Output>(self: ContextPatch<Input, Output>, context: Context<Input>): Context<Output>
}
```
