Package: `effect`<br />
Module: `Pull`<br />

## Pull.Pull

An effectful pull step that either produces a value, fails with `E`, or
signals completion with `Cause.Done<Done>`.

**When to use**

Use to model one low-level pull step when a consumer repeatedly evaluates an
effect that may emit a value, fail normally, or signal normal completion
through `Cause.Done`.

**Details**

`Pull` represents completion in the error channel so low-level stream
consumers can distinguish ordinary failures from end-of-input and carry a
leftover value when needed.

**Signature**

```ts
export interface Pull<out A, out E = never, out Done = void, out R = never>
  extends Effect<A, E | Cause.Done<Done>, R>
{}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L57)

Since v4.0.0