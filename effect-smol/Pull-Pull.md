Package: `effect`<br />
Module: `Pull`<br />

## Pull.Pull

An effectful pull step that either produces a value, fails with `E`, or
signals completion with `Cause.Done<Done>`.

`Pull` represents completion in the error channel so low-level stream
consumers can distinguish ordinary failures from end-of-input and carry a
leftover value when needed.

**Signature**

```ts
export interface Pull<out A, out E = never, out Done = void, out R = never>
  extends Effect<A, E | Cause.Done<Done>, R>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L49)

Since v4.0.0