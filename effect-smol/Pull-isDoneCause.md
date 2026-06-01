Package: `effect`<br />
Module: `Pull`<br />

## Pull.isDoneCause

Checks whether a Cause contains any done errors.

**When to use**

Use when you need to test whether a pull failure cause represents normal
completion and only need a boolean result.

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