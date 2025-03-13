Package: `effect`<br />
Module: `Cause`<br />

## Cause.PrettyError

A shape for prettified errors, optionally including a source span.

**Signature**

```ts
export interface PrettyError extends Error {
  readonly span: Span | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L1514)

Since v3.2.0