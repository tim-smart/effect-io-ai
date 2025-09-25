Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.fromTaggedRequest

Creates a Tool from a Schema.TaggedRequest.

This utility function converts Effect's TaggedRequest schemas into Tool
definitions, automatically mapping the request parameters, success, and
failure schemas.

**Example**

```ts
import { Tool } from "@effect/ai"
import { Schema } from "effect"

// Define a tagged request for user operations
class GetUser extends Schema.TaggedRequest<GetUser>()("GetUser", {
  success: Schema.Struct({
    id: Schema.Number,
    name: Schema.String,
    email: Schema.String
  }),
  failure: Schema.Struct({
    error: Schema.Literal("UserNotFound", "DatabaseError"),
    message: Schema.String
  }),
  payload: {
    userId: Schema.Number
  }
}) {}

// Convert to a Tool
const getUserTool = Tool.fromTaggedRequest(GetUser)
```

**Signature**

```ts
declare const fromTaggedRequest: <S extends AnyTaggedRequestSchema>(schema: S) => FromTaggedRequest<S>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L1039)

Since v1.0.0