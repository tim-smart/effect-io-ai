Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ErrorPart

Response part indicating that an error occurred generating the response.

**Example**

```ts
import { Response } from "@effect/ai"

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L2274)

Since v1.0.0