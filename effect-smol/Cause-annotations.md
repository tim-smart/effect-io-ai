Package: `effect`<br />
Module: `Cause`<br />

## Cause.annotations

Reads the merged annotations from all reasons in a `Cause`.

**When to use**

Use to read diagnostic metadata merged from the whole cause.

**Gotchas**

When multiple reasons contain the same annotation key, the value from the
later reason wins.

**Example** (reading merged annotations)

```ts
import { Cause, Context } from "effect"

class RequestId extends Context.Service<RequestId, string>()("RequestId") {}

const cause = Cause.annotate(
  Cause.fail("error"),
  Context.make(RequestId, "req-1")
)

console.log(Context.getOrUndefined(Cause.annotations(cause), RequestId)) // "req-1"
```

**See**

- `reasonAnnotations` — annotations from a single reason

**Signature**

```ts
declare const annotations: <E>(self: Cause<E>) => Context.Context<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1960)

Since v4.0.0