Package: `effect`<br />
Module: `Cause`<br />

## Cause.annotate

Attaches metadata to every reason in a `Cause`.

Annotations are stored as a `Context` on each reason and can be
retrieved later via `reasonAnnotations` or `annotations`.
The runtime uses this to attach stack traces and spans.

- Returns a new `Cause`; does not mutate the input.
- By default, existing keys are preserved. Pass `{ overwrite: true }` to
  replace them.

**Example** (annotating a cause)

```ts
import { Cause, Context } from "effect"

const cause = Cause.fail("error")
const annotated = Cause.annotate(cause, Context.empty())
```

**See**

- `annotations` — read merged annotations from a cause
- `reasonAnnotations` — read annotations from a single reason

**Signature**

```ts
declare const annotate: { (annotations: Context.Context<never>, options?: { readonly overwrite?: boolean | undefined; }): <E>(self: Cause<E>) => Cause<E>; <E>(self: Cause<E>, annotations: Context.Context<never>, options?: { readonly overwrite?: boolean | undefined; }): Cause<E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1606)

Since v4.0.0