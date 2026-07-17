Package: `effect`<br />
Module: `Pull`<br />

## Pull.doneExitFromCause

Converts a `Cause` into an `Exit`, treating `Cause.Done` as successful
completion.

**When to use**

Use to produce an `Exit` for finalizing a low-level pull workflow when a
`Cause.Done` signal should be treated as success and any remaining cause
should fail.

**Details**

If the cause contains a done value, that leftover becomes the successful
value. Otherwise the non-done cause becomes the failure cause.

**See**

- `filterDone` for extracting the done signal without converting the cause to an `Exit`
- `matchEffect` for handling `Pull` success, failure, and done outcomes directly

**Signature**

```ts
declare const doneExitFromCause: <E>(cause: Cause.Cause<E>) => Exit.Exit<Cause.Done.Extract<E>, ExcludeDone<E>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Pull.ts#L325)

Since v4.0.0