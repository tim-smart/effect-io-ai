Package: `effect`<br />
Module: `UndefinedOr`<br />

## UndefinedOr.liftThrowable

Converts a throwing function into one that returns successful results
unchanged and returns `undefined` when the function throws.

**Signature**

```ts
declare const liftThrowable: <A extends ReadonlyArray<unknown>, B>(f: (...a: A) => B) => (...a: A) => B | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UndefinedOr.ts#L105)

Since v4.0.0