Package: `effect`<br />
Module: `Pull`<br />

## Pull.doneExitFromCause

Converts a Cause into an Exit, extracting halt leftovers as success values.

**Signature**

```ts
declare const doneExitFromCause: <E>(cause: Cause.Cause<E>) => Exit.Exit<Cause.Done.Extract<E>, ExcludeDone<E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L161)

Since v4.0.0