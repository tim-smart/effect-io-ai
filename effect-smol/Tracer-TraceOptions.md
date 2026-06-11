Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.TraceOptions

Options that control stack trace capture for tracing wrappers.
`captureStackTrace` can disable capture or provide a lazy stack string.

**Signature**

```ts
export interface TraceOptions {
  readonly captureStackTrace?: boolean | LazyArg<string | undefined> | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tracer.ts#L259)

Since v4.0.0