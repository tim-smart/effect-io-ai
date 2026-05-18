Package: `effect`<br />
Module: `Pull`<br />

## Pull.doneExitFromCause

Converts a `Cause` into an `Exit`, treating `Cause.Done` as successful
completion.

If the cause contains a done value, that leftover becomes the successful
value. Otherwise the non-done cause becomes the failure cause.

**Signature**

```ts
declare const doneExitFromCause: <E>(cause: Cause.Cause<E>) => Exit.Exit<Cause.Done.Extract<E>, ExcludeDone<E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L215)

Since v4.0.0