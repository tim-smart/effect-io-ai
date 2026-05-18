Package: `effect`<br />
Module: `Runtime`<br />

## Runtime.getErrorReported

Reads the runtime error-reporting marker from an unknown error value.

**Details**
Returns a boolean `[Runtime.errorReported]` property when it is present on an
object. Otherwise returns `true`, so failures are logged by default.

**Signature**

```ts
declare const getErrorReported: (u: unknown) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Runtime.ts#L331)

Since v4.0.0