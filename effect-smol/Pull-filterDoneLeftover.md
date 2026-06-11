Package: `effect`<br />
Module: `Pull`<br />

## Pull.filterDoneLeftover

Filters a Cause to extract the leftover value from done errors.

**When to use**

Use to extract only the leftover value carried by a `Cause.Done` completion
signal.

**Signature**

```ts
declare const filterDoneLeftover: <E>(cause: Cause.Cause<E>) => Result.Result<Cause.Done.Extract<E>, Cause.Cause<ExcludeDone<E>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L297)

Since v4.0.0