Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.PartConstructorParams

A utility type for specifying the parameters required to construct a
specific part of a prompt.

**Signature**

```ts
type PartConstructorParams<P> = Omit<P, PartTypeId | "type" | "options"> & {
  /**
   * Optional provider-specific options for this part.
   */
  readonly options?: Part["options"] | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L242)

Since v1.0.0