Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.PartConstructorParams

A utility type for specifying the parameters required to construct a
specific part of a prompt.

**Signature**

```ts
type PartConstructorParams<P> = Omit<P, typeof PartTypeId | "type" | "options"> & {
  /**
   * Optional provider-specific options for this part.
   */
  readonly options?: Part["options"] | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L239)

Since v4.0.0