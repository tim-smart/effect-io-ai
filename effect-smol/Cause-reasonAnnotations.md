Package: `effect`<br />
Module: `Cause`<br />

## Cause.reasonAnnotations

Reads the annotations from a single `Reason` as a `Context`.

**When to use**

Use when you need tracing metadata (e.g. `StackTrace`) from
a specific reason rather than the whole cause.

**Example** (Reading reason annotations)

```ts
import { Cause, Context } from "effect"

class RequestId extends Context.Service<RequestId, string>()("RequestId") {}

const reason = Cause.makeFailReason("error")
const annotated = reason.annotate(Context.make(RequestId, "req-1"))

console.log(Context.getOrUndefined(Cause.reasonAnnotations(annotated), RequestId)) // "req-1"
```

**See**

- `annotations` — merged annotations from all reasons in a cause

**Signature**

```ts
declare const reasonAnnotations: <E>(self: Reason<E>) => Context.Context<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1858)

Since v4.0.0