Package: `effect`<br />
Module: `Pull`<br />

## Pull.filterDoneVoid

Filters a Cause to extract only halt errors.

**Signature**

```ts
declare const filterDoneVoid: <E extends Cause.Done>(input: Cause.Cause<E>) => Result.Result<Cause.Done, Cause.Cause<Exclude<E, Cause.Done>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L122)

Since v4.0.0