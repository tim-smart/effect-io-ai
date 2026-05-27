Package: `effect`<br />
Module: `Pull`<br />

## Pull.ExcludeDone

Excludes `Cause.Done` completion signals from an error type union.

**When to use**

Use to describe the ordinary error type that remains after `Cause.Done`
completion signals have been handled or filtered out of an error union.

**See**

- `Error` for extracting ordinary failures from a `Pull`
- `Leftover` for extracting the completion leftover type

**Signature**

```ts
type ExcludeDone<E> = Exclude<E, Cause.Done<any>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L147)

Since v4.0.0