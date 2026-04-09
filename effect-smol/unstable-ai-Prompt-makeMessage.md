Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.makeMessage

Creates a new message with the specified role.

**Example**

```ts
import { Prompt } from "effect/unstable/ai"

const textPart = Prompt.makePart("text", {
  text: "Hello, world!"
})

const filePart = Prompt.makeMessage("user", {
  content: [textPart]
})
```

**Signature**

```ts
declare const makeMessage: <const Role extends Message["role"]>(role: Role, params: Omit<Extract<Message, { role: Role; }>, typeof MessageTypeId | "role" | "options"> & { readonly options?: Extract<Message, { role: Role; }>["options"] | undefined; }) => Extract<Message, { role: Role; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L1042)

Since v4.0.0