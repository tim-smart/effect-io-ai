Package: `effect`<br />
Module: `Pull`<br />

## Pull.isDoneCause

Checks whether a Cause contains any done errors.

**When to use**

Use to test a whole pull failure cause for normal completion when you only
need a boolean branch and do not need the done payload.

**See**

- `isDoneFailure` for checking a single `Cause.Reason`
- `filterDone` for extracting the `Cause.Done` value from a `Cause`
- `filterNoDone` for selecting causes with no done failures

**Signature**

```ts
declare const isDoneCause: <E>(cause: Cause.Cause<E>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L203)

Since v4.0.0