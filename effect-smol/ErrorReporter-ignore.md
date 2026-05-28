Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.ignore

Defines the string property key used to mark an object error as ignored by error
reporting.

**When to use**

Use to type the property key that suppresses reporting for expected object
errors.

**Details**

Set this property to `true` on an error class or object error to prevent it
from being forwarded to reporters. This is useful for expected failures such
as HTTP 404 responses.

**Signature**

```ts
type ignore = "~effect/ErrorReporter/ignore"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L370)

Since v4.0.0