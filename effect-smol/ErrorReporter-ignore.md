Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.ignore

Symbol key used to mark an error as unreportable.

Set this property to `true` on any error class to prevent it from being
forwarded to reporters. Useful for expected errors such as HTTP 404s.

**Example**

```ts
import { Data, ErrorReporter } from "effect"

class NotFoundError extends Data.TaggedError("NotFoundError")<{}> {
  readonly [ErrorReporter.ignore] = true
}
```

**Signature**

```ts
type ignore = "~effect/ErrorReporter/ignore"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L309)

Since v4.0.0