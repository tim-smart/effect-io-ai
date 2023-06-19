# patch

Applies a `Patch` to the specified `Context` to produce a new patched
`Context`.

Part of the `ContextPatch` module, imported from `@effect/data/Differ/ContextPatch`.

**Signature**

```ts
export declare const patch: {
  <Input>(context: Context<Input>): <Output>(self: ContextPatch<Input, Output>) => Context<Output>
  <Input, Output>(self: ContextPatch<Input, Output>, context: Context<Input>): Context<Output>
}
```
