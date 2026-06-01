Package: `effect`<br />
Module: `Runtime`<br />

## Runtime.getErrorExitCode

Reads the runtime exit-code marker from an unknown error value.

**When to use**

Use to read a custom failure exit code from an unknown error value, falling
back to the default failure code.

**Details**

Returns the numeric `[Runtime.errorExitCode]` property when it is present on
an object. Otherwise returns `1`, the default failure exit code used by
`defaultTeardown`.

**Gotchas**

Non-object values, missing markers, and non-number marker values all return
`1`.

**See**

- `errorExitCode` for the marker read by this function

**Signature**

```ts
declare const getErrorExitCode: (u: unknown) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Runtime.ts#L381)

Since v4.0.0