Package: `effect`<br />
Module: `Runtime`<br />

## Runtime.getErrorExitCode

Reads the runtime exit-code marker from an unknown error value.

**Details**

Returns the numeric `[Runtime.errorExitCode]` property when it is present on
an object. Otherwise returns `1`, the default failure exit code used by
`defaultTeardown`.

**Signature**

```ts
declare const getErrorExitCode: (u: unknown) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Runtime.ts#L270)

Since v4.0.0