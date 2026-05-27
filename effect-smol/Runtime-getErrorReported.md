Package: `effect`<br />
Module: `Runtime`<br />

## Runtime.getErrorReported

Reads the runtime error-reporting marker from an unknown error value.

**When to use**

Use to read whether an unknown error value should be treated as already
reported by the default main runner.

**Details**

Returns a boolean `[Runtime.errorReported]` property when it is present on an
object. Otherwise returns `true`, so failures are logged by default.

**Gotchas**

Non-object values, missing markers, and non-boolean marker values all return
`true`.

**See**

- `errorReported` for the marker read by this function

**Signature**

```ts
declare const getErrorReported: (u: unknown) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Runtime.ts#L469)

Since v4.0.0