Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.makeMessage

Creates a new message with the specified role.

**Example**

```ts
import { Prompt } from "@effect/ai"

const textPart = Prompt.makePart("text", {
  text: "Hello, world!"
})

const filePart = Prompt.makeMessage("user", {
  content: [textPart]
})
```

**Signature**

```ts
declare const makeMessage: <const Role extends Message["role"]>(role: Role, params: Omit<Extract<Message, { role: Role; }>, MessageTypeId | "role" | "options"> & { readonly options?: Extract<Message, { role: Role; }>["options"]; }) => Extract<Message, { role: Role; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L716)

Since v1.0.0