Package: `effect`<br />
Module: `Pull`<br />

## Pull.ExcludeDone

Excludes done errors from an error type union.

**Signature**

```ts
type ExcludeDone<E> = Exclude<E, Cause.Done<any>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L60)

Since v4.0.0