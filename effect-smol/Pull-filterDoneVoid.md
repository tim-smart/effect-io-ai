Package: `effect`<br />
Module: `Pull`<br />

## Pull.filterDoneVoid

Finds a `Cause.Done` failure in a cause whose done value is not used.

Returns a successful `Result` with the done marker when present, otherwise
returns a failed `Result` with the non-done cause.

**Signature**

```ts
declare const filterDoneVoid: <E extends Cause.Done>(input: Cause.Cause<E>) => Result.Result<Cause.Done, Cause.Cause<Exclude<E, Cause.Done>>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L167)

Since v4.0.0