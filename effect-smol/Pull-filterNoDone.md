Package: `effect`<br />
Module: `Pull`<br />

## Pull.filterNoDone

Keeps a `Cause` only when it contains no `Cause.Done` failures.

**When to use**

Use to select ordinary failure causes for handling while leaving `Cause.Done`
completion causes outside that handler.

**Details**

Returns a successful `Result` with the cause when every failure is non-done;
otherwise returns a failed `Result` with the original cause.

**See**

- `filterDone` for the inverse typed done filter
- `filterDoneVoid` for done detection when the payload is not needed

**Signature**

```ts
declare const filterNoDone: <E>(input: Cause.Cause<E>) => Result.Result<Cause.Cause<ExcludeDone<E>>, Cause.Cause<E>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L294)

Since v4.0.0