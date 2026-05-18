Package: `effect`<br />
Module: `ErrorReporter`<br />

## ErrorReporter.ignore

String property key used to mark an object error as ignored by error
reporting.

Set this property to `true` on an error class or object error to prevent it
from being forwarded to reporters. This is useful for expected failures such
as HTTP 404 responses.

**Signature**

```ts
type ignore = "~effect/ErrorReporter/ignore"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ErrorReporter.ts#L311)

Since v4.0.0