Package: `effect`<br />
Module: `Cause`<br />

## Cause.Cause

Represents the full history of a failure within an `Effect`.

**Details**

This type is a data structure that captures all information about why and how
an effect has failed, including parallel errors, sequential errors, defects,
and interruptions. It enables a "lossless" error model: no error-related
information is discarded, which helps in debugging and understanding the root
cause of failures.

**Signature**

```ts
type Cause<E> = | Empty
  | Fail<E>
  | Die
  | Interrupt
  | Sequential<E>
  | Parallel<E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L254)

Since v2.0.0