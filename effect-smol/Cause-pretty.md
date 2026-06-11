Package: `effect`<br />
Module: `Cause`<br />

## Cause.pretty

Formats a `Cause` as a human-readable string for logging or debugging.

**When to use**

Use to render a whole cause as one human-readable string for logs or
diagnostics.

**Details**

Delegates to `prettyErrors` to convert each reason to an `Error`,
then joins their stack traces with newlines. Nested `Error.cause` chains
are rendered inline with indentation:

```text
ErrorName: message
    at ...
    at ... {
  [cause]: NestedError: message
      at ...
}
```

Span annotations are appended to the relevant stack frames when available.

**Gotchas**

Rendering an empty cause produces an empty string because there are no
errors to render.

**Example** (rendering a cause)

```ts
import { Cause } from "effect"

const rendered = Cause.pretty(Cause.fail("something went wrong"))
console.log(rendered.includes("something went wrong")) // true
```

**See**

- `prettyErrors` — get the individual `Error` instances

**Signature**

```ts
declare const pretty: <E>(cause: Cause<E>) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1157)

Since v2.0.0