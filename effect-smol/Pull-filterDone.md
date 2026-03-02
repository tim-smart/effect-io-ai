Package: `effect`<br />
Module: `Pull`<br />

## Pull.filterDone

Filters a Cause to extract only halt errors.

**Signature**

```ts
declare const filterDone: <E>(input: Cause.Cause<E>) => Result.Result<Cause.Done.Only<E>, Cause.Cause<ExcludeDone<E>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L108)

Since v4.0.0