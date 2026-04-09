Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.makePart

Creates a new content part of the specified type.

**Example**

```ts
import { Prompt } from "effect/unstable/ai"

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
declare const makePart: <const Type extends Part["type"]>(type: Type, params: Omit<Extract<Part, { type: Type; }>, typeof PartTypeId | "type" | "options"> & { readonly options?: Extract<Part, { type: Type; }>["options"] | undefined; }) => Extract<Part, { type: Type; }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L210)

Since v4.0.0