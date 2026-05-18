Package: `effect`<br />
Module: `Pull`<br />

## Pull.filterNoDone

Keeps a `Cause` only when it contains no `Cause.Done` failures.

Returns a successful `Result` with the cause when every failure is non-done;
otherwise returns a failed `Result` with the original cause.

**Signature**

```ts
declare const filterNoDone: <E>(input: Cause.Cause<E>) => Result.Result<Cause.Cause<ExcludeDone<E>>, Cause.Cause<E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L183)

Since v4.0.0