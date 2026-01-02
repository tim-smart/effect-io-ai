Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.MessageConstructorParams

A utility type for specifying the parameters required to construct a
specific message for a prompt.

**Signature**

```ts
type MessageConstructorParams<M> = Omit<M, MessageTypeId | "role" | "options"> & {
  /**
   * Optional provider-specific options for this message.
   */
  readonly options?: Part["options"] | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L817)

Since v1.0.0