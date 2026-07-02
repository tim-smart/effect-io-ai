Package: `effect`<br />
Module: `Cause`<br />

## Cause.annotate

Attaches metadata to every reason in a `Cause`.

**When to use**

Use to attach diagnostic metadata to every reason in a cause.

**Details**

Annotations are stored as a `Context` on each reason and can be
retrieved later via `reasonAnnotations` or `annotations`.
The runtime uses this to attach stack traces and spans.

- Returns a new `Cause`.
- By default, existing keys are preserved. Pass `{ overwrite: true }` to
  replace them.

**Example** (Annotating a cause)

```ts
import { Cause, Context } from "effect"

class RequestId extends Context.Service<RequestId, string>()("RequestId") {}

const cause = Cause.fail("error")
const annotated = Cause.annotate(cause, Context.make(RequestId, "req-1"))

console.log(Context.getOrUndefined(Cause.annotations(annotated), RequestId)) // "req-1"
```

**See**

- `annotations` for reading merged annotations from a cause
- `reasonAnnotations` for reading annotations from a single reason

**Signature**

```ts
declare const annotate: { (annotations: Context.Context<never>, options?: { readonly overwrite?: boolean | undefined; }): <E>(self: Cause<E>) => Cause<E>; <E>(self: Cause<E>, annotations: Context.Context<never>, options?: { readonly overwrite?: boolean | undefined; }): Cause<E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1822)

Since v4.0.0