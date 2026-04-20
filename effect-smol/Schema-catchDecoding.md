Package: `effect`<br />
Module: `Schema`<br />

## Schema.catchDecoding

Recovers from a decoding error by providing a fallback value.

The handler receives the `Issue` and returns an `Effect` that either
succeeds with a fallback value or re-fails with a (possibly different) issue.

**Example** (Returning a default on decode failure)

```ts
import { Effect, Option, Schema } from "effect"

const schema = Schema.Number.pipe(
  Schema.catchDecoding((_issue) => Effect.succeed(Option.some(0)))
)
```

**See**

- `catchDecodingWithContext` to add service requirements to the handler

**Signature**

```ts
declare const catchDecoding: <S extends Top>(f: (issue: Issue.Issue) => Effect.Effect<Option_.Option<S["Type"]>, Issue.Issue>) => (self: S) => S["Rebuild"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3948)

Since v4.0.0