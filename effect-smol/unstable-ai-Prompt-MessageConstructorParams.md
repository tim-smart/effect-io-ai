Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.MessageConstructorParams

A utility type for specifying the parameters required to construct a
specific message for a prompt.

**Signature**

```ts
type MessageConstructorParams<M> = Omit<M, typeof MessageTypeId | "role" | "options"> & {
  /**
   * Optional provider-specific options for this message.
   */
  readonly options?: Part["options"] | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L1068)

Since v4.0.0