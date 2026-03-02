Package: `effect`<br />
Module: `Response`<br />

## Response.ErrorPart

Response part indicating that an error occurred generating the response.

**Example**

```ts
import { Response } from "effect/unstable/ai"

const errorPart: Response.ErrorPart = Response.makePart("error", {
  error: new Error("boom")
})
```

**Signature**

```ts
export interface ErrorPart extends BasePart<"error", ErrorPartMetadata> {
  readonly error: unknown
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L2496)

Since v1.0.0