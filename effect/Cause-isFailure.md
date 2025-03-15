Package: `effect`<br />
Module: `Cause`<br />

## Cause.isFailure

Checks if a `Cause` contains a failure.

**Details**

This function returns `true` if the `Cause` includes any `Fail` error. It's
commonly used to confirm whether a workflow encountered an anticipated error
versus just defects or interruptions.

**Signature**

```ts
declare const isFailure: <E>(self: Cause<E>) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L764)

Since v2.0.0