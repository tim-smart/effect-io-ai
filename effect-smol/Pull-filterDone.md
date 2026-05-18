Package: `effect`<br />
Module: `Pull`<br />

## Pull.filterDone

Finds a `Cause.Done` failure in a `Cause`.

Returns a successful `Result` with the `Cause.Done` value when one is
present, otherwise returns a failed `Result` containing the non-done cause.

**Signature**

```ts
declare const filterDone: <E>(input: Cause.Cause<E>) => Result.Result<Cause.Done.Only<E>, Cause.Cause<ExcludeDone<E>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L150)

Since v4.0.0