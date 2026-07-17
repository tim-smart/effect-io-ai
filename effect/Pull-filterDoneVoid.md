Package: `effect`<br />
Module: `Pull`<br />

## Pull.filterDoneVoid

Finds a `Cause.Done` failure in a cause whose done value is not used.

**When to use**

Use to detect `Cause.Done` completion in a `Cause` when the completion value
is not part of the downstream logic.

**Details**

Returns a successful `Result` with the done marker when present, otherwise
returns a failed `Result` with the non-done cause.

**See**

- `filterDone` for preserving the typed `Cause.Done` value when the done payload matters
- `filterDoneLeftover` for extracting only the done leftover value
- `filterNoDone` for the inverse filter that succeeds only when no done failure is present

**Signature**

```ts
declare const filterDoneVoid: <E extends Cause.Done>(input: Cause.Cause<E>) => Result.Result<Cause.Done, Cause.Cause<Exclude<E, Cause.Done>>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Pull.ts#L251)

Since v4.0.0