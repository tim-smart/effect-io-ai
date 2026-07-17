Package: `effect`<br />
Module: `UndefinedOr`<br />

## UndefinedOr.liftThrowable

Converts a throwing function into one that returns successful results
unchanged and returns `undefined` when the function throws.

**When to use**

Use to adapt exception-throwing functions when `undefined` is the absence
value you want to return for failures.

**Gotchas**

Thrown values are discarded. If the wrapped function can successfully return
`undefined`, that success is indistinguishable from a thrown failure.

**Signature**

```ts
declare const liftThrowable: <A extends ReadonlyArray<unknown>, B>(f: (...a: A) => B) => (...a: A) => B | undefined
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/UndefinedOr.ts#L139)

Since v4.0.0