Package: `effect`<br />
Module: `Pull`<br />

## Pull.isDoneFailure

Checks if a Cause failure is a done error.

**Signature**

```ts
declare const isDoneFailure: <E>(failure: Cause.Reason<E>) => failure is Cause.Fail<E & Cause.Done<any>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Pull.ts#L98)

Since v4.0.0