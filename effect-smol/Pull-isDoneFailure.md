Package: `effect`<br />
Module: `Pull`<br />

## Pull.isDoneFailure

Checks whether a `Cause.Reason` is a `Fail` reason whose error is a
`Cause.Done` signal.

**When to use**

Use when you need to identify done completion reasons while traversing
`cause.reasons`, before handling ordinary failures.

**See**

- `isDoneCause` for checking an entire `Cause` for any done reason
- `filterDone` for extracting the `Cause.Done` value from a `Cause`

**Signature**

```ts
declare const isDoneFailure: <E>(failure: Cause.Reason<E>) => failure is Cause.Fail<E & Cause.Done<any>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L220)

Since v4.0.0