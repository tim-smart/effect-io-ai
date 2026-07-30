Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.makePart

Creates a new content part of the specified type.

**Example**

```ts
import { Prompt } from "@effect/ai"

const textPart = Prompt.makePart("text", {
  text: "Hello, world!"
})

const filePart = Prompt.makePart("file", {
  mediaType: "image/png",
  fileName: "screenshot.png",
  data: new Uint8Array([1, 2, 3])
})
```

**Signature**

```ts
declare const makePart: <const Type extends Part["type"]>(type: Type, params: Omit<Extract<Part, { type: Type; }>, PartTypeId | "type" | "options"> & { readonly options?: Extract<Part, { type: Type; }>["options"] | undefined; }) => Extract<Part, { type: Type; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L213)

Since v1.0.0